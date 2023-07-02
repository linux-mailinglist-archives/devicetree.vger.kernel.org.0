Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1F3744FFE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbjGBSwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230059AbjGBSwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:52:30 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8979AD2
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:52:08 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-992f15c36fcso289200366b.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323891; x=1690915891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k0/D6Od9BJ8+b84piDb5tg8kbjMdXggz6hvE4EQ9a9w=;
        b=ew8rZyDpE2YyJb+og5uu4u8aMR09sM5walTcl5XWWAdQ3o/Eb8mkU9DlqpyOnXSR3J
         acyiSJPNrNfIr/rXfUM2kPA1lAAZAvs2zxuiN/w/wtGhAWv56Diujr3CLpi/TnqbQpo5
         xFSLQh+5tFzbgR0MQa96de6NpUgeXJZkxcxRxv8ETc/yUBE5pQbN64Z15YjaGVc1F8a8
         qzu5cK4KwMTEb+w+0MtBRtQ/8KYnMyM8z8XNDlXaA1hECvStSv/wqD/XmzMXlFCMaCJs
         PUIDQQtsY8WEWzffkdMQzwserQlC6o8HiIZ/NxEC2M4zCVe8iuqLTvgc7zZBqzuuvc/d
         osBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323891; x=1690915891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k0/D6Od9BJ8+b84piDb5tg8kbjMdXggz6hvE4EQ9a9w=;
        b=U7rIVT+3ioTEhejnE9r3jPN5VDDtYeqoAKEx/spKZcgdrL7vItIhTG+rNmNs2CbL46
         qvnHxfyPHdL1269t53qFep/OutEToMDP4S8pUupzmXOdkS7cLk5nC9L+XiO6IrAaroOu
         2Qx2Hjoj/BwF8aBZG6ukUF0FQdLWkDCa72uUHRUIaHwKHI3+HxeEJLgkSX4j9fwc2kxL
         wInMnz8vgnvOq7ZMAhtEHtGDizZTQ1hUiO3BXYb140DZs3uKClmYnGi2zx1LlGZGMRod
         CSxiUPcXE/9TAiop6QfAdJChLcp2CLqnBulGgQa8BFYdzI0cqBbzhbjf91SgGgV+yUdD
         DOqA==
X-Gm-Message-State: AC+VfDwqXyHvPtk0/gxHRaxI9GC0FQpriDMBSzxj5++/OscE1nGOzSjg
        8WQ/8BC5N6rrOR6+3wMVBP7lig==
X-Google-Smtp-Source: APBJJlGeqpgbF2rHnrt+xL1LlnmvAn+UVpaAyDRwPj8+9QmJF7hUYtAi7npeyLqy6MqPn1ZW+091lw==
X-Received: by 2002:a17:906:8314:b0:978:ab6b:afd4 with SMTP id j20-20020a170906831400b00978ab6bafd4mr5473018ejx.43.1688323890764;
        Sun, 02 Jul 2023 11:51:30 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id gy18-20020a170906f25200b0099297782aa9sm5343084ejb.49.2023.07.02.11.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:51:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: mediatek: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:51:27 +0200
Message-Id: <20230702185128.44052-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 6 +++---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts             | 6 +++---
 arch/arm64/boot/dts/mediatek/mt8195-demo.dts             | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index e4605d23fdc8..07484c219364 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -385,9 +385,9 @@ mux {
 	i2s1_pins: i2s1-pins {
 		mux {
 			function = "i2s";
-			groups =  "i2s_out_mclk_bclk_ws",
-				  "i2s1_in_data",
-				  "i2s1_out_data";
+			groups = "i2s_out_mclk_bclk_ws",
+				 "i2s1_in_data",
+				 "i2s1_out_data";
 		};
 
 		conf {
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index dad8e683aac5..a885a3fbe456 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -311,9 +311,9 @@ mux {
 	i2s1_pins: i2s1-pins {
 		mux {
 			function = "i2s";
-			groups =  "i2s_out_mclk_bclk_ws",
-				  "i2s1_in_data",
-				  "i2s1_out_data";
+			groups = "i2s_out_mclk_bclk_ws",
+				 "i2s1_in_data",
+				 "i2s1_out_data";
 		};
 
 		conf {
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
index b2485ddfd33b..937120f3ff59 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
@@ -79,7 +79,7 @@ optee_reserved: optee@43200000 {
 };
 
 &eth {
-	phy-mode ="rgmii-id";
+	phy-mode = "rgmii-id";
 	phy-handle = <&ethernet_phy0>;
 	snps,reset-gpio = <&pio 93 GPIO_ACTIVE_HIGH>;
 	snps,reset-delays-us = <0 10000 80000>;
-- 
2.34.1

