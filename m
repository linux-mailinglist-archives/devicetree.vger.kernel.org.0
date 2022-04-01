Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B76144EEB2D
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238220AbiDAKXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245726AbiDAKWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:22:51 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE3D26E56E
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648808424; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=gbF8DRnlMKiqBG7cjuqGfiV38CiyUO728tSibN8lKnfnZLY6z2lTuOJcDNO/e9+km+tgYedQ/b5FTjRm2n7WjK2Knjb7N2T1+2UgCtuAVbQotq7pz61cr+ML53eVkt3Gh3PLagmdl8574UCvDhLNwdCIQCNxpXfcn5WU9vFgrO8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648808424; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=H4RK2Zq2VE03xf2F/u3m5hIQwlzu1JWJnrVF0kVjHjQ=; 
        b=bsC07HQr7GatD6O1OwEoeBl5M1lKCNkL8mRYYej4Tb0TD4DkSbuEV7pmNXXrFthk/sn9URC+LgumQl2aK+v025VM5ouvLvOzRDchgoiDeky0yg0cKLlFHAr9KkuOnjGzvbQ8yCwvD57OO7DlsNejA8v5gFsY1gGYBAtTrh2wKro=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648808424;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
        bh=H4RK2Zq2VE03xf2F/u3m5hIQwlzu1JWJnrVF0kVjHjQ=;
        b=jent8XBUiOLE/WsHHXN4jWRtCILV8PcKoREhDZ718yOexJOYcOj6UI25f3HjVV1Z
        PBqgNn1GE8egxA8P83ofiVrRvfV9UTOHgJEDLvwHXccPLLDxmENylm3owmSSW7k4dEV
        COWu403F/ktKAqqWM3n+394tXBO8wfNShUgedDzw=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648808422678276.3849561774806; Fri, 1 Apr 2022 03:20:22 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 5/5] ARM: dts: BCM5301X: Disable unused gmac0 and gmac2 on Asus RT-AC88U
Date:   Fri,  1 Apr 2022 13:20:02 +0300
Message-Id: <20220401102002.15765-5-arinc.unal@arinc9.com>
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

Disable gmac0 and gmac2 which are currently not used. This doesn't seem to
be implemented yet on drivers/net/ethernet/broadcom/bgmac-bcma.c but this
change is harmless, nonetheless.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 2f944d1c0330..0f5c5d576814 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -242,11 +242,19 @@ fixed-link {
 	};
 };
 
+&gmac0 {
+	status = "disabled";
+};
+
 &gmac1 {
 	nvmem-cells = <&et1macaddr>;
 	nvmem-cell-names = "mac-address";
 };
 
+&gmac2 {
+	status = "disabled";
+};
+
 &usb2 {
 	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
 };
-- 
2.25.1

