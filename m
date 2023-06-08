Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF5E7283CF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 17:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236776AbjFHPgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 11:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236783AbjFHPgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 11:36:35 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54FE2D47
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 08:36:32 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-514953b3aa6so1076269a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Khaj7ZsYDEb4kfH4WHb643/yEvEjTfxC1Xvcx9U6sS0=;
        b=qbBegI3jgogGYY+GyfxmnzcqY4a/1gKT44xnG5o1xupHDBVu5q3F2Oe0pzWRyGuMnu
         ZJl+Sj2+TsDTHOBuVSWCKdGTDU28C6R5ri1EQuMMb3+aSVJULuOVCVoLiJX2jRMEShK7
         VCDUOUvq7gtvDvZ11GdDOe8PxsE87//QrQMApHQdxj1e0ciC8T3XmjDaoMW4ernoXps+
         ViAQJdrZhEn9t/+e9mtGD0zFBghP0cbyJxM28cFeHWBxvTYumRachcEa/xqQNvlrIOjJ
         6yebma5B71QQlq0xncaEbem4loavt/9VYHKR5vun9ifuMd2ojEHIzE5uccUPTO2r7LJO
         9Xnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686238591; x=1688830591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Khaj7ZsYDEb4kfH4WHb643/yEvEjTfxC1Xvcx9U6sS0=;
        b=DMxijjhFAnaccbr/9t2MU8OkfYZaqic4a3tBcpMTIjZwfnGyPJsyfwYTF0sSxQ+0P3
         KPuk2nmra8l4saW3RPJdqZQWoknj6OFglFzntl0lbgxeLvH/VvTunHqlOaGoMdRvIEZM
         3Lbc9a6RLegvwPKDgh0mwNAKL3PF98Z1T7aSaaPiaJjtbCjHMx0EsjC7Ij886zihvBJn
         QENGHbuopQbUy7hS3mvInqcIjb8jl5SqY5pKKwrKUZrthEwsRdYawgBR3dT7MIUxF54z
         A6dH2NF50Zq1Jz4wUkfLgNQekpd2vbHssEXbdadI2WKFufo8Zz11htKIOCoBFczPucmA
         tBgg==
X-Gm-Message-State: AC+VfDyvEhln0Q+n34FqgugNLbP4L83Sv7PWy1PbSw4A6gDZMBoX39d5
        XgmunSSz+SQHJNKVHkwESDU=
X-Google-Smtp-Source: ACHHUZ6SIu1qXtMUYeYyzJWO7krCwyeShSZzuIFnFlMWpamN+/J5cTUAtIKs938wqTKiF7uF392Kxg==
X-Received: by 2002:a17:907:7291:b0:94e:e5fe:b54f with SMTP id dt17-20020a170907729100b0094ee5feb54fmr132299ejc.23.1686238591094;
        Thu, 08 Jun 2023 08:36:31 -0700 (PDT)
Received: from shift.daheim (pd9e29cc7.dip0.t-ipconnect.de. [217.226.156.199])
        by smtp.gmail.com with ESMTPSA id j14-20020a1709066dce00b00977cd6d2127sm857523ejt.6.2023.06.08.08.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 08:36:30 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q7Hgb-004atj-25;
        Thu, 08 Jun 2023 17:36:29 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 1/3] ARM: dts: BCM5301X: MR26: MR32: remove bogus nand-ecc-algo property
Date:   Thu,  8 Jun 2023 17:36:27 +0200
Message-Id: <2c4d00dd40124c2ddc0b139cbce7531b108f9052.1686238550.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

| bcm53015-meraki-mr26.dtb: nand-controller@18028000:
|   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
| From schema: Documentation/[...]/nand-controller.yaml
| bcm53016-meraki-mr32.dtb: nand-controller@18028000:
|   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
| From schema: Documentation/[...]/nand-controller.yaml

original ECC values for these old Merakis are sadly not
provided by the vendor. It looks like Meraki just stuck
with what Broadcom's SDK was doing... which left this
up to the proprietary nand driver.

Note: The invalid setting was and is handled by brcmnand. It
falls back to "bch" in brcmnand_setup_dev() when ecc.algo is
set to NAND_ECC_ALGO_UNKNOWN (since "hw" is not in the list
above).

A correct nand-ecc-algo = "bch"; is already specified in the
included  "bcm5301x-nand-cs0-bch8.dtsi". So this line can be
dropped.

Reported-by: Rafał Miłecki <zajec5@gmail.com> (per Mail)
Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
v1 -> v2:
	- add dts and BCM5301X tag (Rafael)
	- Rebased on top of stblinux devicetree/next
	- investigated device NAND OOB for clues what is used.
	  => also checked out brcmnand.c
---
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 2 --
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index 071f2cb97251..83d1b6e0b0d5 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -72,8 +72,6 @@ &gmac3 {
 };
 
 &nandcs {
-	nand-ecc-algo = "hw";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <0x1>;
diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index 46c2c93b01d8..16c650595cb9 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -125,8 +125,6 @@ &pwm {
 };
 
 &nandcs {
-	nand-ecc-algo = "hw";
-
 	partitions {
 		/*
 		 * The partition autodetection does not work for this device.
-- 
2.40.1

