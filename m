Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21D8934C35C
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 07:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhC2Fzd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 01:55:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbhC2FzY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 01:55:24 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2C75C061574
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 22:55:23 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id n138so16651880lfa.3
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 22:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JTk32VaDefYbxaqVlwqJYPnfZzNQt7Nf1RM5CWBAUWM=;
        b=M5k8y74QJ7u6PXSztFgkPOK8PUu2YZWa3CqDgwG5eMLdDT31E2mJky4mfH1WJST1hv
         vIR+bhHkNbI351Qj/p6nA5NRRd26Ew3t+C74K8diSDpnTtO0xLmZyKKQKiJ9ep7bqI8f
         mIi5vqdH8e03M5EXwiAbBWXuEANsH8nm0jjlA0qHd4JorAkq2sPvZpi37QAO0fwUNYqs
         zxug61GXFxjfCWZ1EZKvdwkNJ2RB+QIYNVpWBYYo3/P7Q1Y86y4ujjmqU2ewrfKMviNT
         T3vbo3pgTRasZf9CCmN8U8bNf2AsyjdIMgQkX7V/52UCl24KGrVkG0zM4PKfYtNnxRyS
         0Z1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JTk32VaDefYbxaqVlwqJYPnfZzNQt7Nf1RM5CWBAUWM=;
        b=D/xB1voaG3s/wgqAtcBgAJGRQqfilGlntmk4blL3BOfbPHrnn3GSdk3OMkHdT71rqJ
         zDuuC6COqyrZEgkJsCmGIqQJDn829qKrZ2aEUSRnv1n/EE1rCtwCc2FGzQwcxrdQKyOl
         YhyRPE1TSOOL6+b9+GRk/SDgjBhdsvp9v5OPwIdEq91zQfs5pd84R2iUwlIig18q3B1v
         Ih4JYSinbGdP7mi0Jue76y9WYqigTlklWukaU+Y+CJeuB+2NP0W91pFTnOz4zfiruJVc
         PBncL5UEKsMf6+d42jDBRwpCvhiq6QA2E9P5FbY9MwEm+I4GryRDVPokxZA8FvWgIOyH
         Vm6g==
X-Gm-Message-State: AOAM531Z30LQGKVCJ7pQE7jmVk9GejYI8XDqvOywDwbx9/sKtojVbiL/
        ChCmTryr+iFz2rSHppXjB+g=
X-Google-Smtp-Source: ABdhPJxJklqSSVV9mc8JAFr4Qvkz+fYAtF2HS61xRpMR9L5OXjIVKVDUngqzJemR1ulDF1wIxkskww==
X-Received: by 2002:ac2:5f19:: with SMTP id 25mr15885920lfq.328.1616997322344;
        Sun, 28 Mar 2021 22:55:22 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n11sm2303257ljg.7.2021.03.28.22.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 22:55:21 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH next] ARM: dts: BCM5301X: Fix Linksys EA9500 partitions
Date:   Mon, 29 Mar 2021 07:54:30 +0200
Message-Id: <20210329055430.7516-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Partitions are basically fixed indeed but firmware ones don't have
hardcoded function ("firmware" vs "failsafe"). Actual function depends
on bootloader configuration. Use a proper binding for that.

While at it fix numbers formatting to avoid:
arch/arm/boot/dts/bcm47094-linksys-panamera.dt.yaml: partitions: 'partition@1F00000' does not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 1dc0cb0fae22..8b77efd2224e 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -279,7 +279,7 @@ &usb3_phy {
 
 &nandcs {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "linksys,ns-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -300,20 +300,18 @@ partition@180000{
 		};
 
 		partition@200000 {
-			label = "firmware";
-			reg = <0x0200000 0x01D00000>;
-			compatible = "brcm,trx";
+			reg = <0x0200000 0x01d00000>;
+			compatible = "linksys,ns-firmware", "brcm,trx";
 		};
 
-		partition@1F00000 {
-			label = "failsafe";
-			reg = <0x01F00000 0x01D00000>;
-			read-only;
+		partition@1f00000 {
+			reg = <0x01f00000 0x01d00000>;
+			compatible = "linksys,ns-firmware", "brcm,trx";
 		};
 
 		partition@5200000 {
 			label = "system";
-			reg = <0x05200000 0x02E00000>;
+			reg = <0x05200000 0x02e00000>;
 		};
 	};
 };
-- 
2.26.2

