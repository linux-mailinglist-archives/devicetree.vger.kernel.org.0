Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 575C9469246
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 10:23:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240555AbhLFJ0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 04:26:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240553AbhLFJ0Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 04:26:24 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D66BBC0613F8
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 01:22:55 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id l16so20973552wrp.11
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 01:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZHunadnw/3GpbVgjO5A4T67/ob/hV/yjNLsQHf4UAwU=;
        b=cGj8/bQL76uljMZmFmnk+Wi9cJhauTv9+CfAuurs+4uKg7Rwdy8akLF+P5V3MqjeV9
         iDqiVBqQBrdzyWrI3SiSJAYgtXO4se0uyQXMT2RNm1rKAb8isBjf9QuNe3w1qXihgPyW
         XPUz098zyRvCFf2dVO4JoA6bkW6diEZUNZ3j83ooPZhcbt4GWB3wj9C8LoBGPaW8sFYA
         /VwvIJAE3cSVnfDF8PpVAJkHXVQDW7/+HN5//iT//n7590mniNt08OPup/Ug/4cx04ng
         2EdRL+TdcEdHMfWcJzQaNC252lQ1Rd+Q7I3Q6zUx/tS27PNuW6QTSl2d7ciH77lh5EAk
         uEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZHunadnw/3GpbVgjO5A4T67/ob/hV/yjNLsQHf4UAwU=;
        b=PNRJOvVj2ZJugu5T+sIzEJyY6AMs+gcTtpkywTo5cEUrI8uSirPMK+oo7TefOG0OJ6
         ZvENxA44OFHwEMQP1jARJjF4FREdzn0uhSlOB7uOatPE6oxYuuallubS6ElLA54ceUas
         S/JO+Uqsf4n2cbMtirLzt27IDPWeUYxf8O1XyEEwdbc4JfadJ67+UFQKGYTSOPndbiGH
         UtSrEg20cf+rZALAhqzFj7a/8q/WSdQnpeZoQMWYKBJr0xyw7+cwydoDNqRUZgLbonR8
         LHh9TuEMkAZ2/+WcSn9ynBpB0280b148WamYNKgq4U3aJjjUgybVRa3suWljwJI1rpdr
         q27Q==
X-Gm-Message-State: AOAM53169W7XpTM8pxP90noxUUeAXcbnyNm1XK+oNlf6nr1agBTRwA9K
        lbssqWXpgnGSrm2Fqiv8BbFmKw==
X-Google-Smtp-Source: ABdhPJycWcoVf3TQ/hHLw1/bp1d905C1aCcJAe21V3hdkg/l9WCRKMjjDzo+hkWVda4hjp7knIcXAA==
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr41584796wrs.270.1638782574542;
        Mon, 06 Dec 2021 01:22:54 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
        by smtp.gmail.com with ESMTPSA id b10sm10746365wrt.36.2021.12.06.01.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 01:22:54 -0800 (PST)
From:   Phil Elwell <phil@raspberrypi.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Linus Walleij <linus.walleij@linaro.org>,
        Phil Elwell <phil@raspberrypi.com>,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: gpio-ranges property is now required
Date:   Mon,  6 Dec 2021 09:22:37 +0000
Message-Id: <20211206092237.4105895-3-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206092237.4105895-1-phil@raspberrypi.com>
References: <20211206092237.4105895-1-phil@raspberrypi.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since [1], added in 5.7, the absence of a gpio-ranges property has
prevented GPIOs from being restored to inputs when released.
Add those properties for BCM283x and BCM2711 devices.

[1] commit 2ab73c6d8323 ("gpio: Support GPIO controllers without
    pin-ranges")

Fixes: 2ab73c6d8323 ("gpio: Support GPIO controllers without pin-ranges")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 ++
 arch/arm/boot/dts/bcm283x.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 9e01dbca4a011..dff18fc9a9065 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -582,6 +582,8 @@ &gpio {
 		     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
 		     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
 
+	gpio-ranges = <&gpio 0 0 58>;
+
 	gpclk0_gpio49: gpclk0_gpio49 {
 		pin-gpclk {
 			pins = "gpio49";
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index a3e06b6809476..c113661a6668f 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -126,6 +126,8 @@ gpio: gpio@7e200000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 
+			gpio-ranges = <&gpio 0 0 54>;
+
 			/* Defines common pin muxing groups
 			 *
 			 * While each pin can have its mux selected
-- 
2.25.1

