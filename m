Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 328BB9D79A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 22:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731097AbfHZUpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 16:45:01 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55789 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730804AbfHZUpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 16:45:00 -0400
Received: by mail-wm1-f68.google.com with SMTP id f72so785451wmf.5
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 13:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EeoSOO9P8rB2c6o2qSam9CM8ucP9QSVXMBjzLutJqVA=;
        b=eNvJTE4RS20+765BWxr4qe19suSF23z2UcHRM3AOrys6MDLHN7seyrjTkBXKualyDL
         H4H+5KMRmxeb55kiRpo3D3K0OiWg3SDSjn18KIQM+qfWDAp7wy0uj4mNxbI/e5b/yRsw
         a67FEb7F11WCDa2Z45OSKrK6/KXYUDWuRi89/1FNCNNT1lpgYmLedf+iqNuHe0iCpRki
         Dy2wDRxRpAaX//+99l5cHV9hXbHxB+ObDivOuFF20d5li47VVi1/Ioup+ZLLWgfZvi4d
         XCpnpvhFWSh8PlP418NyLf3wfdgaWNR/PD+8Q926I5s0OgB9c8REYkvA0AXDAwWc/0wB
         FLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EeoSOO9P8rB2c6o2qSam9CM8ucP9QSVXMBjzLutJqVA=;
        b=B+SPHLFOoiP4Zf2ML10s172ohm5Nd64xvyyegBLUhvEQ82rPv5yctA3jcaMdtVM1hN
         F3RkavcDofzdsoGP203wVMRYyEhAzQC5Mafudyg841oIAQoLrW0+QFMKQiuCvxTgTZNg
         IGu66l1DWpyZZeSXRfMpzFE5M57VDXAUgweBCHC2p5E00zeRuO7USLDMpjdlmiPCOjo/
         rLpy6VxSkjKv0h/cSv57vmlQ15yQUm0vTnlyrtjQERUsRcXADJo+yF2Ooe8HtJskkfAM
         rjFiVYU0tsjaF5iPL0o6362zGM8KJYMTFz6fOoBivrWX4ZgtlXXVMATkrvXI0rO3mJTA
         tu0g==
X-Gm-Message-State: APjAAAUEhUu2paA8qz70iCEUO3bn0TM1x74QhTht0g5HzUV0px3rsqf1
        L3/wdjrTRl0zgFn2StSL8tWUYA==
X-Google-Smtp-Source: APXvYqzCaQcqfRjUVEK6f/KlqGWwQzrm1CEta8su/KPZxHXkcmAMWTMFnEyazerSjVJpd+RLtVBDFg==
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr22665714wmf.160.1566852297896;
        Mon, 26 Aug 2019 13:44:57 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
        by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 13:44:57 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     tglx@linutronix.de
Cc:     linux-kernel@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX
        / MXC ARM ARCHITECTURE)
Subject: [PATCH 08/20] arm64: dts: imx8mm: Add system counter node
Date:   Mon, 26 Aug 2019 22:43:55 +0200
Message-Id: <20190826204407.17759-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MM system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a7412755a..89ef22a8f81e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -510,6 +510,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_24m>;
+				clock-names = "per";
+			};
 		};
 
 		aips3: bus@30800000 {
-- 
2.17.1

