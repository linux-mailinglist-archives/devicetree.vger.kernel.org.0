Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA8D1720376
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:35:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234587AbjFBNfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233790AbjFBNfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:35:07 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E470DD3
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:35:05 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2af2d092d7aso29507001fa.2
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685712904; x=1688304904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+D+cT5bVMTBSVYrrRJIkBOBm/asBspOxF+5TUcjsWFM=;
        b=j56OsXTTt7If51WTkujtEaYRahoEBHGUgItifJp7cAK7n1Vhv6LpwvBfWaFKxVC9kX
         38pAR4/bFe7hw4fDwGASOKcjIhX0I1e3x+ppBvSVWlTVcsno87iFjlufXujkQktPInCr
         u9QYeCLooQlnyhIfRjvLs6oicYkCzVOOdnteDqSg8GoeXueZHCUqdw9peBx+mC3g/6Wn
         pujcIyHRKw9Qm8Y+D0rQvncq/PdUwJYfDTJJsvlMkYrRK2x6HTK5fkffn06pjxCNL1JK
         GzM7vXU43IM2O7JED/URBJDVMUDBddAdsQktxAHfWUFDYYHNk6zaKiLpQf07NEP7jbHZ
         6Kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685712904; x=1688304904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+D+cT5bVMTBSVYrrRJIkBOBm/asBspOxF+5TUcjsWFM=;
        b=e+GiCCtLPqs7wMGddQwYXP53kmKZW4tVt0fwbmlQNC2Vfq+mAdKd1zy04Cw+smjJ2C
         5j07Ki6m53m08NGxxIp+2a0th/30lns5rOWdIE3CdQq3eRYi1p13Qp/vgF4LV8z5tvD8
         UwgmSQr0I5NzcBrkfadWxakb8Imzio/GHk7/bH7q0Bh6SSnKL+e6Lq4idsjcZfNEsjLV
         L40CXDkhCJkj3lebMpmxYC+Jss9Q1+LAbNEBGAJSVBo8z8My3G030cmU2k+SOL90uYTa
         bDEH56KZyK4k/R1KH8HvTbOT86QAYL2H6BxZh0SArGJZheICpbuUcYgaElQgZRfY8vt1
         CykQ==
X-Gm-Message-State: AC+VfDxuI+dCR4Xf0FnP7MMtm5ahR4Di2Wuf2zAHfp9a+B2RfdammVdD
        KDZqPT7qfV/SOWPgTzL41XU=
X-Google-Smtp-Source: ACHHUZ7A/maTZbtk8SoUTF1/Oo7Jpgor/rmHqro1jSxhLYohgXuQTsFytR+y8ykRDe1RyHg/Am4itA==
X-Received: by 2002:a2e:8883:0:b0:2b1:a93a:4133 with SMTP id k3-20020a2e8883000000b002b1a93a4133mr1576474lji.47.1685712903844;
        Fri, 02 Jun 2023 06:35:03 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a4-20020a05651c010400b002a8bc9918d4sm225892ljb.97.2023.06.02.06.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 06:35:03 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] ARM: dts: BCM5301X: Drop invalid #usb-cells
Date:   Fri,  2 Jun 2023 15:34:54 +0200
Message-Id: <20230602133455.7441-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Such property simply doesn't exist (is not documented or used anywhere).

This fixes:
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: usb@21000: Unevaluated properties are not allowed ('#usb-cells' was unexpected)
        From schema: Documentation/devicetree/bindings/usb/generic-ehci.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: usb@22000: Unevaluated properties are not allowed ('#usb-cells' was unexpected)
        From schema: Documentation/devicetree/bindings/usb/generic-ohci.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: usb@23000: Unevaluated properties are not allowed ('#usb-cells' was unexpected)
        From schema: Documentation/devicetree/bindings/usb/generic-xhci.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm-ns.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 3f8220a7a54d..793891f1f260 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -192,8 +192,6 @@ usb2: usb2@21000 {
 			interrupt-parent = <&gic>;
 
 			ehci: usb@21000 {
-				#usb-cells = <0>;
-
 				compatible = "generic-ehci";
 				reg = <0x00021000 0x1000>;
 				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
@@ -214,8 +212,6 @@ ehci_port2: port@2 {
 			};
 
 			ohci: usb@22000 {
-				#usb-cells = <0>;
-
 				compatible = "generic-ohci";
 				reg = <0x00022000 0x1000>;
 				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
@@ -245,8 +241,6 @@ usb3: usb3@23000 {
 			interrupt-parent = <&gic>;
 
 			xhci: usb@23000 {
-				#usb-cells = <0>;
-
 				compatible = "generic-xhci";
 				reg = <0x00023000 0x1000>;
 				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.35.3

