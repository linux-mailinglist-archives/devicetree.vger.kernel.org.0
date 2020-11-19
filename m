Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5711E2B8C2F
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:23:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgKSHVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725991AbgKSHVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:21:01 -0500
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C80C0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:01 -0800 (PST)
Received: by mail-pg1-x544.google.com with SMTP id q28so3437405pgk.1
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FGPEBBbcGW+FoZOvPYGmJSOpkDrbYLmjddtffLEv2ns=;
        b=eJ+FTkFda1aoejGJfzOEH9m8fODaAlKp3dykvQyI9FtOEV4E2IZtggwq/7Kv85gMNM
         Q5G1zFahTKWWJQjarmxWZh6OtdRqSeCMherim+cOQZgx391Ki0tBs0xvbdwrrdLLXbwh
         QT2kfeSDjZchoMwqE1iYUx1P85l/oOju5YQlc8niG2TV4KUsBIkMYAe7Expwc+hmjnfE
         Om6ehxyJXHtVtMI8JTub4xd7FGr9aC2+0eaYPfxYCsIDDSrQW7rMkdFKvqZhgMc1JEds
         VvQs2XFjzjLqrhk3+KUb3rIq7M1W4uh+7NUy4P0TqChCPFnviI2rGYZ6lLU6gQrlsx6Z
         RSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=FGPEBBbcGW+FoZOvPYGmJSOpkDrbYLmjddtffLEv2ns=;
        b=RbNScVrbAzV90piShM3wqVNa0HIfxYM87iN8/9AAvITrO/o/P5TJ/3E3segnmTwHSz
         LOJodnbvaOYANiBlN7KInzvJCxdNI7LJQX9VT8YnFiQdhpLabfU3KsxYkUdnslpCKjcF
         OxzO28OiF6Xh6nOJP9OrkNyQHXpbwtx0DZHcubmVh85Ursq8DopSKHZFGltGkUhed+aP
         dFMrkNE9IyGA4dqGscp5FGaKd1WYeDbD4vcMXJHQ8jITvGAGcroNxt6REOyzu/i8AtvP
         lFzqCfe+EDk4EOpsSL56VOZno757JtWQk7phjuCho+Nvj0GfmW53DT3F7Ya0dCj9QEU3
         RuHw==
X-Gm-Message-State: AOAM532U11Gmf4KcV4xbnYb9wftMREk/OJSGzq+ixMI4tiNvCT1oEW60
        jcbb3NoxB1nJtyGMuPWIWeo=
X-Google-Smtp-Source: ABdhPJxC5WbrmdDAO3g4kooPuTqMLxD8rRZJeyq5iO+BOMZdyXI8rA+qu8Q+4Dmi5qHSS7chH/wnjg==
X-Received: by 2002:a17:90b:344c:: with SMTP id lj12mr1454423pjb.115.1605770460579;
        Wed, 18 Nov 2020 23:21:00 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.19])
        by smtp.gmail.com with ESMTPSA id s145sm28067565pfs.187.2020.11.18.23.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:20:59 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>
Cc:     Lancelot Kao <lancelot.kao@fii-usa.com>,
        Fran Hsu <Fran.Hsu@quantatw.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] ARM: dts: nuvoton: Add Nuvoton NPCM730 device tree
Date:   Thu, 19 Nov 2020 17:50:34 +1030
Message-Id: <20201119072038.123046-2-joel@jms.id.au>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201119072038.123046-1-joel@jms.id.au>
References: <20201119072038.123046-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tomer Maimon <tmaimon77@gmail.com>

The Nuvoton NPCN730 SoC is a part of the Nuvoton NPCM7xx SoCs family.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/nuvoton-npcm730.dtsi | 44 ++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730.dtsi

diff --git a/arch/arm/boot/dts/nuvoton-npcm730.dtsi b/arch/arm/boot/dts/nuvoton-npcm730.dtsi
new file mode 100644
index 000000000000..86ec12ec2b50
--- /dev/null
+++ b/arch/arm/boot/dts/nuvoton-npcm730.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2020 Nuvoton Technology
+
+#include "nuvoton-common-npcm7xx.dtsi"
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	interrupt-parent = <&gic>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		enable-method = "nuvoton,npcm750-smp";
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			clocks = <&clk NPCM7XX_CLK_CPU>;
+			clock-names = "clk_cpu";
+			reg = <0>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			clocks = <&clk NPCM7XX_CLK_CPU>;
+			clock-names = "clk_cpu";
+			reg = <1>;
+			next-level-cache = <&l2>;
+		};
+	};
+
+	soc {
+		timer@3fe600 {
+			compatible = "arm,cortex-a9-twd-timer";
+			reg = <0x3fe600 0x20>;
+			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
+						  IRQ_TYPE_LEVEL_HIGH)>;
+			clocks = <&clk NPCM7XX_CLK_AHB>;
+		};
+	};
+};
-- 
2.29.2

