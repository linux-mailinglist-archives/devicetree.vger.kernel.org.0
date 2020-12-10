Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B8C72D6423
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 18:55:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392441AbgLJRzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 12:55:13 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:46858 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392350AbgLJRxV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 12:53:21 -0500
Received: by mail-oi1-f193.google.com with SMTP id k2so6626331oic.13
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 09:53:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mJEia+JrAhuk4kvUrUc407ZoNOhv0+KdatpOZ/j17ug=;
        b=rcC5ovaVNgPG/VxX6fD3UB14jytxOBx4uKqbzfILmXQQ6918tXlj9FVZCNmAShkRtu
         OK47k3/e6J/w9LoJQtpBbxLavPBzWgF1Ug93dIT4yhLxV1ptfkLGf5pAZVYKBLLJtrSU
         JLCk9/bEhcG/XM5MosQcJo8R1y6Fdia73E4x18Wv6ElUwRkYIfNWJZqvYJ9Y466qis+2
         kurfIZD/KtVFFzC4FElsK4eGkPYNmt1xDa4Mu10YGHWwRrXHUyVFWg7BeZs+tKBrZigw
         9Q+sV2IeT8uuTku/ryP9+GI2ZteTzOBOE/qnd6CUkJ0bwtFA3NCOsX3Jl2sopkrXI5Hb
         kCDQ==
X-Gm-Message-State: AOAM533bkuOnDDxUMo2sfnkAKQy2AP5+mL3sRkIotaCNS/pfPWnHHDUC
        DYDhBJ/jOOtgTUU0cKnGgbhS9ueFjw==
X-Google-Smtp-Source: ABdhPJxWbe7l6Dj2tw/ojlCKP62wXVvjpBXIzAVZK8R2LzFSH7zGajRIA+b3BwJsy/Z3Uv2TWhqYYQ==
X-Received: by 2002:aca:3257:: with SMTP id y84mr6220825oiy.132.1607622760815;
        Thu, 10 Dec 2020 09:52:40 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id w40sm724398ooi.41.2020.12.10.09.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 09:52:39 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
        Sylvain Lemieux <slemieux.tyco@gmail.com>
Subject: [PATCH] ARM: dts: lpc32xx: Remove unused and undocumented 'pnx,timeout'
Date:   Thu, 10 Dec 2020 11:52:38 -0600
Message-Id: <20201210175238.2721550-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'pnx,timeout' is unused, undocumented and 'pnx' is not a vendor prefix,
so let's remove it.

Cc: Vladimir Zapolskiy <vz@mleia.com>
Cc: Sylvain Lemieux <slemieux.tyco@gmail.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/lpc32xx.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index 7b7ec7b1217b..3a5cfb0ddb20 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -123,7 +123,6 @@ i2cusb: i2c@300 {
 				clocks = <&usbclk LPC32XX_USB_CLK_I2C>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pnx,timeout = <0x64>;
 			};
 
 			usbclk: clock-controller@f00 {
@@ -286,7 +285,6 @@ i2c1: i2c@400a0000 {
 				interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pnx,timeout = <0x64>;
 				clocks = <&clk LPC32XX_CLK_I2C1>;
 			};
 
@@ -297,7 +295,6 @@ i2c2: i2c@400a8000 {
 				interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pnx,timeout = <0x64>;
 				clocks = <&clk LPC32XX_CLK_I2C2>;
 			};
 
-- 
2.25.1

