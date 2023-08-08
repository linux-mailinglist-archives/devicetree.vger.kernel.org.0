Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF0EC774265
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:44:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232864AbjHHRoH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231458AbjHHRnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:43:41 -0400
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050:0:465::101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21B34249B0
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:19:28 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4RKyzF6RRyz9tMn;
        Tue,  8 Aug 2023 18:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1691511497;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=aGGUmP8Tng3VDvVivMqZI/5pDN809RPPjvmptF0sisg=;
        b=bsTIBi12Pe64JIxoBnSalS1DT7RjeXs4s2VYNnHcpZcJg3xvWJz+NagR/HZIgRYEWRJuKa
        BhD0eBFJ8RaCswhOVwKWl5zuHpAoIm6jHQgJZVtCf8wieR09LrczJNpIdesQifxEBvD6im
        E9e1UlIh2Gn/ZJ09htJxFMG1STTZjwncUewKt2lsNB/OzlUVXIMXUcSloURfshw22Kgy7k
        ezKLs0+40M1GvoSypeOVukBXPf2H35OzmspJYH/eLC+LQL5RCO4zoppesCVBISg7LVLNAD
        LqNg+ok03E8eImLmjJ+EE8amCqBzLvKqdcMyUgt+SOJ5NUNlzVYJzH9KSm1hOw==
From:   Alexander Stein <alexander.stein@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1691511495;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=aGGUmP8Tng3VDvVivMqZI/5pDN809RPPjvmptF0sisg=;
        b=U0gwFzhLSqiiHgzavg8A96lBqmiAWamAwodMhVepBYigWqUtnFjeRI+RFpMMUuTNHIfth4
        +HV+KBMBxipaUDEMwjFynvcBLRxOI6Snuh2QDHVe89N/ZeVAX6yPXJXhlH+DjPEhJEAf5j
        L5Stvge1VZL7ORa11JlL+2p8PjO9obJeeM2qQXG4YS5SBPWpQNxoHaebraNGdxOjFt/Fpf
        21wzS01Wwb4e/7GobQZUnbkIoVbqg2dO6lf9yozNOU4YZAWLXpn8bSmK+VXItlvsytVi+O
        5SVpP3sVQeYIDJcqRc4GEhMA+Sy+uZZhXUP8WvOZbyvxlKEe5YdXFO730QzPqA==
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
Subject: [PATCH 2/2] arm64: dts: meson-g12: Fix compatible for amlogic,g12a-tdmin
Date:   Tue,  8 Aug 2023 18:17:53 +0200
Message-ID: <20230808161755.31594-2-alexander.stein@mailbox.org>
In-Reply-To: <20230808161755.31594-1-alexander.stein@mailbox.org>
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: k5isb4nfwbxr8ra4z48s7oyw57iabrgp
X-MBO-RS-ID: bb2cb0716d7e664ae40
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

amlogic,axg-tdmin is not listed as compatible to g12a-tdmin in bindings.
Remove superfluous compatible. Fixes the dtbs_check warnings:
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller@300: compatible: ['amlogic,g12a-tdmin', 'amlogic,axg-tdmin'] is too long
 from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller@340: compatible: ['amlogic,g12a-tdmin', 'amlogic,axg-tdmin'] is too long
 from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller@380: compatible: ['amlogic,g12a-tdmin', 'amlogic,axg-tdmin'] is too long
 from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller@3c0: compatible: ['amlogic,g12a-tdmin', 'amlogic,axg-tdmin'] is too long
 from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index 3ae6875707fb..eb442aaf57e4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -195,8 +195,7 @@ arb: reset-controller@280 {
 		};
 
 		tdmin_a: audio-controller@300 {
-			compatible = "amlogic,g12a-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,g12a-tdmin";
 			reg = <0x0 0x300 0x0 0x40>;
 			sound-name-prefix = "TDMIN_A";
 			resets = <&clkc_audio AUD_RESET_TDMIN_A>;
@@ -211,8 +210,7 @@ tdmin_a: audio-controller@300 {
 		};
 
 		tdmin_b: audio-controller@340 {
-			compatible = "amlogic,g12a-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,g12a-tdmin";
 			reg = <0x0 0x340 0x0 0x40>;
 			sound-name-prefix = "TDMIN_B";
 			resets = <&clkc_audio AUD_RESET_TDMIN_B>;
@@ -227,8 +225,7 @@ tdmin_b: audio-controller@340 {
 		};
 
 		tdmin_c: audio-controller@380 {
-			compatible = "amlogic,g12a-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,g12a-tdmin";
 			reg = <0x0 0x380 0x0 0x40>;
 			sound-name-prefix = "TDMIN_C";
 			resets = <&clkc_audio AUD_RESET_TDMIN_C>;
@@ -243,8 +240,7 @@ tdmin_c: audio-controller@380 {
 		};
 
 		tdmin_lb: audio-controller@3c0 {
-			compatible = "amlogic,g12a-tdmin",
-				     "amlogic,axg-tdmin";
+			compatible = "amlogic,g12a-tdmin";
 			reg = <0x0 0x3c0 0x0 0x40>;
 			sound-name-prefix = "TDMIN_LB";
 			resets = <&clkc_audio AUD_RESET_TDMIN_LB>;
-- 
2.41.0

