Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B7B651CA57
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 16:27:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726286AbfENO1l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 10:27:41 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39551 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726272AbfENO07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 10:26:59 -0400
Received: by mail-wm1-f65.google.com with SMTP id n25so3022729wmk.4
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 07:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lVjP/TUvsFtzE93nQgdFOmYpEZuIaIcrKuBduhrv6Ws=;
        b=K7GcW9FGsMDGxGWbxMWdDHlnWThhYXf57bdn121CmkzrQDob5RNGybirJGZLfAsdCu
         T8QutaUYs3/d0X26GcQWtcCkl1fVXERlWhF3ZLTvMnk8DURyMRhuf64vBo6889GyysH8
         yVsCi/pIm3xMznYNNo2Jk9Cb9XseuEFj4quZrXBJIycHUXbI0/qEkKYDK4EEpPSnz9Pw
         LTQ4YMCI9XNNND0yoVVQSmZcX0WUJCiY0Tcb2muUXHAJF3/sxkz+XD/2z9vizen1kHlh
         c6PsAbjN3X4sXxrOcG2WSmI4bo8g8RiYwfLapqwu9UOp1rp4plPyfddQHAZN+0CgRsJQ
         EWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lVjP/TUvsFtzE93nQgdFOmYpEZuIaIcrKuBduhrv6Ws=;
        b=CSKtp6rYwcnAzvwzzUAcJ3tH0l6NQBMAk6aGnrtO88OsZdxeas2tYGqM2R3zLHkslk
         s1Dh90fDgZcyh9XYyMqjRtJOoVMD8nKBkSlZs21AHMJEl4MfUV/c/diqBgfn/Vnh87hS
         EeCJ8aj5w5lq/5QQRAzT9ELGEoFlyY3Fao+KgpKX0NfUg4oEOpsrWVxEaRsoYJHZD2Yt
         bNVNntReq1lcnG+1P+M67TVZOWg3tWHZeMehp/eDKzgHdBTi6FejGpT8B9xXBRHiw1rD
         DiyQ4NLsHVFxsHe6fbtQs830Z9O/ovakfqVebFiCIeQaEl9F6UI9w5BvgABRWHLLpaIy
         bC9Q==
X-Gm-Message-State: APjAAAVH0OtZKJZxOuTrogYT++ny7FqT4PluvokQSklDXyS87XeXgc9C
        DmEu6ZbO7r2MRUYXnVIRL/dLZg==
X-Google-Smtp-Source: APXvYqxzRoLfq1Pg+NWyMjtpd/8d6g1yBno1wegJJegosDrCNpzpZ9uiC2M+yIMJE5sQnvO/xvylYQ==
X-Received: by 2002:a1c:c016:: with SMTP id q22mr14286292wmf.6.1557844017646;
        Tue, 14 May 2019 07:26:57 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h15sm12343642wru.52.2019.05.14.07.26.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 07:26:56 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] arm64: dts: meson: g12a: add audio memory arbitrer
Date:   Tue, 14 May 2019 16:26:43 +0200
Message-Id: <20190514142649.1127-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514142649.1127-1-jbrunet@baylibre.com>
References: <20190514142649.1127-1-jbrunet@baylibre.com>
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

