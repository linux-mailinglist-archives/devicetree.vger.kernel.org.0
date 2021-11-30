Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C77A7463E03
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 19:49:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245593AbhK3SxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 13:53:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245600AbhK3Sw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 13:52:28 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D97EC06174A
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 10:49:09 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id h134-20020a25d08c000000b005f5cd3befbbso30665871ybg.10
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 10:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=KC1KslsAWcLKbueuly8tNpIr1XMybfLtjcHTyhp9kPA=;
        b=eoiEVlkLUz8iLCc3q+yUTxvA+3ZF7VsDhtl4WNZsBLzc6K46xzxSsjbsJD2C/tUHQu
         hn1szDmsYDQEtq4mVVsib7hSyrVVtFUHOJSMktoUe0M9QwqANtBjEzFHCYFOlQohZlb2
         5V1qSXN0RYsQe+2wNIcWm1OBS+pLNVRZUErpC1A+gDCf/ym+cIRx7gmDsg8Gt9X00Cmw
         S9tsr0LIM5s5DUGziknCita87jgmV0kvP4+Zuoe0ZB0PfsGX4cinsHwwz+9yuxPi8wB5
         Dm/KpffAoPLZyqeBhsP02HHxIQDeavUkd0f3aiCzPLLVcb4ifSEkagflgH4726bZx6v8
         9SdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=KC1KslsAWcLKbueuly8tNpIr1XMybfLtjcHTyhp9kPA=;
        b=kjaMMuMjlkEupCbdZ1SsB7WyiCCGZT+QKO2DaNUKSiyJQXGTcFojyV4ESxfUFniM/I
         fq0D98NJeB+nMofYzlt0DQtEuwdvaF+0PO8+4a0LAqFDuAxdl6cW0Lg63n4menscIyi0
         mLq4FuIcox1dHY88N4QNAeL86NIg1ZJnEZvGUX8uODhyHsesWmKnoYLopPvdzUyy2r68
         IEDaoOQIzJCfniIDK7yJrJ58E/lGrmSiHPrkpkNzaLHjnNc3kCcEBSCvFZZ/xLKcyPGx
         ZrcxfYUsl2ne0HR1l6067QtgiKFqPissT3Rh4+OhfFyqx0FMZ/T6f/w2bejLxs/szJU4
         4cQg==
X-Gm-Message-State: AOAM5313jy85z20+lMcnqawSfkJE859DDZj0eGN3OvdYfjL/sospu+z9
        RGNtOgk2Ldzz9p1isP275eY5Vew=
X-Google-Smtp-Source: ABdhPJywuox5pRKXk/NzXZXHKmmoDVKC5pZnFGHOmy8w2yLDI/QOrQVy8Knol8P4jpbS+i0jDk7kXL4=
X-Received: from osk.cam.corp.google.com ([2620:15c:93:a:bd6e:e7b3:bbdb:f3df])
 (user=osk job=sendgmr) by 2002:a25:9781:: with SMTP id i1mr1064086ybo.638.1638298148193;
 Tue, 30 Nov 2021 10:49:08 -0800 (PST)
Date:   Tue, 30 Nov 2021 13:48:55 -0500
Message-Id: <20211130184855.1779353-1-osk@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH] ARM: dts: aspeed: tyan-s7106: Add uart_routing and fix vuart config
From:   Oskar Senft <osk@google.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     aaelhaj@google.com, Oskar Senft <osk@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Configure the vuart in such a way that it does not inhibit the SuperIO's
UART from functioning correctly. This allows the same DTS to be used for
both configurations with SuperIO and VUART (depending on the BIOS
build). The decision on whether to actually enable VUART can then be
made at runtime.

This change also enables the new uart_routing driver for the SuperIO
case.

Signed-off-by: Oskar Senft <osk@google.com>
---
 arch/arm/boot/dts/aspeed-bmc-tyan-s7106.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-tyan-s7106.dts b/arch/arm/boot/dts/aspeed-bmc-tyan-s7106.dts
index 60ac6d3f03b5..aff27c1d4b06 100644
--- a/arch/arm/boot/dts/aspeed-bmc-tyan-s7106.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-tyan-s7106.dts
@@ -3,6 +3,7 @@
 
 #include "aspeed-g5.dtsi"
 #include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "Tyan S7106 BMC";
@@ -127,8 +128,23 @@ &uart5 {
 	status = "okay";
 };
 
+&uart_routing {
+	status = "okay";
+};
+
 &vuart {
 	status = "okay";
+
+	/* We enable the VUART here, but leave it in a state that does
+	 * not interfere with the SuperIO. The goal is to have both the
+	 * VUART and the SuperIO available and decide at runtime whether
+	 * the VUART should actually be used. For that reason, configure
+	 * an "invalid" IO address and an IRQ that is not used by the
+	 * BMC.
+	 */
+
+	aspeed,lpc-io-reg = <0xffff>;
+	aspeed,lpc-interrupts = <15 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 &lpc_ctrl {
-- 
2.34.0.rc2.393.gf8c9666880-goog

