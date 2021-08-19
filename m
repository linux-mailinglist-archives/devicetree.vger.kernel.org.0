Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBD953F1CEF
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239919AbhHSPht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238643AbhHSPhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 11:37:48 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D2BC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:37:11 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id x7so12199442ljn.10
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w3HuADI3+Adcs6DeSG8g1htzk8Lsgx0bYC8xQu6kJJU=;
        b=M1Q6m1VCUAYvWfdFk9DEmM6kAEc+Ycf0l3ghNTZZhgyyxMf1ZvvZgeAK3p4ncQafm1
         EyQLHiz634mq0Nuql6AHLVw61SnrGAonTI89/8Kw0/PME2we1kF4vYv51zmkZJ2r1MJV
         ZItStD9iT/jmg5WNlqZJzhmQyB5t+TBys5Mr4BYdCOStikwXcW4hNEbwMQttl/cZKSZR
         KcKM52J4trpwJ6OnYq0s7B7LOT2XJ44dG11aGUkrHVVDuqPiEFVrngDZlEFly/BQGv7r
         6BxP9nFrA4cpjS9l80NGC9Fq7mxAVTg33NEuKfSfDT/Mx/V7sIOl46Zr4SaPIsxVmRkA
         IrjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w3HuADI3+Adcs6DeSG8g1htzk8Lsgx0bYC8xQu6kJJU=;
        b=St3ZtBEIMAqldyMuT9j646hF1yLIyiPGkhvfajh2RbaZLmrKc2uR2EqQDQGMa1pI+v
         c1SOBDv7ClWM2stqEdgXVEOPfRmejOt8l3l8TZ3E095OowqXd01J16mQYUzbqxIFMwMU
         9pdCxUm77AXdrFZeNzL0mc+9BkUXoJ9W51qyhp4TMBBx43F2XXwEi8JZk/7+fD+RfIrv
         eADGEnyJVMdDAEDmi+H0XtRt7NYAY8Zj1y0wQ8LhEcCsynk1hnWz1R4hi40ywbnglxCT
         mvbGPCyIaVVVRpRjhQuTN7Ea+Ev0+oYWdwzXPyFKwSARGun5UxPLh0qyPGj9GAQOow8e
         jzAQ==
X-Gm-Message-State: AOAM530Xr2e4MW3Hfk0a4O7EXkrfQ3j6CfEEUiZPrzY4c+xvz5EgDy4E
        sY9nPyb4aEHUFX4W0h02iDMB46HwsW4RaQ==
X-Google-Smtp-Source: ABdhPJyCk2LDhSgnZ55+IqwMkK244sojuQvk9H0S99IKcMCa6u7ikYXy2tCRKK6ty2MH/XcWw8Qe8A==
X-Received: by 2002:a2e:9ec8:: with SMTP id h8mr12539127ljk.454.1629387430352;
        Thu, 19 Aug 2021 08:37:10 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t12sm338855lfg.151.2021.08.19.08.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:37:10 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: Fix UART clock name
Date:   Thu, 19 Aug 2021 17:37:02 +0200
Message-Id: <20210819153702.24394-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

According to the binding the correct clock name is "refclk".

Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 87076770f4bc..984c737fa627 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -292,7 +292,7 @@ uart0: serial@640 {
 			reg = <0x640 0x18>;
 			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&periph_clk>;
-			clock-names = "periph";
+			clock-names = "refclk";
 			status = "okay";
 		};
 
-- 
2.26.2

