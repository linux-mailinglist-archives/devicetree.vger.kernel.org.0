Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 119DE4EEB27
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:20:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245425AbiDAKWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:22:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245369AbiDAKW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:22:29 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC3D31C8A81
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648808414; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=Pg66HM7IjtDCBmxn7FipZwxPREL7049yNw4vQy3ONx8uSA9ELwhHW2h6MOsLsaBexdWCborfAz2N0rbcn0/wUbBe4USiVTyaY6LsCk1yvXzHFGv5n2hiVHFj9Lgi6gThQF6A3f3wypbxLx4OuCDJmdMWf8O+7OciUtzM/iAoga4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648808414; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=+dmV2YhEto56L4QtQz/NwowczTM9IlbxM1SdZmkUe3A=; 
        b=YMaq8gZeQa/LiLLQMChsnQZWTwGMs0eEQ6DhRkFAl7jhwcCjD+TPmATP3mJEo5y3bxlm+jAoeRUK9I1Z1Pj4S7wlS83LIIwcMEoMkUo3ZT9fCH0Um0RLBnKDSV416cjl1/Hm1c8KgmCQN1gXEzVNhY8Io0py3erVirT7UB/L3kg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648808414;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
        bh=+dmV2YhEto56L4QtQz/NwowczTM9IlbxM1SdZmkUe3A=;
        b=HNI0Lvn1lLwg0aUAbaD3rVUXP2csMt0T7lvvA2GtRJ/AJzzUKj8hrH6MeK8QLg2P
        OC09GfE8UpbN5Re0Yd2clGKgiKZO3uhIOmCOL5r8GkBuVuoLPYB86aYKi0A/m8Xuirc
        vwkgXbr8sbx7pNGgoc7qflHsreP7cEoilEw+CYGE=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648808412518966.3548061519505; Fri, 1 Apr 2022 03:20:12 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 1/5] ARM: dts: BCM5301X: Fix DTC warning for NAND node
Date:   Fri,  1 Apr 2022 13:19:58 +0300
Message-Id: <20220401102002.15765-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
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

Remove the unnecessary #address-cells and #size-cells properties on the
nand@0 node to fix the warning below.

Warning (avoid_unnecessary_addr_size): /nand-controller@18028000/nand@0: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi b/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
index be9a00ff752d..bdf1b4a608e6 100644
--- a/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
+++ b/arch/arm/boot/dts/bcm5301x-nand-cs0.dtsi
@@ -10,8 +10,6 @@ nand-controller@18028000 {
 		nandcs: nand@0 {
 			compatible = "brcm,nandcs";
 			reg = <0>;
-			#address-cells = <1>;
-			#size-cells = <1>;
 
 			partitions {
 				compatible = "brcm,bcm947xx-cfe-partitions";
-- 
2.25.1

