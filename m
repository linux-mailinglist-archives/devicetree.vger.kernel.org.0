Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD7466D7661
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 10:08:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237393AbjDEIIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 04:08:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237348AbjDEIIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 04:08:00 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B82E6C
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 01:07:57 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id n10-20020a05600c4f8a00b003ee93d2c914so22849042wmq.2
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 01:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680682076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E8wkncoEW3UcSZNKmP1QjzM0HpYGIsR05ILVR35YRK0=;
        b=CSOBRqhTmPBUzsDZEaT7hholheXVaNotdlc0AvXTHADQUFBxE8YPydRe3cgXPcRWXr
         9jiE4XazeTmr05+108byJinD02Aa+rU4nNlA3kDdP7NOLR++2MmDi4unXU63/AT8Rc0+
         2wU0ElK+iBhhVk2P2ITCOdS7vHrvo27RJuXCnTJSWhC7AZX/bTDFRqTqFytD4zKki4Go
         k6/mGa+PHe4q3lsOeCN+HHY8PDib8MAIhP2TvA17y3d5HDcQRdCRNw8+SJEuaBpJaGa2
         UE2jWwbhmw3uus8k26LwBnF7JFLmLNnACsjvjnQ4NlvwaaRpZyQVQ2cKrTZzoDHZjlUM
         gcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680682076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8wkncoEW3UcSZNKmP1QjzM0HpYGIsR05ILVR35YRK0=;
        b=e/hKhaKZ1m2/T3bGc7CP71uaaC4ijXZklGvnwVysGKwQIwj/woTK/deWI5efrK978e
         3ROlG9d7DVBIIG6+mVs5DKpFN7NBM8g0/1lw5Frc9v9XdmJwocDDSGiQJdW/YQwdHyVP
         3wOLu+JvVaR2hQdItL7lV4OkDohqX0vTuWE7uPX5AdId7FQVDrIVyRo4SLD0CbNQnLxu
         MmZvCCt5hzBDj1ZWJcdBDsgPZ957XJfx8Ib4mrCEOucus1jCNn+RGEu3zejhwkSB8kDf
         TsetBISENvjnPzszaBifasEhcWxBE7YfQNCU3jIUKLuE4yvOf51q5jBbXZID7B3IfgLU
         EB4g==
X-Gm-Message-State: AAQBX9c7C2qh/WKAQcy6WUVIqMBXzIhVYP0XyCTaE7H2yeUQ4tglQ4FL
        i105SP/ipQ2q9JQd8uAZmol55g==
X-Google-Smtp-Source: AKy350Z+woD8WDWtBtXgo35l62NNOLL6b+qZotySU5zCVUgIvzbiH8gCcU7fYavFDXSkx2LBVAWZag==
X-Received: by 2002:a1c:7406:0:b0:3ee:18e:a1ef with SMTP id p6-20020a1c7406000000b003ee018ea1efmr3693282wmc.1.1680682076428;
        Wed, 05 Apr 2023 01:07:56 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d4-20020a05600c3ac400b003ee8a1bc220sm1378395wms.1.2023.04.05.01.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 01:07:56 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Wed, 05 Apr 2023 10:06:50 +0200
Subject: [PATCH v2 08/10] arm64: dts: mediatek: add larb support for mt8365
 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v2-8-60d5fa00e4e5@baylibre.com>
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
In-Reply-To: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
To:     Yong Wu <yong.wu@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2919; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/eg96dGEgFTbseacSYltO+tu8R5mtjKMtqf32ClmdXM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkLSxT/kwfmQuz1cs8/FnyVaH3Vl63Ko2+7dIkEyJ6
 oStPF+6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZC0sUwAKCRArRkmdfjHURaFTD/
 0RNpVWhe/E8a4yB9QePEcr5olvPNzP3WhMyM1F/PksjGuSEXpt/e5dcoZJZLoLUsN/jOvbONV5xKEl
 KSFuokyVaghFvBCI0qqr5iIXTKFuK/VRsGXDBLzONwE9VT4q3SarN8bjOJrOvqcbaKDXwWa80pCjYy
 PKb4dV55LexdhZsY+xGoUI3iRmkDkZfvrJVl0VE0THp0SAVyo0UYv/JCuicesxWKovTBcr6K7s1z9L
 rxqoupOnOvql6rDslMWoLwG3UZao2A21/7e3Py2zRZYfu652An8ro1JxGGHevN4rXXZDfezP1m1QAn
 J5MmpETamxmHyKXZR6YeD0R0iUNKk0wmOsrIn5eaxgtLipUojxkukDx7sqxv7Nc66QrR5ZeCU130XZ
 VX0Zsh/whM+7ZZ/11MnOOBVXfJ6jKPuRzLpNmuP2uckGqtIltv9c0DppsfwpFzJnItOusOUouPRrMj
 dfNZNjKE8TgbbSrlMzOOviKXQKpRwd63Xgc2fsxdDB8cRAJbmW9xhLjZ43/ftpiVWwt8wdufT3FACB
 LEePTYUSnQz6ECDUNLVqG7qtAlhQzjyPqGdEnKVhGljex1/+2WMONMdc/zvsRfW9oVEndPxAfiBKV2
 ywnePbS+JWGDpudxFZjeWYmJHfo0KCUXNRdA+PErSPF2xD5N+f/sm25fiUAA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Local arbiter (LARB) is a component of Smart Multimedia Interface (SMI),
used to help the memory management (IOMMU).
This patch add 4 LARBs and 2 clocks for the larb1 and larb3 support.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 59 ++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 70915beb513c..07a7267f338e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -724,12 +724,71 @@ smi_common: smi@14002000 {
 			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
 		};
 
+		larb0: larb@14003000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x14003000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_MM_SMI_LARB0>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_MM>;
+			mediatek,larb-id = <0>;
+		};
+
 		camsys: syscon@15000000 {
 			compatible = "mediatek,mt8365-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
+		larb2: larb@15001000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x15001000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_MM_SMI_IMG>,
+				 <&camsys CLK_CAM_LARB2>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+			mediatek,larb-id = <2>;
+		};
+
+		vdecsys: syscon@16000000 {
+			compatible = "mediatek,mt8365-vdecsys", "syscon";
+			reg = <0 0x16000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		larb3: larb@16010000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x16010000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&vdecsys CLK_VDEC_LARB1>,
+				 <&vdecsys CLK_VDEC_LARB1>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_VDEC>;
+			mediatek,larb-id = <3>;
+		};
+
+		vencsys: syscon@17000000 {
+			compatible = "mediatek,mt8365-vencsys", "syscon";
+			reg = <0 0x17000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		larb1: larb@17010000 {
+			compatible = "mediatek,mt8365-smi-larb",
+				     "mediatek,mt8186-smi-larb";
+			reg = <0 0x17010000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&vencsys CLK_VENC>, <&vencsys CLK_VENC>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8365_POWER_DOMAIN_VENC>;
+			mediatek,larb-id = <1>;
+		};
+
 		apu: syscon@19020000 {
 			compatible = "mediatek,mt8365-apu", "syscon";
 			reg = <0 0x19020000 0 0x1000>;

-- 
2.25.1

