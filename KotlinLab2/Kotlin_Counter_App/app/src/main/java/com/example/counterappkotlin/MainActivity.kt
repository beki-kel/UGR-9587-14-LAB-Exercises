package com.example.androidass

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity
import com.example.counter_app_kotlin.R

class MainActivity : ComponentActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val countTextView: TextView = findViewById(R.id.countTextView)
        val incrementButton: Button = findViewById(R.id.incrementButton)
        val decrementButton: Button = findViewById(R.id.decrementButton)
        val resetButton: Button = findViewById(R.id.resetButton)

        incrementButton.setOnClickListener {
            count++
            countTextView.text = count.toString()
        }

        decrementButton.setOnClickListener {
            if (count > 0) {
                count--
                countTextView.text = count.toString()
            }
        }

        resetButton.setOnClickListener {
            count = 0
            countTextView.text = count.toString()
        }
    }
}