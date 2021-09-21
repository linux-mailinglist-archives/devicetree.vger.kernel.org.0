Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4F26413462
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:38:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbhIUNj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233033AbhIUNj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:39:56 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55C1FC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:28 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id bx4so30038724edb.4
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1SYNXa9BSEU6BVfGZ3maNgsEM4Zr64CRywqKjDQaPHg=;
        b=FJTVTJAoZIPp3KKrRgbK2BO+ZV610/taKzpe/cirdSdlFOMQUbUQVBYnLnPG4HA5OA
         rYcYxuCRNBgzCa2yyI2p+Luu2BIcZ6prQvgm+3WweyLvVk6h9r/mat2gzwJYVwSfbTnn
         roRZu1IIOdXpGJf4u0Q3JKfCFMK1OD2m+FSnVvIHOxRVvfgQohxKWuVLhKLFw0Jisx19
         ZRc1t2vufz2hgA6/WO05rC4oKfaRdr+oiMQ3LY+LWTj4DWoUbUsWPYK0ZwhlvmntfzAu
         GTq9N5G6fOWowqFcvSp3B9e53jNTtBBZw457sEaZFMAlUeSg6PleXzBopXmZWh6UWDzk
         T1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1SYNXa9BSEU6BVfGZ3maNgsEM4Zr64CRywqKjDQaPHg=;
        b=SQw3spebd1c3vNRT9RFdzkWQJIzNRDXnhZTCZgMZW1Guolk4/dPJifqHJ/7eP9cZMm
         rCOb/+U66+tGC6PanNSEMesLtWkDN2/ipW+IM6/lsMqGZdB2wENVUFspUg0JWfPc6dnG
         SVVxMfoHu8nhro4OWYt1F9LF25qMYL2Ls3+jYGt+3n3eGmQ2X9AftTo2W4+rDNNP+cK/
         Z8K4R0IQKcUfeq8/cA1dcQLHtyqOr9mBgg2+OIgSahbkcVQ80kI3dpzG09muaje8KalT
         DssnQprG9+XQPzZ+n7ax2GKWaGKojr+sQpzwAj9fROEPCfVR8mzidT7S/uHQHYCrD7DB
         81ZA==
X-Gm-Message-State: AOAM533rf3yoh+a4sgg6ih12HIwAEhky77kj0ObnLxiF9pW24T3/GBkN
        jk4s70wpevwppHF3zIBplOaOwA==
X-Google-Smtp-Source: ABdhPJwq7igepOrWROi4k5xJdBqZcQcl6HW3wAcMxbErwSxB2EYcAFj2fwg8GUGJL6sPdj68PJyV9A==
X-Received: by 2002:a05:6402:358f:: with SMTP id y15mr34534309edc.67.1632231455179;
        Tue, 21 Sep 2021 06:37:35 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:34 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 08/22] ASoC: dt-bindings: rename q6afe.h to q6dsp-lpass-ports.h
Date:   Tue, 21 Sep 2021 14:36:55 +0100
Message-Id: <20210921133709.4973-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

move all LPASS audio ports defines from q6afe.h to q6dsp-lpass-ports.h
as these belong to LPASS IP.
Also this move helps in reusing this header across multiple audio
frameworks on Qualcomm Audio DSP.

This patch is split out of the dt-bindings patch to enable easy review.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/sound/qcom,q6afe.h        | 203 +----------------
 .../sound/qcom,q6dsp-lpass-ports.h            | 208 ++++++++++++++++++
 2 files changed, 210 insertions(+), 201 deletions(-)
 create mode 100644 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h

diff --git a/include/dt-bindings/sound/qcom,q6afe.h b/include/dt-bindings/sound/qcom,q6afe.h
index 66c21ab03eef..9d5d89cfabcf 100644
--- a/include/dt-bindings/sound/qcom,q6afe.h
+++ b/include/dt-bindings/sound/qcom,q6afe.h
@@ -2,207 +2,8 @@
 #ifndef __DT_BINDINGS_Q6_AFE_H__
 #define __DT_BINDINGS_Q6_AFE_H__
 
-/* Audio Front End (AFE) virtual ports IDs */
-#define HDMI_RX		1
-#define SLIMBUS_0_RX    2
-#define SLIMBUS_0_TX    3
-#define SLIMBUS_1_RX    4
-#define SLIMBUS_1_TX    5
-#define SLIMBUS_2_RX    6
-#define SLIMBUS_2_TX    7
-#define SLIMBUS_3_RX    8
-#define SLIMBUS_3_TX    9
-#define SLIMBUS_4_RX    10
-#define SLIMBUS_4_TX    11
-#define SLIMBUS_5_RX    12
-#define SLIMBUS_5_TX    13
-#define SLIMBUS_6_RX    14
-#define SLIMBUS_6_TX    15
-#define PRIMARY_MI2S_RX		16
-#define PRIMARY_MI2S_TX		17
-#define SECONDARY_MI2S_RX	18
-#define SECONDARY_MI2S_TX	19
-#define TERTIARY_MI2S_RX	20
-#define TERTIARY_MI2S_TX	21
-#define QUATERNARY_MI2S_RX	22
-#define QUATERNARY_MI2S_TX	23
-#define PRIMARY_TDM_RX_0	24
-#define PRIMARY_TDM_TX_0	25
-#define PRIMARY_TDM_RX_1	26
-#define PRIMARY_TDM_TX_1	27
-#define PRIMARY_TDM_RX_2	28
-#define PRIMARY_TDM_TX_2	29
-#define PRIMARY_TDM_RX_3	30
-#define PRIMARY_TDM_TX_3	31
-#define PRIMARY_TDM_RX_4	32
-#define PRIMARY_TDM_TX_4	33
-#define PRIMARY_TDM_RX_5	34
-#define PRIMARY_TDM_TX_5	35
-#define PRIMARY_TDM_RX_6	36
-#define PRIMARY_TDM_TX_6	37
-#define PRIMARY_TDM_RX_7	38
-#define PRIMARY_TDM_TX_7	39
-#define SECONDARY_TDM_RX_0	40
-#define SECONDARY_TDM_TX_0	41
-#define SECONDARY_TDM_RX_1	42
-#define SECONDARY_TDM_TX_1	43
-#define SECONDARY_TDM_RX_2	44
-#define SECONDARY_TDM_TX_2	45
-#define SECONDARY_TDM_RX_3	46
-#define SECONDARY_TDM_TX_3	47
-#define SECONDARY_TDM_RX_4	48
-#define SECONDARY_TDM_TX_4	49
-#define SECONDARY_TDM_RX_5	50
-#define SECONDARY_TDM_TX_5	51
-#define SECONDARY_TDM_RX_6	52
-#define SECONDARY_TDM_TX_6	53
-#define SECONDARY_TDM_RX_7	54
-#define SECONDARY_TDM_TX_7	55
-#define TERTIARY_TDM_RX_0	56
-#define TERTIARY_TDM_TX_0	57
-#define TERTIARY_TDM_RX_1	58
-#define TERTIARY_TDM_TX_1	59
-#define TERTIARY_TDM_RX_2	60
-#define TERTIARY_TDM_TX_2	61
-#define TERTIARY_TDM_RX_3	62
-#define TERTIARY_TDM_TX_3	63
-#define TERTIARY_TDM_RX_4	64
-#define TERTIARY_TDM_TX_4	65
-#define TERTIARY_TDM_RX_5	66
-#define TERTIARY_TDM_TX_5	67
-#define TERTIARY_TDM_RX_6	68
-#define TERTIARY_TDM_TX_6	69
-#define TERTIARY_TDM_RX_7	70
-#define TERTIARY_TDM_TX_7	71
-#define QUATERNARY_TDM_RX_0	72
-#define QUATERNARY_TDM_TX_0	73
-#define QUATERNARY_TDM_RX_1	74
-#define QUATERNARY_TDM_TX_1	75
-#define QUATERNARY_TDM_RX_2	76
-#define QUATERNARY_TDM_TX_2	77
-#define QUATERNARY_TDM_RX_3	78
-#define QUATERNARY_TDM_TX_3	79
-#define QUATERNARY_TDM_RX_4	80
-#define QUATERNARY_TDM_TX_4	81
-#define QUATERNARY_TDM_RX_5	82
-#define QUATERNARY_TDM_TX_5	83
-#define QUATERNARY_TDM_RX_6	84
-#define QUATERNARY_TDM_TX_6	85
-#define QUATERNARY_TDM_RX_7	86
-#define QUATERNARY_TDM_TX_7	87
-#define QUINARY_TDM_RX_0	88
-#define QUINARY_TDM_TX_0	89
-#define QUINARY_TDM_RX_1	90
-#define QUINARY_TDM_TX_1	91
-#define QUINARY_TDM_RX_2	92
-#define QUINARY_TDM_TX_2	93
-#define QUINARY_TDM_RX_3	94
-#define QUINARY_TDM_TX_3	95
-#define QUINARY_TDM_RX_4	96
-#define QUINARY_TDM_TX_4	97
-#define QUINARY_TDM_RX_5	98
-#define QUINARY_TDM_TX_5	99
-#define QUINARY_TDM_RX_6	100
-#define QUINARY_TDM_TX_6	101
-#define QUINARY_TDM_RX_7	102
-#define QUINARY_TDM_TX_7	103
-#define DISPLAY_PORT_RX		104
-#define WSA_CODEC_DMA_RX_0	105
-#define WSA_CODEC_DMA_TX_0	106
-#define WSA_CODEC_DMA_RX_1	107
-#define WSA_CODEC_DMA_TX_1	108
-#define WSA_CODEC_DMA_TX_2	109
-#define VA_CODEC_DMA_TX_0	110
-#define VA_CODEC_DMA_TX_1	111
-#define VA_CODEC_DMA_TX_2	112
-#define RX_CODEC_DMA_RX_0	113
-#define TX_CODEC_DMA_TX_0	114
-#define RX_CODEC_DMA_RX_1	115
-#define TX_CODEC_DMA_TX_1	116
-#define RX_CODEC_DMA_RX_2	117
-#define TX_CODEC_DMA_TX_2	118
-#define RX_CODEC_DMA_RX_3	119
-#define TX_CODEC_DMA_TX_3	120
-#define RX_CODEC_DMA_RX_4	121
-#define TX_CODEC_DMA_TX_4	122
-#define RX_CODEC_DMA_RX_5	123
-#define TX_CODEC_DMA_TX_5	124
-#define RX_CODEC_DMA_RX_6	125
-#define RX_CODEC_DMA_RX_7	126
-#define QUINARY_MI2S_RX		127
-#define QUINARY_MI2S_TX		128
+/* This file exists due to backward compatibility reasons, Please do not DELETE! */
 
-#define LPASS_CLK_ID_PRI_MI2S_IBIT	1
-#define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-#define LPASS_CLK_ID_SEC_MI2S_IBIT	3
-#define LPASS_CLK_ID_SEC_MI2S_EBIT	4
-#define LPASS_CLK_ID_TER_MI2S_IBIT	5
-#define LPASS_CLK_ID_TER_MI2S_EBIT	6
-#define LPASS_CLK_ID_QUAD_MI2S_IBIT	7
-#define LPASS_CLK_ID_QUAD_MI2S_EBIT	8
-#define LPASS_CLK_ID_SPEAKER_I2S_IBIT	9
-#define LPASS_CLK_ID_SPEAKER_I2S_EBIT	10
-#define LPASS_CLK_ID_SPEAKER_I2S_OSR	11
-#define LPASS_CLK_ID_QUI_MI2S_IBIT	12
-#define LPASS_CLK_ID_QUI_MI2S_EBIT	13
-#define LPASS_CLK_ID_SEN_MI2S_IBIT	14
-#define LPASS_CLK_ID_SEN_MI2S_EBIT	15
-#define LPASS_CLK_ID_INT0_MI2S_IBIT	16
-#define LPASS_CLK_ID_INT1_MI2S_IBIT	17
-#define LPASS_CLK_ID_INT2_MI2S_IBIT	18
-#define LPASS_CLK_ID_INT3_MI2S_IBIT	19
-#define LPASS_CLK_ID_INT4_MI2S_IBIT	20
-#define LPASS_CLK_ID_INT5_MI2S_IBIT	21
-#define LPASS_CLK_ID_INT6_MI2S_IBIT	22
-#define LPASS_CLK_ID_QUI_MI2S_OSR	23
-#define LPASS_CLK_ID_PRI_PCM_IBIT	24
-#define LPASS_CLK_ID_PRI_PCM_EBIT	25
-#define LPASS_CLK_ID_SEC_PCM_IBIT	26
-#define LPASS_CLK_ID_SEC_PCM_EBIT	27
-#define LPASS_CLK_ID_TER_PCM_IBIT	28
-#define LPASS_CLK_ID_TER_PCM_EBIT	29
-#define LPASS_CLK_ID_QUAD_PCM_IBIT	30
-#define LPASS_CLK_ID_QUAD_PCM_EBIT	31
-#define LPASS_CLK_ID_QUIN_PCM_IBIT	32
-#define LPASS_CLK_ID_QUIN_PCM_EBIT	33
-#define LPASS_CLK_ID_QUI_PCM_OSR	34
-#define LPASS_CLK_ID_PRI_TDM_IBIT	35
-#define LPASS_CLK_ID_PRI_TDM_EBIT	36
-#define LPASS_CLK_ID_SEC_TDM_IBIT	37
-#define LPASS_CLK_ID_SEC_TDM_EBIT	38
-#define LPASS_CLK_ID_TER_TDM_IBIT	39
-#define LPASS_CLK_ID_TER_TDM_EBIT	40
-#define LPASS_CLK_ID_QUAD_TDM_IBIT	41
-#define LPASS_CLK_ID_QUAD_TDM_EBIT	42
-#define LPASS_CLK_ID_QUIN_TDM_IBIT	43
-#define LPASS_CLK_ID_QUIN_TDM_EBIT	44
-#define LPASS_CLK_ID_QUIN_TDM_OSR	45
-#define LPASS_CLK_ID_MCLK_1		46
-#define LPASS_CLK_ID_MCLK_2		47
-#define LPASS_CLK_ID_MCLK_3		48
-#define LPASS_CLK_ID_MCLK_4		49
-#define LPASS_CLK_ID_INTERNAL_DIGITAL_CODEC_CORE	50
-#define LPASS_CLK_ID_INT_MCLK_0		51
-#define LPASS_CLK_ID_INT_MCLK_1		52
-#define LPASS_CLK_ID_MCLK_5		53
-#define LPASS_CLK_ID_WSA_CORE_MCLK	54
-#define LPASS_CLK_ID_WSA_CORE_NPL_MCLK	55
-#define LPASS_CLK_ID_VA_CORE_MCLK	56
-#define LPASS_CLK_ID_TX_CORE_MCLK	57
-#define LPASS_CLK_ID_TX_CORE_NPL_MCLK	58
-#define LPASS_CLK_ID_RX_CORE_MCLK	59
-#define LPASS_CLK_ID_RX_CORE_NPL_MCLK	60
-#define LPASS_CLK_ID_VA_CORE_2X_MCLK	61
-
-#define LPASS_HW_AVTIMER_VOTE		101
-#define LPASS_HW_MACRO_VOTE		102
-#define LPASS_HW_DCODEC_VOTE		103
-
-#define Q6AFE_MAX_CLK_ID			104
-
-#define LPASS_CLK_ATTRIBUTE_INVALID		0x0
-#define LPASS_CLK_ATTRIBUTE_COUPLE_NO		0x1
-#define LPASS_CLK_ATTRIBUTE_COUPLE_DIVIDEND	0x2
-#define LPASS_CLK_ATTRIBUTE_COUPLE_DIVISOR	0x3
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 #endif /* __DT_BINDINGS_Q6_AFE_H__ */
diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
new file mode 100644
index 000000000000..0d3276c8fc11
--- /dev/null
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -0,0 +1,208 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_Q6_AUDIO_PORTS_H__
+#define __DT_BINDINGS_Q6_AUDIO_PORTS_H__
+
+/* LPASS Audio virtual ports IDs */
+#define HDMI_RX		1
+#define SLIMBUS_0_RX    2
+#define SLIMBUS_0_TX    3
+#define SLIMBUS_1_RX    4
+#define SLIMBUS_1_TX    5
+#define SLIMBUS_2_RX    6
+#define SLIMBUS_2_TX    7
+#define SLIMBUS_3_RX    8
+#define SLIMBUS_3_TX    9
+#define SLIMBUS_4_RX    10
+#define SLIMBUS_4_TX    11
+#define SLIMBUS_5_RX    12
+#define SLIMBUS_5_TX    13
+#define SLIMBUS_6_RX    14
+#define SLIMBUS_6_TX    15
+#define PRIMARY_MI2S_RX		16
+#define PRIMARY_MI2S_TX		17
+#define SECONDARY_MI2S_RX	18
+#define SECONDARY_MI2S_TX	19
+#define TERTIARY_MI2S_RX	20
+#define TERTIARY_MI2S_TX	21
+#define QUATERNARY_MI2S_RX	22
+#define QUATERNARY_MI2S_TX	23
+#define PRIMARY_TDM_RX_0	24
+#define PRIMARY_TDM_TX_0	25
+#define PRIMARY_TDM_RX_1	26
+#define PRIMARY_TDM_TX_1	27
+#define PRIMARY_TDM_RX_2	28
+#define PRIMARY_TDM_TX_2	29
+#define PRIMARY_TDM_RX_3	30
+#define PRIMARY_TDM_TX_3	31
+#define PRIMARY_TDM_RX_4	32
+#define PRIMARY_TDM_TX_4	33
+#define PRIMARY_TDM_RX_5	34
+#define PRIMARY_TDM_TX_5	35
+#define PRIMARY_TDM_RX_6	36
+#define PRIMARY_TDM_TX_6	37
+#define PRIMARY_TDM_RX_7	38
+#define PRIMARY_TDM_TX_7	39
+#define SECONDARY_TDM_RX_0	40
+#define SECONDARY_TDM_TX_0	41
+#define SECONDARY_TDM_RX_1	42
+#define SECONDARY_TDM_TX_1	43
+#define SECONDARY_TDM_RX_2	44
+#define SECONDARY_TDM_TX_2	45
+#define SECONDARY_TDM_RX_3	46
+#define SECONDARY_TDM_TX_3	47
+#define SECONDARY_TDM_RX_4	48
+#define SECONDARY_TDM_TX_4	49
+#define SECONDARY_TDM_RX_5	50
+#define SECONDARY_TDM_TX_5	51
+#define SECONDARY_TDM_RX_6	52
+#define SECONDARY_TDM_TX_6	53
+#define SECONDARY_TDM_RX_7	54
+#define SECONDARY_TDM_TX_7	55
+#define TERTIARY_TDM_RX_0	56
+#define TERTIARY_TDM_TX_0	57
+#define TERTIARY_TDM_RX_1	58
+#define TERTIARY_TDM_TX_1	59
+#define TERTIARY_TDM_RX_2	60
+#define TERTIARY_TDM_TX_2	61
+#define TERTIARY_TDM_RX_3	62
+#define TERTIARY_TDM_TX_3	63
+#define TERTIARY_TDM_RX_4	64
+#define TERTIARY_TDM_TX_4	65
+#define TERTIARY_TDM_RX_5	66
+#define TERTIARY_TDM_TX_5	67
+#define TERTIARY_TDM_RX_6	68
+#define TERTIARY_TDM_TX_6	69
+#define TERTIARY_TDM_RX_7	70
+#define TERTIARY_TDM_TX_7	71
+#define QUATERNARY_TDM_RX_0	72
+#define QUATERNARY_TDM_TX_0	73
+#define QUATERNARY_TDM_RX_1	74
+#define QUATERNARY_TDM_TX_1	75
+#define QUATERNARY_TDM_RX_2	76
+#define QUATERNARY_TDM_TX_2	77
+#define QUATERNARY_TDM_RX_3	78
+#define QUATERNARY_TDM_TX_3	79
+#define QUATERNARY_TDM_RX_4	80
+#define QUATERNARY_TDM_TX_4	81
+#define QUATERNARY_TDM_RX_5	82
+#define QUATERNARY_TDM_TX_5	83
+#define QUATERNARY_TDM_RX_6	84
+#define QUATERNARY_TDM_TX_6	85
+#define QUATERNARY_TDM_RX_7	86
+#define QUATERNARY_TDM_TX_7	87
+#define QUINARY_TDM_RX_0	88
+#define QUINARY_TDM_TX_0	89
+#define QUINARY_TDM_RX_1	90
+#define QUINARY_TDM_TX_1	91
+#define QUINARY_TDM_RX_2	92
+#define QUINARY_TDM_TX_2	93
+#define QUINARY_TDM_RX_3	94
+#define QUINARY_TDM_TX_3	95
+#define QUINARY_TDM_RX_4	96
+#define QUINARY_TDM_TX_4	97
+#define QUINARY_TDM_RX_5	98
+#define QUINARY_TDM_TX_5	99
+#define QUINARY_TDM_RX_6	100
+#define QUINARY_TDM_TX_6	101
+#define QUINARY_TDM_RX_7	102
+#define QUINARY_TDM_TX_7	103
+#define DISPLAY_PORT_RX		104
+#define WSA_CODEC_DMA_RX_0	105
+#define WSA_CODEC_DMA_TX_0	106
+#define WSA_CODEC_DMA_RX_1	107
+#define WSA_CODEC_DMA_TX_1	108
+#define WSA_CODEC_DMA_TX_2	109
+#define VA_CODEC_DMA_TX_0	110
+#define VA_CODEC_DMA_TX_1	111
+#define VA_CODEC_DMA_TX_2	112
+#define RX_CODEC_DMA_RX_0	113
+#define TX_CODEC_DMA_TX_0	114
+#define RX_CODEC_DMA_RX_1	115
+#define TX_CODEC_DMA_TX_1	116
+#define RX_CODEC_DMA_RX_2	117
+#define TX_CODEC_DMA_TX_2	118
+#define RX_CODEC_DMA_RX_3	119
+#define TX_CODEC_DMA_TX_3	120
+#define RX_CODEC_DMA_RX_4	121
+#define TX_CODEC_DMA_TX_4	122
+#define RX_CODEC_DMA_RX_5	123
+#define TX_CODEC_DMA_TX_5	124
+#define RX_CODEC_DMA_RX_6	125
+#define RX_CODEC_DMA_RX_7	126
+#define QUINARY_MI2S_RX		127
+#define QUINARY_MI2S_TX		128
+
+#define LPASS_CLK_ID_PRI_MI2S_IBIT	1
+#define LPASS_CLK_ID_PRI_MI2S_EBIT	2
+#define LPASS_CLK_ID_SEC_MI2S_IBIT	3
+#define LPASS_CLK_ID_SEC_MI2S_EBIT	4
+#define LPASS_CLK_ID_TER_MI2S_IBIT	5
+#define LPASS_CLK_ID_TER_MI2S_EBIT	6
+#define LPASS_CLK_ID_QUAD_MI2S_IBIT	7
+#define LPASS_CLK_ID_QUAD_MI2S_EBIT	8
+#define LPASS_CLK_ID_SPEAKER_I2S_IBIT	9
+#define LPASS_CLK_ID_SPEAKER_I2S_EBIT	10
+#define LPASS_CLK_ID_SPEAKER_I2S_OSR	11
+#define LPASS_CLK_ID_QUI_MI2S_IBIT	12
+#define LPASS_CLK_ID_QUI_MI2S_EBIT	13
+#define LPASS_CLK_ID_SEN_MI2S_IBIT	14
+#define LPASS_CLK_ID_SEN_MI2S_EBIT	15
+#define LPASS_CLK_ID_INT0_MI2S_IBIT	16
+#define LPASS_CLK_ID_INT1_MI2S_IBIT	17
+#define LPASS_CLK_ID_INT2_MI2S_IBIT	18
+#define LPASS_CLK_ID_INT3_MI2S_IBIT	19
+#define LPASS_CLK_ID_INT4_MI2S_IBIT	20
+#define LPASS_CLK_ID_INT5_MI2S_IBIT	21
+#define LPASS_CLK_ID_INT6_MI2S_IBIT	22
+#define LPASS_CLK_ID_QUI_MI2S_OSR	23
+#define LPASS_CLK_ID_PRI_PCM_IBIT	24
+#define LPASS_CLK_ID_PRI_PCM_EBIT	25
+#define LPASS_CLK_ID_SEC_PCM_IBIT	26
+#define LPASS_CLK_ID_SEC_PCM_EBIT	27
+#define LPASS_CLK_ID_TER_PCM_IBIT	28
+#define LPASS_CLK_ID_TER_PCM_EBIT	29
+#define LPASS_CLK_ID_QUAD_PCM_IBIT	30
+#define LPASS_CLK_ID_QUAD_PCM_EBIT	31
+#define LPASS_CLK_ID_QUIN_PCM_IBIT	32
+#define LPASS_CLK_ID_QUIN_PCM_EBIT	33
+#define LPASS_CLK_ID_QUI_PCM_OSR	34
+#define LPASS_CLK_ID_PRI_TDM_IBIT	35
+#define LPASS_CLK_ID_PRI_TDM_EBIT	36
+#define LPASS_CLK_ID_SEC_TDM_IBIT	37
+#define LPASS_CLK_ID_SEC_TDM_EBIT	38
+#define LPASS_CLK_ID_TER_TDM_IBIT	39
+#define LPASS_CLK_ID_TER_TDM_EBIT	40
+#define LPASS_CLK_ID_QUAD_TDM_IBIT	41
+#define LPASS_CLK_ID_QUAD_TDM_EBIT	42
+#define LPASS_CLK_ID_QUIN_TDM_IBIT	43
+#define LPASS_CLK_ID_QUIN_TDM_EBIT	44
+#define LPASS_CLK_ID_QUIN_TDM_OSR	45
+#define LPASS_CLK_ID_MCLK_1		46
+#define LPASS_CLK_ID_MCLK_2		47
+#define LPASS_CLK_ID_MCLK_3		48
+#define LPASS_CLK_ID_MCLK_4		49
+#define LPASS_CLK_ID_INTERNAL_DIGITAL_CODEC_CORE	50
+#define LPASS_CLK_ID_INT_MCLK_0		51
+#define LPASS_CLK_ID_INT_MCLK_1		52
+#define LPASS_CLK_ID_MCLK_5		53
+#define LPASS_CLK_ID_WSA_CORE_MCLK	54
+#define LPASS_CLK_ID_WSA_CORE_NPL_MCLK	55
+#define LPASS_CLK_ID_VA_CORE_MCLK	56
+#define LPASS_CLK_ID_TX_CORE_MCLK	57
+#define LPASS_CLK_ID_TX_CORE_NPL_MCLK	58
+#define LPASS_CLK_ID_RX_CORE_MCLK	59
+#define LPASS_CLK_ID_RX_CORE_NPL_MCLK	60
+#define LPASS_CLK_ID_VA_CORE_2X_MCLK	61
+
+#define LPASS_HW_AVTIMER_VOTE		101
+#define LPASS_HW_MACRO_VOTE		102
+#define LPASS_HW_DCODEC_VOTE		103
+
+#define Q6AFE_MAX_CLK_ID			104
+
+#define LPASS_CLK_ATTRIBUTE_INVALID		0x0
+#define LPASS_CLK_ATTRIBUTE_COUPLE_NO		0x1
+#define LPASS_CLK_ATTRIBUTE_COUPLE_DIVIDEND	0x2
+#define LPASS_CLK_ATTRIBUTE_COUPLE_DIVISOR	0x3
+
+#endif /* __DT_BINDINGS_Q6_AUDIO_PORTS_H__ */
-- 
2.21.0

