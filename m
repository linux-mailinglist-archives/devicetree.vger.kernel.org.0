Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 582C31C7A0
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 13:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726078AbfENLP6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 07:15:58 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:32956 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbfENLPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 07:15:20 -0400
Received: by mail-wr1-f66.google.com with SMTP id d9so10377540wrx.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 04:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lVjP/TUvsFtzE93nQgdFOmYpEZuIaIcrKuBduhrv6Ws=;
        b=WKatm+sOPG1/kSl6LexRnWNL99gjeGfBJ76mtBbp1iMuLa2VddhgKTLfIMH1TNDvGq
         tD/hbVL7xH5SwQol7VdIPI7iwA1007ZBsiY/XdZnmuvuehqpdbKTbOjWY8jvcq0CNG9X
         mUOci+55qY9TgByvYssKpcU3mowz8b8E+2bzNJPibyK+Pe8QlmyiRRF28xG1nI301FY6
         2XmejetiKTOvEA46O+qzcj64RLHNFLf/vjO1B6shg8Cls9ndy0IOm+AwIUOhhdfanMgk
         8579MpGRN+a1Qn5zoOvU9V+TdlmOrsI3JHufeQAGRkk7+RQZ97aPaNRN6HvbGWfY4b7R
         /uKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lVjP/TUvsFtzE93nQgdFOmYpEZuIaIcrKuBduhrv6Ws=;
        b=rP43HPbQPqApDNzSMLpPEO+rRUToxVq+J5JVjrscq9uFRNuYhd/MBckSoco/Mp68zP
         /qX9HzWfhr8WGIBd+WqYXZhDF6lRyT1wmvbBNLIEZ77x2Ql9a2A5fxlf+BWX/DdGABHN
         VWmuKqtFROyvrPouXcH7tXvrn7GAd9D6KxEwCeaA90yVfCP9glkuiUkWSnFGmNZdXOmQ
         8XVRPjDSNj2nUOIxcQ2HRV+mTwipOTmAbPqfXtKNdvlBVZ+g2IkPy+xDPTqNFq/KkjYp
         ImkcWsxdiUSmMfHZM7pab380oSGBwbdzAsQU/gGvqrkj8fahctNTgwI/22/4QsFVIBBU
         S2nA==
X-Gm-Message-State: APjAAAXXpCmGNYdZh2BG7sAIhzgIeQKh2eBFTQgJkTfMUg2RnN6qoBm5
        mWY2qMcAdwIbfQpM4Lm7ERYpMQ==
X-Google-Smtp-Source: APXvYqyqna52YinZn/tT4v9l7mDEjlsdOr3gXbwPKQBAVmiU1n78m74TZTTB2yk7caHkNIm2PA8Mgw==
X-Received: by 2002:a5d:4e46:: with SMTP id r6mr20492113wrt.290.1557832519326;
        Tue, 14 May 2019 04:15:19 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id c130sm7289922wmf.47.2019.05.14.04.15.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 04:15:18 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] arm64: dts: meson: g12a: add audio memory arbitrer
Date:   Tue, 14 May 2019 13:15:04 +0200
Message-Id: <20190514111510.23299-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514111510.23299-1-jbrunet@baylibre.com>
References: <20190514111510.23299-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the audio DDR memory arbitrer of the g12a SoC family.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 09aa024d9f0e..2d5bccad4035 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/clock/axg-audio-clkc.h>
 #include <dt-bindings/clock/g12a-clkc.h>
 #include <dt-bindings/clock/g12a-aoclkc.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -707,6 +708,14 @@
 
 					resets = <&reset RESET_AUDIO>;
 				};
+
+				arb: reset-controller@280 {
+					status = "disabled";
+					compatible = "amlogic,meson-axg-audio-arb";
+					reg = <0x0 0x280 0x0 0x4>;
+					#reset-cells = <1>;
+					clocks = <&clkc_audio AUD_CLKID_DDR_ARB>;
+				};
 			};
 
 			usb3_pcie_phy: phy@46000 {
-- 
2.20.1

