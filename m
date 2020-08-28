Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4CEA255E19
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 17:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728165AbgH1PpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 11:45:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726321AbgH1Pou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 11:44:50 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01D8FC06121B
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 08:44:49 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id o21so1337095wmc.0
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 08:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qhATtI2Zvpm0REij3LLNrIfTJ+M9IJenHThWHoBmGiI=;
        b=jZlxt7KTrCVhDvXreRYPXF1OaonK1xNxowFd4BZXZLk8gKF/Rn6OWLCASLtc3w2voo
         bLdKPEkFuWD15c1SxL8cDCyzdpPoBPwRkSch3AEsalSkHub1CJ8/XKGq/N1jVYsqhlAg
         vq4w5fX8sCDVW3OkN4y+5grd42JBAhd9jpaqtA/EJB/8eKFNW/cwAxF2TvavVSnohzu2
         S92LyqNN6sWps7hFT9ZaYLBANjOi0JzLZGJNwvy7+2tRMD1N8MJy+De6faPAtRCCcRfH
         GmHY8nv1EWmFSp9QnzVXfZSAbvlUQj5d5RCP0SfMXwSs/tuaJS5cXbqEQGtg1av+yg9g
         L/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qhATtI2Zvpm0REij3LLNrIfTJ+M9IJenHThWHoBmGiI=;
        b=Xbdl7iAXMMELo2Mzc81JGQDynkYF5e78uQPxKm1x5JuA0kAsPoXz5w2IMpGcW2OD3n
         mjbjqEnTbQi2EJ+y/Jm47OfoSbWbxwDvt2x3Usuh5rGdm5Erl4rV3YjKL4h+7elxlECq
         a2QvyCbpqb4ENq0np+VZOfMvi4OTkAUMLNZALSdnmMJ4gia//txUCZGgvfCcjsgGxiGl
         Z+FWtSTEUy3oHUP6ZmpeOEIJLTKwEXtCiNK7Sx5QZ1TwBlif48UAP0m7PSakV6MfbfCv
         ldvk/XerNsnEP/O/rHEUdJ7BoemgXDs6NpagpAZghBfpGJvyQoHwPDfgtTFjlTq4eGfC
         3HdA==
X-Gm-Message-State: AOAM531u+llZuZ0AmXnil1ls321evxDRXlRh/rBgDDNXMz+G5EjM1Z5k
        ZgSMHfhWHXAgVxMhM3o5npln1g==
X-Google-Smtp-Source: ABdhPJxy2BkyCiF+ZCqVarqOqzbgJgq5QLL1gC452i5Iiak7H6GWWdIiVdBq4rcxr6lqvt42K+4agg==
X-Received: by 2002:a7b:c00d:: with SMTP id c13mr2167709wmb.24.1598629488091;
        Fri, 28 Aug 2020 08:44:48 -0700 (PDT)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id 124sm3012467wmd.31.2020.08.28.08.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 08:44:47 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: vim3l: remove sound card definition
Date:   Fri, 28 Aug 2020 17:44:35 +0200
Message-Id: <20200828154435.419561-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The sound card definition should have been removed when the common
definition was added to the vim3 dtsi but this slips through.
Remove it now.

Fixes: 7c9c06246cea ("arm64: dts: meson: vim3: make sound card common to all variants")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 86 -------------------
 1 file changed, 86 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index 0da56c051a0e..4b517ca72059 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -32,69 +32,6 @@ vddcpu: regulator-vddcpu {
 		regulator-boot-on;
 		regulator-always-on;
 	};
-
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "SM1-KHADAS-VIM3L";
-		audio-aux-devs = <&tdmout_a>;
-		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
-				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
-				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
-				"TDM_A Playback", "TDMOUT_A OUT";
-
-		assigned-clocks = <&clkc CLKID_MPLL2>,
-				  <&clkc CLKID_MPLL0>,
-				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
-		assigned-clock-rates = <294912000>,
-				       <270950400>,
-				       <393216000>;
-		status = "okay";
-
-		dai-link-0 {
-			sound-dai = <&frddr_a>;
-		};
-
-		dai-link-1 {
-			sound-dai = <&frddr_b>;
-		};
-
-		dai-link-2 {
-			sound-dai = <&frddr_c>;
-		};
-
-		/* 8ch hdmi interface */
-		dai-link-3 {
-			sound-dai = <&tdmif_a>;
-			dai-format = "i2s";
-			dai-tdm-slot-tx-mask-0 = <1 1>;
-			dai-tdm-slot-tx-mask-1 = <1 1>;
-			dai-tdm-slot-tx-mask-2 = <1 1>;
-			dai-tdm-slot-tx-mask-3 = <1 1>;
-			mclk-fs = <256>;
-
-			codec {
-				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_A>;
-			};
-		};
-
-		/* hdmi glue */
-		dai-link-4 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-			codec {
-				sound-dai = <&hdmi_tx>;
-			};
-		};
-	};
-};
-
-&arb {
-	status = "okay";
-};
-
-&clkc_audio {
-	status = "okay";
 };
 
 &cpu0 {
@@ -125,18 +62,6 @@ &cpu3 {
 	clock-latency = <50000>;
 };
 
-&frddr_a {
-	status = "okay";
-};
-
-&frddr_b {
-	status = "okay";
-};
-
-&frddr_c {
-	status = "okay";
-};
-
 &pwm_AO_cd {
 	pinctrl-0 = <&pwm_ao_d_e_pins>;
 	pinctrl-names = "default";
@@ -174,14 +99,3 @@ &usb {
 };
  */
 
-&tdmif_a {
-	status = "okay";
-};
-
-&tdmout_a {
-	status = "okay";
-};
-
-&tohdmitx {
-	status = "okay";
-};
-- 
2.25.4

