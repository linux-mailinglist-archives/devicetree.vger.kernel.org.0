Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A54F37BDAA
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 15:07:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbhELNIe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 09:08:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230472AbhELNIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 09:08:34 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE9B3C061574
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 06:07:24 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id p20so5518201ljj.8
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 06:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xh07fmaoN7e0zUlIRD7U0g0FRQMeGMM1Q4Gt7xNNohg=;
        b=jsJ4+CYEFd2XEfOWif9r+fGrNvCmzkp1o9k+cEc5Be/t6eTMbKxB1HWiOWRVVsrVqv
         o3zqjXKKwKorp/EGhiXiIv0t2ojf7+O4CTnEPQDNDSLFApBxZR0twv1YoVQBPaBkHk5w
         JBh09S8X1E5FOJ7UVMaM37HjiK3iy2iXI6TeS4nKknsTlPZFx0y7EUVIwRHvfSP98nmF
         L1/UStxVpMgKJRFA85yIt6vC4W8xLeW3Y/Ho4ZsWqSp3S6i9DcRn+IPXJ5ldVaUIdZ1Y
         iKkjztjnf1/vHp78a1yV9wsDLouQEpWNf7+23WddbxlhQs2kFahjJR3stKNiSEGSBol8
         VbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xh07fmaoN7e0zUlIRD7U0g0FRQMeGMM1Q4Gt7xNNohg=;
        b=uTx/G2ObHGXbShxxZSWhVIrDZE1dHfKCuaBHNdBcn1Kulugcz94CA+6Jl+tO2WYtfQ
         pR+mQAhQXoh+QCFdbMetbQUT6DjWE+tQBOX77gt9cjJ8CXbihC831q87y1KZdhhtLQI8
         pnMOPA8iOzblHQaxM5/VqkjI+8IofQu440i7xYfGKMxtBxp5RpV3RtKK6OsIA46mKY2a
         aCl6vc49iy+6wXjBDaM73HFDSfc4Upj3jIG9Qz+0OtyJDwyZlpNCBt8bQbnK9PfPbXx+
         hW8hza/sp5mh1J/8GFFpOtkIkFODZjYNTO5HOlRElu1SyXIJCmepR18h18mMmnJAWXmW
         T1gg==
X-Gm-Message-State: AOAM531Y6T4HtISKpNI6WvP4JebQlQwCPPNeQf7TKfAv2YoAtK/vsDok
        aXFPDmvy5b1n4TLOnhXCceE=
X-Google-Smtp-Source: ABdhPJyM6m8w51iPrvzkUt2vQ6i3eUABNd9fmoHJ1wcRriRu9YKG59orl7EyhUYJUvsPW1GYkbFGUw==
X-Received: by 2002:a2e:b6d1:: with SMTP id m17mr20051392ljo.149.1620824843490;
        Wed, 12 May 2021 06:07:23 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id r5sm2964305lfc.301.2021.05.12.06.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 06:07:23 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Fixup SPI binding
Date:   Wed, 12 May 2021 15:07:09 +0200
Message-Id: <20210512130709.3980-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

1. Reorder interrupts
2. Fix typo: s/spi_lr_overhead/spi_lr_overread/
3. Rename node: s/spi-nor@0/flash@0/

This fixes:
arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: spi@18029200: interrupt-names: 'oneOf' conditional failed, one must be fixed:
        ['spi_lr_fullness_reached', 'spi_lr_session_aborted', 'spi_lr_impatient', 'spi_lr_session_done', 'spi_lr_overhead', 'mspi_done', 'mspi_halted'] is too long
        Additional items are not allowed ('spi_lr_session_aborted', 'spi_lr_impatient', 'spi_lr_session_done', 'spi_lr_overhead', 'mspi_done', 'mspi_halted' were unexpected)
        'mspi_done' was expected
        'spi_l1_intr' was expected
        'mspi_halted' was expected
        'spi_lr_fullness_reached' was expected
        'spi_lr_session_aborted' was expected
        'spi_lr_impatient' was expected
        'spi_lr_session_done' was expected
        'spi_lr_overread' was expected
        From schema: Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml
arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: spi-nor@0: $nodename:0: 'spi-nor@0' does not match '^flash(@.*)?$'
        From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 5b9723a10bd6..f92089290ccd 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -520,27 +520,27 @@ spi@18029200 {
 		      <0x1811b408 0x004>,
 		      <0x180293a0 0x01c>;
 		reg-names = "mspi", "bspi", "intr_regs", "intr_status_reg";
-		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "spi_lr_fullness_reached",
+			     <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mspi_done",
+				  "mspi_halted",
+				  "spi_lr_fullness_reached",
 				  "spi_lr_session_aborted",
 				  "spi_lr_impatient",
 				  "spi_lr_session_done",
-				  "spi_lr_overhead",
-				  "mspi_done",
-				  "mspi_halted";
+				  "spi_lr_overread";
 		clocks = <&iprocmed>;
 		clock-names = "iprocmed";
 		num-cs = <2>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		spi_nor: spi-nor@0 {
+		spi_nor: flash@0 {
 			compatible = "jedec,spi-nor";
 			reg = <0>;
 			spi-max-frequency = <20000000>;
-- 
2.26.2

