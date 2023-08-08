Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4B32774261
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233172AbjHHRnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234036AbjHHRmj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:42:39 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050:0:465::101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 886F35A66
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:18:52 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4RKyzD5PMMz9srj;
        Tue,  8 Aug 2023 18:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1691511496;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=8pP2tQ9G1CSgP96+czw5oj85ohoirg2opvYsmKnh0zo=;
        b=swD0Gt911PkveINFB9XoG1S0KrqsjzhC6JkYGgzBTXWYMykA76Sy3Ab+0BP1HuX5dx8qI7
        gDzm0hT9FLG4Dtx3jlWoyd91LSoqghGkE4AzkqToxbMOS0HVsdMi7639O0jGDVCFYxkb8x
        qBlHbzQ4T1F44LTS1RE+uoaqnHigTfI2dJUhgR3g+4SQdP2zZhaj21HSatMVO+cjdpHi1V
        MCkiQI9a8btiGvTOYS8amPl5RaBXx23VPB1lOgzWvrRuj+c2dar7fug1NY15pHEuq9obur
        TDz+p4dCIHwzhzS7aJ6Zzjwlw+/J4E3MV4e05U7dsBneQBmD6vC17PufYWs3gA==
From:   Alexander Stein <alexander.stein@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1691511494;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=8pP2tQ9G1CSgP96+czw5oj85ohoirg2opvYsmKnh0zo=;
        b=IvweC6uzvKC04XZnV72YV25I4ec45dN7dN/KpjCvk9aMgFbDvEijP+6dSNRpoLTveSnbrb
        bVzzS6UpI5+lPrRiN88ADJMf7NIlOJqkZ+CKGuAOHCf7VK03BSRWCpIsPTysVV290aMC7T
        RkXe16oNWOnAOyD/HWeB0wlgli9VzhTfR/wkj4HO8jxDBZyjTOrmN5WWe7+ssXjsmMeRaW
        su/ch8mOhEX6FP9gYgsu/JxwDxuzAUwk0xdMMo8+k4UYDeAZBqsPQbSZu5MaT8uhCbJqEU
        h1Te08p6fsWwpgIz9BwBXwORyHEQKHNEGPKSjbX/hAQMaTfO5V+z7EHWEvTqcQ==
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for amlogic,axg-tdm-iface devices
Date:   Tue,  8 Aug 2023 18:17:52 +0200
Message-ID: <20230808161755.31594-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: ca8srwyci65agwfa3nidgadabspxws16
X-MBO-RS-ID: 55e9cb80a79df6dca71
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Binding specify order of clocks as:
1. "sclk"
2. "lrclk"
3. "mclk"
Adjust clocks accordingly. Fixes warnings:
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:0: 'sclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:1: 'lrclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:2: 'mclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:0: 'sclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:1: 'lrclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:2: 'mclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:0: 'sclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:1: 'lrclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:2: 'mclk' was expected
        from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index 6a1f4dcf6488..3ae6875707fb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -15,10 +15,10 @@ tdmif_a: audio-controller-0 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_A";
-		clocks = <&clkc_audio AUD_CLKID_MST_A_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_A_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_A_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 
@@ -26,10 +26,10 @@ tdmif_b: audio-controller-1 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_B";
-		clocks = <&clkc_audio AUD_CLKID_MST_B_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_B_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_B_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_B_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 
@@ -37,10 +37,10 @@ tdmif_c: audio-controller-2 {
 		compatible = "amlogic,axg-tdm-iface";
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TDM_C";
-		clocks = <&clkc_audio AUD_CLKID_MST_C_MCLK>,
-			 <&clkc_audio AUD_CLKID_MST_C_SCLK>,
-			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>;
-		clock-names = "mclk", "sclk", "lrclk";
+		clocks = <&clkc_audio AUD_CLKID_MST_C_SCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>,
+			 <&clkc_audio AUD_CLKID_MST_C_MCLK>;
+		clock-names = "sclk", "lrclk", "mclk";
 		status = "disabled";
 	};
 };
-- 
2.41.0

