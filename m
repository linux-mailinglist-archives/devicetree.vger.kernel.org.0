Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 609179D7A4
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 22:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731160AbfHZUpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 16:45:06 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36472 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731058AbfHZUpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 16:45:05 -0400
Received: by mail-wm1-f66.google.com with SMTP id g67so794728wme.1
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 13:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=46OI48aknCO8xnHiNKqbTqHhcC3QBVezddPBiW79IL8=;
        b=t4oVhmR+oEEVFvTBVetR2kz0/3Vk+qOebroB6rEXmXbS3C5c7DmvoLtkR/XNcYPLes
         zRljos8wGxhV5FMc917+mc3iMPQHHDfyYh755S+nYbyMGDbMYc2jJSUEdkwn7lLlu4lb
         aqfJlwnYyiBuMcwpF9BrlSQ6XbvFE+X6y1ffhp9fgHrtU0vif8r5YGwd/r9efZYKcL//
         GTgiIzAieaWGJTQMsho97OqfgtL0BArhkgD+YIpT3WxKEuuW3hKWD4PlFj5QsrM+8sl1
         BPCxWcg52FcmVNt5sU2eiav3lxk3sjSHs1tw3unGZRUXBEPfRD+jbX8TYcucYmvla/Wm
         G96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=46OI48aknCO8xnHiNKqbTqHhcC3QBVezddPBiW79IL8=;
        b=fOWl9HhxUQo83k5rmdNtxMZvIrFbZ3kWg0k8btiEIxDw/ScLHil6yvTpc0DPfdf5XD
         3Jy3R9+Hy0U+0Pf19Fdqvf4LVtQhuKrwiCFMR5ZkHxthKrWOhjQRbGsZgh/MS7LNiyzm
         gX3nhYGDG37HYMOY79o+udFkUvtMqpXuG8UZdpGNTU+QT3r21lLhQEqUwVIbv5I/ejbP
         WZRNis5NdC5uxKVFMOFvZoDcaOqlG/KnCMDtidukCsmVwgg7WEMPw9T1vGkAxvmzbKEo
         kuYZzg4cAV7/PFmYNorak6fDo81pr9OpRVcMnGvgQFpiVtJD4q/9LppOJlfBsRHdGljm
         3Qvw==
X-Gm-Message-State: APjAAAUke/WDPWxqBGjJQtRrxeU6QndNiYaf89lsNRMv0YZWbM38RJu5
        5Mjml+dJSzJ8wRKGLWGLbHmXrg==
X-Google-Smtp-Source: APXvYqy/MOnLdsZqPivoqO1dTZcmcuw9cOf0HcH7tX9csv0OGT8Z+QaquXD03St2y9wJ6nH2wxfRDg==
X-Received: by 2002:a7b:c244:: with SMTP id b4mr23459241wmj.125.1566852302984;
        Mon, 26 Aug 2019 13:45:02 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
        by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 13:45:02 -0700 (PDT)
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
        Lucas Stach <l.stach@pengutronix.de>,
        Abel Vesa <abel.vesa@nxp.com>,
        Carlo Caione <ccaione@baylibre.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        "Angus Ainslie (Purism)" <angus@akkea.ca>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX
        / MXC ARM ARCHITECTURE)
Subject: [PATCH 09/20] arm64: dts: imx8mq: Add system counter node
Date:   Mon, 26 Aug 2019 22:43:56 +0200
Message-Id: <20190826204407.17759-9-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MQ system counter node to enable timer-imx-sysctr
broadcast timer driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..b4529773af51 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -635,6 +635,14 @@
 				#pwm-cells = <2>;
 				status = "disabled";
 			};
+
+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x20000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&osc_25m>;
+				clock-names = "per";
+			};
 		};
 
 		bus@30800000 { /* AIPS3 */
-- 
2.17.1

