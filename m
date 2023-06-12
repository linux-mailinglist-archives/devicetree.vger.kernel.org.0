Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61D5A72CD05
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 19:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231867AbjFLRi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 13:38:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234982AbjFLRig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 13:38:36 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2856519B5
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 10:38:06 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5186d5508afso329018a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 10:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686591484; x=1689183484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pohf3jyshJu2JxNqYLlPYLTjUPMpfwEBoQx4CTKe4VQ=;
        b=BhLuodm/lum9Jdxd5Vdrr/qAKrU8z/w4faTouoLjz+Al8yCOr/yXxgpJrx+1bwL721
         YXr7Fw/wsrQw5NHtsknWiefmTYLvMDi/SjpRWSc9Z0/K8D7ObEfG16wwwhg7UziT1Ft9
         DwBMO+bXlQQjg24+/8y3laS12ROV7Bn57MX4kfzS7HTpuubkjrM8gJg2K4yjpapmmUV7
         GUHrnQm5RNeFtp+vGfejS4ZQrOak/r1Lglegh0/TgyJPgJyHMewaLY7tf0H7MaT126o9
         FS9eujy7WVci7zo9HLnJYFwTL3qsvEQ1NquJPcHaNJeuxEAlsVTvfDhb4EeK/iiMLN2q
         9W5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686591484; x=1689183484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pohf3jyshJu2JxNqYLlPYLTjUPMpfwEBoQx4CTKe4VQ=;
        b=VT/RUbVK/ExwuTpTUEGpE0325VU+k61odNWrQpIuZjxauVeBWe38AsxAY0zu8v9Ice
         Zo3DP9nCGgBGyykm+QJyeUFwnjL+sNcPW5JE5azF4ii/EXoNM5eGn9H7KO9kW2NpodvD
         7mD+K4a9XJLdYPrVtHtfYn5nx6uec1fUuyYvywzH08M/Rs94fcPVLeHke25Q8bD/x3fk
         ahTKMJUF+OvlYBNJfM5z4YCWWzunKGv2Xbsx5pHiNutRZakMqvoSmK31zwqoqlLBvlSY
         Crdx+4D9paa4ET/kvK6mGviwq9f0oUOZS9PoNbpmfpL6oathfGhBIF/j7IV3TnrObKaR
         zyFA==
X-Gm-Message-State: AC+VfDyUCwzILs/sJPwVvB/Su2O9f/4QKqo0x3gZatkUoJcOkZ/EQa4K
        1BhVScnId35IeHKsfGubEivRLQ==
X-Google-Smtp-Source: ACHHUZ6JWvl/AkjQ33tK0nixWSlGSO7S/vl/vIehMLQSilEeWBqqSfiW/boXj+mcbx3y6ZJ675nsrw==
X-Received: by 2002:a17:907:9342:b0:973:91f7:508a with SMTP id bv2-20020a170907934200b0097391f7508amr9370903ejc.4.1686591484611;
        Mon, 12 Jun 2023 10:38:04 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ks27-20020a170906f85b00b00977eec5bb2csm5454093ejb.156.2023.06.12.10.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 10:38:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8550-qrd: add sound card
Date:   Mon, 12 Jun 2023 19:37:57 +0200
Message-Id: <20230612173758.286411-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the sound card node with tested playback over WSA8845 speakers and
WCD9385 headset over USB Type-C.  The recording links were not tested,
but should be similar to previous platforms.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings for the sound card were not sent to LKML. Work-in-progress is
available here:
https://github.com/krzk/linux/tree/n/audio-wsa884x-on-top-of-wip-sm8450-audio-on-next

Depends on my previous patch adding WSA8845 speakers:
https://lore.kernel.org/linux-arm-msm/20230608094323.267278-1-krzysztof.kozlowski@linaro.org/T/#t
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 81 +++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 7ef7079dd640..cb0369fbbc81 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -97,6 +97,87 @@ pmic_glink_sbu: endpoint {
 		};
 	};
 
+	sound {
+		compatible = "qcom,sm8550-sndcard", "qcom,sm8450-sndcard";
+		model = "SM8550-QRD";
+		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
+				"SpkrRight IN", "WSA_SPK2 OUT",
+				"IN1_HPHL", "HPHL_OUT",
+				"IN2_HPHR", "HPHR_OUT",
+				"AMIC2", "MIC BIAS2",
+				"VA DMIC0", "MIC BIAS1",
+				"VA DMIC1", "MIC BIAS1",
+				"VA DMIC2", "MIC BIAS3",
+				"TX DMIC0", "MIC BIAS1",
+				"TX DMIC1", "MIC BIAS2",
+				"TX DMIC2", "MIC BIAS3",
+				"TX SWR_ADC1", "ADC2_OUTPUT";
+
+		wcd-playback-dai-link {
+			link-name = "WCD Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
+			};
+
+			codec {
+				sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wcd-capture-dai-link {
+			link-name = "WCD Capture";
+
+			cpu {
+				sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
+			};
+
+			codec {
+				sound-dai = <&wcd938x 1>, <&swr2 0>, <&lpass_txmacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+			};
+
+			codec {
+				sound-dai = <&north_spkr>, <&south_spkr>, <&swr0 0>, <&lpass_wsamacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		va-dai-link {
+			link-name = "VA Capture";
+
+			cpu {
+				sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
+			};
+
+			codec {
+				sound-dai = <&lpass_vamacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
-- 
2.34.1

