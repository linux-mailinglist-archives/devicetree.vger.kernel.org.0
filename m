Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B38FC36E736
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 10:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233264AbhD2Ino (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 04:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232455AbhD2Ino (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 04:43:44 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAFF0C06138B
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 01:42:57 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id w3so98707543ejc.4
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 01:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=caSZIsnAQyTh4yU5NXoNe4Iv3Mgw3V9GFqN8gWGL8Gw=;
        b=lxiug90+yt5JjRhNJkn7Iu2J4iI88r4aaS7h4CRaO3LLN5p9p1mhgw6U27vgIfln73
         kxyzxt1ng9yEDa1GHMN+DuTjxbzbHy7hv+bPbTdN/poU7r9wIK04f8CXHjSoRwGHumu2
         GTkfSQPEf8K/s7SLZIXsq5Mbqii18MkUsK4zoJ+F21qdFMHHmZc74ys7k9TKbTEcMX7+
         9r59AGgku7DqvMpZFbJlMN/0uAX5Rv7zKQpVVOn/J9BbZVOSiH5vgyprDrpj7zG/Hii+
         k3m87dS/rEJkjXYHlp5LdSTMGJ6y6LZDabJp9ZW/SCI0VTlYHiUIfimuW8uQBnunBUob
         6AFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=caSZIsnAQyTh4yU5NXoNe4Iv3Mgw3V9GFqN8gWGL8Gw=;
        b=tPO1ml1S6ZcXdK6olcNcntFs9Rep2uRDMMZgCyJQhXsJhY8kjtRO/3v60cjaE3Xdl/
         Y3r/aGU9Z63BJU3eObHbAMsw6k+rHciAcRsmDBlgpiLeHJx6IQKMN6cQAL6YSt7FDprY
         7iMSoOiosWZephhaHzcPtnQtyuy4VdEP60n50Z3nWFx9U6GsDycwtf9x0OUhk3Wv1dRt
         JTOjEJWWZq32ZSe7p+ClG5ziEjsVAAcBCbE6THEG5VWipLHd8eM5dxb6hJvyEPsecqaf
         LgvxKZWJ8y89riM+iAPmFIk2UttpP5X9Ej19GPlmO1YrqCSp4AiM1C7wYRqvJt5Ink9b
         lRQw==
X-Gm-Message-State: AOAM533fHn8U8mPn3IMLWkn10USk8NxEUbGpTo1sEhjS8kckX0eQoe3Z
        k0W83Z8lH5kiuHGycrgM6UFqkg==
X-Google-Smtp-Source: ABdhPJwiUHLs2mMBYuedWUxl21/X9b7CdLNPsi0Z9Z1kRvKBsSabtpssEPSDA/aYG4wYvc7dVRi1Jg==
X-Received: by 2002:a17:906:414d:: with SMTP id l13mr21127861ejk.527.1619685776575;
        Thu, 29 Apr 2021 01:42:56 -0700 (PDT)
Received: from localhost.localdomain (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id n17sm1758930eds.72.2021.04.29.01.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 01:42:56 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: vim3: enable hdmi audio loopback
Date:   Thu, 29 Apr 2021 10:42:53 +0200
Message-Id: <20210429084253.59692-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable audio capture frontends and a tdm decoder.
This makes it possible to loopback the audio played on the hdmi codec,
which is the only output interface at the moment.

Of course, one TODDR device would be enough to do that but since
the 3 FRDDRs are enabled on the playback side, let's do the same on the
capture side.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 41 +++++++++++++++++--
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 13 ++++++
 2 files changed, 50 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 66d67524b031..3cf4ecb6d52e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -171,11 +171,16 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,axg-sound-card";
 		model = "KHADAS-VIM3";
-		audio-aux-devs = <&tdmout_a>;
+		audio-aux-devs = <&tdmin_a>, <&tdmout_a>;
 		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
 				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
 				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
-				"TDM_A Playback", "TDMOUT_A OUT";
+				"TDM_A Playback", "TDMOUT_A OUT",
+				"TDMIN_A IN 0", "TDM_A Capture",
+				"TDMIN_A IN 3", "TDM_A Loopback",
+				"TODDR_A IN 0", "TDMIN_A OUT",
+				"TODDR_B IN 0", "TDMIN_A OUT",
+				"TODDR_C IN 0", "TDMIN_A OUT";
 
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
@@ -198,8 +203,20 @@ dai-link-2 {
 			sound-dai = <&frddr_c>;
 		};
 
-		/* 8ch hdmi interface */
 		dai-link-3 {
+			sound-dai = <&toddr_a>;
+		};
+
+		dai-link-4 {
+			sound-dai = <&toddr_b>;
+		};
+
+		dai-link-5 {
+			sound-dai = <&toddr_c>;
+		};
+
+		/* 8ch hdmi interface */
+		dai-link-6 {
 			sound-dai = <&tdmif_a>;
 			dai-format = "i2s";
 			dai-tdm-slot-tx-mask-0 = <1 1>;
@@ -214,7 +231,7 @@ codec {
 		};
 
 		/* hdmi glue */
-		dai-link-4 {
+		dai-link-7 {
 			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
 
 			codec {
@@ -454,10 +471,26 @@ &tdmif_a {
 	status = "okay";
 };
 
+&tdmin_a {
+	status = "okay";
+};
+
 &tdmout_a {
 	status = "okay";
 };
 
+&toddr_a {
+	status = "okay";
+};
+
+&toddr_b {
+	status = "okay";
+};
+
+&toddr_c {
+	status = "okay";
+};
+
 &tohdmitx {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index 06de0b1ce726..f2c098143594 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -32,6 +32,19 @@ vddcpu: regulator-vddcpu {
 		regulator-boot-on;
 		regulator-always-on;
 	};
+
+	sound {
+		model = "G12B-KHADAS-VIM3L";
+		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
+				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
+				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
+				"TDM_A Playback", "TDMOUT_A OUT",
+				"TDMIN_A IN 0", "TDM_A Capture",
+				"TDMIN_A IN 13", "TDM_A Loopback",
+				"TODDR_A IN 0", "TDMIN_A OUT",
+				"TODDR_B IN 0", "TDMIN_A OUT",
+				"TODDR_C IN 0", "TDMIN_A OUT";
+	};
 };
 
 &cpu0 {
-- 
2.31.1

