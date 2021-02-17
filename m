Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF8831D837
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 12:27:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231872AbhBQL0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 06:26:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231713AbhBQLYx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 06:24:53 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A39AC061A27
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:22:11 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id j9so5724009edp.1
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sfFHGntv9vS08N2U1NTEmFN9zbWTIzne2qD4TJ7xpuU=;
        b=wDl5Yeg+kETsmbMScb/SfeU4hzpZcx8u8oaeYwV9owucEqclJDXqNxh1+bobBQkKsy
         oUNI5Zs4iqsVnArf+k/eOqam5l7s5hX5FgK8KBaDArhzYJbi9w3VpkB+r45uOT2Mdtuy
         lN+8vMpXHMNnmLbcmY3otVADKmVeJm/h5M/ixKYvjXFeBAt9xo/RxtFsi4f8N6DAVQ0P
         r/eb44vxyqkPytEETEGg/zhEbjIiXiO19nzOqWubJHd/JSHQpo9Q/58+FUObtpkW8ztX
         1E2DoO75IP4e9rBtEiYxou23eA4qYlxx3+i2segnNPtPr3xnqXNpu4OjiLD29ieKxKpI
         pG4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sfFHGntv9vS08N2U1NTEmFN9zbWTIzne2qD4TJ7xpuU=;
        b=kTXOV94rxED1UpsMj6792Oo3KGo7oi9Bya842bQ5RNBvIY9hhmf8ts4V91vfPuhfF5
         lfPVBLMlLVU6u2dwWDRquES9uI7wSCHrck5UneJn1Pj9X2tiuWt+W71XlJS3+LQTG6Cu
         kydfEONhvEjUNSbS8JkeQ2qcsYLvfEh7m9d0+xN0qmqskAqb+7zNrhaxFsG0bsIXd76m
         truzo8E/2qIy0Z/Zne+jiFMllonpEUZU5ExKVEsHX2vmQlOEuivlSNE5xr5/Bq/A9EKx
         WVSbzQs7oZ4Y0eQ5tMtxH9FwIyZgEKrypJGvOgvNt/gC2gI0OzbrGkfLtjAbEGxigAyJ
         bg2A==
X-Gm-Message-State: AOAM531S6YE4HGA2VoY9+G4ZPlrHgt3fJxLYn77otdkkwB2mHb+2crpH
        2k17iUQDjQJClomkxbduME1uWw==
X-Google-Smtp-Source: ABdhPJwEb2p6A7oC8RsTgx3LVW154t1ihZCW7sEKZiswbsz1W2BemtQT6QpVkmztugCg7iiQNAapcw==
X-Received: by 2002:aa7:c2cd:: with SMTP id m13mr6594826edp.176.1613560929871;
        Wed, 17 Feb 2021 03:22:09 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:4815:d4dc:ff5a:704a])
        by smtp.gmail.com with ESMTPSA id h10sm934344edk.45.2021.02.17.03.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 03:22:09 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v5 08/22] media: camss: Add missing format identifiers
Date:   Wed, 17 Feb 2021 12:21:08 +0100
Message-Id: <20210217112122.424236-9-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210217112122.424236-1-robert.foss@linaro.org>
References: <20210217112122.424236-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CSI-2 spec defines the following types:
 - Data Type - Often abbreviated DT
 - Decode Format - Often abbreviated as DF
 - Encode Format

These definitions are as far as I can tell complete for CSI-2.

Additionally the Qualcomm internal type describing Plain Formats
has been added. Plain formats describe the size of the pixels
written by the RDI units to memory. PLAIN8 for example has the size
8 bits, and PLAIN32 32 bits. The appropriate Plain Format is
determined by the Decode Format used. The smallest Plain Format
that is able to contain a pixel of the used Decode Format is the
appropriate one to use.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 .../media/platform/qcom/camss/camss-csid.h    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
index 1824b3745e10..02fc34ee8a41 100644
--- a/drivers/media/platform/qcom/camss/camss-csid.h
+++ b/drivers/media/platform/qcom/camss/camss-csid.h
@@ -21,6 +21,56 @@
 #define MSM_CSID_PAD_SRC 1
 #define MSM_CSID_PADS_NUM 2
 
+#define DATA_TYPE_EMBEDDED_DATA_8BIT	0x12
+#define DATA_TYPE_YUV420_8BIT		0x18
+#define DATA_TYPE_YUV420_10BIT		0x19
+#define DATA_TYPE_YUV420_8BIT_LEGACY	0x1a
+#define DATA_TYPE_YUV420_8BIT_SHIFTED	0x1c /* Chroma Shifted Pixel Sampling */
+#define DATA_TYPE_YUV420_10BIT_SHIFTED	0x1d /* Chroma Shifted Pixel Sampling */
+#define DATA_TYPE_YUV422_8BIT		0x1e
+#define DATA_TYPE_YUV422_10BIT		0x1f
+#define DATA_TYPE_RGB444		0x20
+#define DATA_TYPE_RGB555		0x21
+#define DATA_TYPE_RGB565		0x22
+#define DATA_TYPE_RGB666		0x23
+#define DATA_TYPE_RGB888		0x24
+#define DATA_TYPE_RAW_24BIT		0x27
+#define DATA_TYPE_RAW_6BIT		0x28
+#define DATA_TYPE_RAW_7BIT		0x29
+#define DATA_TYPE_RAW_8BIT		0x2a
+#define DATA_TYPE_RAW_10BIT		0x2b
+#define DATA_TYPE_RAW_12BIT		0x2c
+#define DATA_TYPE_RAW_14BIT		0x2d
+#define DATA_TYPE_RAW_16BIT		0x2e
+#define DATA_TYPE_RAW_20BIT		0x2f
+
+#define DECODE_FORMAT_UNCOMPRESSED_6_BIT	0x0
+#define DECODE_FORMAT_UNCOMPRESSED_8_BIT	0x1
+#define DECODE_FORMAT_UNCOMPRESSED_10_BIT	0x2
+#define DECODE_FORMAT_UNCOMPRESSED_12_BIT	0x3
+#define DECODE_FORMAT_UNCOMPRESSED_14_BIT	0x4
+#define DECODE_FORMAT_UNCOMPRESSED_16_BIT	0x5
+#define DECODE_FORMAT_UNCOMPRESSED_20_BIT	0x6
+#define DECODE_FORMAT_DPCM_10_6_10		0x7
+#define DECODE_FORMAT_DPCM_10_8_10		0x8
+#define DECODE_FORMAT_DPCM_12_6_12		0x9
+#define DECODE_FORMAT_DPCM_12_8_12		0xA
+#define DECODE_FORMAT_DPCM_14_8_14		0xB
+#define DECODE_FORMAT_DPCM_14_10_14		0xC
+#define DECODE_FORMAT_USER_DEFINED		0xE
+#define DECODE_FORMAT_PAYLOAD_ONLY		0xF
+
+#define ENCODE_FORMAT_RAW_8_BIT		0x1
+#define ENCODE_FORMAT_RAW_10_BIT	0x2
+#define ENCODE_FORMAT_RAW_12_BIT	0x3
+#define ENCODE_FORMAT_RAW_14_BIT	0x4
+#define ENCODE_FORMAT_RAW_16_BIT	0x5
+
+#define PLAIN_FORMAT_PLAIN8	0x0 /* supports DPCM, UNCOMPRESSED_6/8_BIT */
+#define PLAIN_FORMAT_PLAIN16	0x1 /* supports DPCM, UNCOMPRESSED_10/16_BIT */
+#define PLAIN_FORMAT_PLAIN32	0x2 /* supports UNCOMPRESSED_20_BIT */
+
+
 enum csid_payload_mode {
 	CSID_PAYLOAD_MODE_INCREMENTING = 0,
 	CSID_PAYLOAD_MODE_ALTERNATING_55_AA = 1,
-- 
2.27.0

