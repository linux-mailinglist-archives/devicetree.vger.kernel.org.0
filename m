Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1597424357
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 18:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234535AbhJFQvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 12:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237359AbhJFQtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 12:49:15 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84605C061767
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 09:47:23 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id e12so10737272wra.4
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 09:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ouCcvRhvwfDjDdqR2Ag/OHVwx6Zmnh+mSBZ9TgkL1Gw=;
        b=pz4OtzCzz13mMNwHvEydOd2llMX0EY3kvJvOhhTgZERSPZsaIlDcx+SC5eO2rCrA0a
         rKuw0mlXHMEAcPbv/zlu5Zi9EmoQg9s3alk7qflr+bysbthM6tPWZfDq3YqUezmv8urx
         ROIxXtw+Zn+rrlqLv86ohQkU5qn5Cb8JWnHL9jguUlniesxRV185tQS+LLoN//fIHTK6
         Siq6niuuVnBmW7Hk7pufhXJoY+IZ1gSgDVQ3AMFRcjqUzzwYpsw6BYGekVldFTRlDxJb
         8cBgk3f6vv5NXOu5D6dioGldSVs0WYwDEG7SFVoWojxuC+Co7Tdn+B2H0PRtuLrt7L25
         GlWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ouCcvRhvwfDjDdqR2Ag/OHVwx6Zmnh+mSBZ9TgkL1Gw=;
        b=bRkTqaQckjDi6sh5YwQYj35/RmvYQjsuUCkfb9Q9BzgTsAB+A2B+s4uB2fwIlpRY3l
         czQgts9PlBdUIMsn0sP4Or+ln6a3BUEBhnNuczODSAzBi46M45SAWG+l05VKbvUtG5Jb
         wIAOSe6CBOd/yNM9L1/oEreMC+lz9jTZgiTaC/a8rKOuJlxrz+fgThEQAPQOFMg831mN
         Dq9IdbG0MeHRFMejlQ/vuntMdHBtNGdYJwru8Dig5uUkWc/b1xKA9wFtsozoybVLSfJ3
         Liu0Brt5Xi2CG7OuIDgL2jN0HLB1IvP7RIxfkfPvsemsEA0QbAVFV2gxaAIqTsDHGiuV
         sX3Q==
X-Gm-Message-State: AOAM530Rj+1dTxLo3B09OGlkXTvQoX3dKvbEMVGep5JtFH+n+UVM/09v
        TTwvR2BYkuTEA6fC1+hCd8ibmQ==
X-Google-Smtp-Source: ABdhPJyG2f83tI2dMUPlm2nJR68nYh8Tx8aj634/MqcyODxjz+7j0FsHzjYmc4VsCxif9SZ1oxdowg==
X-Received: by 2002:a05:6000:188d:: with SMTP id a13mr25071311wri.243.1633538842094;
        Wed, 06 Oct 2021 09:47:22 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l21sm6785165wmg.18.2021.10.06.09.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 09:47:21 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 4/4] arm64: dts: qcom: sm8250-mtp: add sound card support
Date:   Wed,  6 Oct 2021 17:47:12 +0100
Message-Id: <20211006164712.16078-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
References: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds sound card support for MTP using WCD938x headset playback,
capture, WSA8810 Speaker Playback and DMICs via VA macro.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 104 ++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 9b27053ca3af..1df64a744607 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -648,6 +648,110 @@
 	};
 };
 
+&sound {
+	compatible = "qcom,sm8250-sndcard";
+	model = "SM8250-MTP-WCD9380-WSA8810-VA-DMIC";
+	audio-routing =
+		"SpkrLeft IN", "WSA_SPK1 OUT",
+		"SpkrRight IN", "WSA_SPK2 OUT",
+		"IN1_HPHL", "HPHL_OUT",
+		"IN2_HPHR", "HPHR_OUT",
+		"AMIC1", "MIC BIAS1",
+		"AMIC2", "MIC BIAS2",
+		"AMIC3", "MIC BIAS3",
+		"AMIC4", "MIC BIAS3",
+		"AMIC5", "MIC BIAS4",
+		"TX SWR_ADC0", "ADC1_OUTPUT",
+		"TX SWR_ADC1", "ADC2_OUTPUT",
+		"TX SWR_ADC2", "ADC3_OUTPUT",
+		"TX SWR_ADC3", "ADC4_OUTPUT",
+		"TX SWR_DMIC0", "DMIC1_OUTPUT",
+		"TX SWR_DMIC1", "DMIC2_OUTPUT",
+		"TX SWR_DMIC2", "DMIC3_OUTPUT",
+		"TX SWR_DMIC3", "DMIC4_OUTPUT",
+		"TX SWR_DMIC4", "DMIC5_OUTPUT",
+		"TX SWR_DMIC5", "DMIC6_OUTPUT",
+		"TX SWR_DMIC6", "DMIC7_OUTPUT",
+		"TX SWR_DMIC7", "DMIC8_OUTPUT";
+
+	mm1-dai-link {
+		link-name = "MultiMedia1";
+		cpu {
+			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA1>;
+		};
+	};
+
+	mm2-dai-link {
+		link-name = "MultiMedia2";
+		cpu {
+			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA2>;
+		};
+	};
+
+	mm3-dai-link {
+		link-name = "MultiMedia3";
+		cpu {
+			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA3>;
+		};
+	};
+
+	wcd-playback-dai-link {
+		link-name = "WCD Playback";
+		cpu {
+			sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
+		};
+		codec {
+			sound-dai = <&wcd938x 0>, <&swr1 0>, <&rxmacro 0>;
+		};
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
+
+	wcd-capture-dai-link {
+		link-name = "WCD Capture";
+		cpu {
+			sound-dai = <&q6afedai TX_CODEC_DMA_TX_3>;
+		};
+
+		codec {
+			sound-dai = <&wcd938x 1>, <&swr2 0>, <&txmacro 0>;
+		};
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
+
+	wsa-dai-link {
+		link-name = "WSA Playback";
+		cpu {
+			sound-dai = <&q6afedai WSA_CODEC_DMA_RX_0>;
+		};
+
+		codec {
+			sound-dai = <&left_spkr>, <&right_spkr>, <&swr0 0>, <&wsamacro 0>;
+		};
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
+
+	va-dai-link {
+		link-name = "VA Capture";
+		cpu {
+			sound-dai = <&q6afedai VA_CODEC_DMA_TX_0>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+
+		codec {
+			sound-dai = <&vamacro 0>;
+		};
+	};
+};
+
 &swr0 {
 	left_spkr: wsa8810-right@0,3{
 		compatible = "sdw10217211000";
-- 
2.21.0

