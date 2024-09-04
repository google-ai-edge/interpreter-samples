/*
 * Copyright 2024 The Google AI Edge Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.edgeai.examples.super_resolution.gallery

import android.graphics.Bitmap
import androidx.compose.runtime.Immutable
import androidx.compose.ui.geometry.Offset

@Immutable
data class ImagePickerUiState(
    val originalBitmap: Bitmap? = null,
    val sharpenBitmap: Bitmap? = null,
    val selectPoint: SelectPoint = SelectPoint(),
    val inferenceTime: Int = 0,
) {
    companion object {
        const val REQUIRE_IMAGE_SIZE = 50f
    }
}

@Immutable
data class SelectPoint(
    val offset: Offset? = null,
    val boxSize: Float = 0f,
)