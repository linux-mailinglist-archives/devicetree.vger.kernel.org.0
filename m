Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D2EA4EEB28
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:20:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245369AbiDAKWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:22:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245165AbiDAKWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:22:30 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D481CABD7
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648808416; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=Pm5dkpUngeKLasG/9IYs7RPPsSZw27bwQum5OqwVx6it0t3ABotF7dod+ouFQV3FqylbzBaTdgJZkCeMfYMvISsxi7Yrg8EiiI4VJUMMVTlhLgCRt1d32pdLorsvBKTXc3D4Pg3oR/sMz3JmqT/WcxGZpQtHCCtFRCSmZas9ZVE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648808416; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=eHUUHi8aAkHNYjcz4qhlBrD82BPgIAKdMJmYEjetHHY=; 
        b=IaZuyvh7RpJLvAu/KDmz8LYz/Ki2WpG7uwvrvYAl2+/wE+errKUdBoXDFlABt2Fzp+Ue+6og/T6QXtr/8/0RJehW9gWWZxEu9GP4aaXQYplMkQ4lWxM0jym8aENuIWVGj5QQoTJOuPEmNtZPOwQihWMdNlHgizScYYkktCVuXys=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648808416;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
        bh=eHUUHi8aAkHNYjcz4qhlBrD82BPgIAKdMJmYEjetHHY=;
        b=iRz2K0tBJPy6QYfs65GGfkqTyt4X4AlF/37zPRunxxJbhOWiklxVZOIRXpk3xHMB
        s2eHqz00PnhwtgW1fGvt13urmdGLYrdd2T7syfrqz/HAFhwCf4bA3h5ng7e3bY48g/w
        qYBFVRPu81hPZmNr3Z85h4LadZjoR3zPmo2juwXw=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648808415149743.6191919595522; Fri, 1 Apr 2022 03:20:15 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 2/5] ARM: dts: BCM5301X: Remove cell properties from srab ports on Asus RT-AC88U
Date:   Fri,  1 Apr 2022 13:19:59 +0300
Message-Id: <20220401102002.15765-2-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401102002.15765-1-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove #address-cells and #size-cells properties from the ports node of
&srab. They are already defined on bcm5301x.dtsi, there's no need to define
them again.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 82f9629f0abb..cf793c558437 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
- * Copyright (C) 2021 Arınç ÜNAL <arinc.unal@arinc9.com>
+ * Copyright (C) 2021-2022 Arınç ÜNAL <arinc.unal@arinc9.com>
  */
 
 /dts-v1/;
@@ -177,9 +177,6 @@ &srab {
 	dsa,member = <0 0>;
 
 	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		port@0 {
 			reg = <0>;
 			label = "lan4";
-- 
2.25.1

