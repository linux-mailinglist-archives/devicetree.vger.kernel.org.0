Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD3A4EEB2C
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbiDAKWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245552AbiDAKWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:22:35 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F19265E82
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648808422; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=OPMWESSuAgiGm4y2E7OWi3M7/bdGNyqoTxjLqXIUOJ3GEMguITN2e7li96vCtrP03bS14atkA1wscer6/8olPJsm2EK0MPKW+B86g1B6Ynao1InQ4VqzJDHYD4kKEf2AxvZ/PsodcQ+wbwZJrITTtQMQGn7lOIUU/b/NqLzc/eo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648808422; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=N0LsOdjZnLCmPPWAwJCSqDnXkCKgE0jLv9QVEUXcOtg=; 
        b=DdyW+k1h58Q6bX6W5xBIi5vQ5gYn5pKp3mVllrSnbevp+WSFyXkGVKUiUxcqgrydovDjAOTSZ0hIrc5H2+fQT+7RMQ751zKBaJRfLsMIapQJgpuAV9c5zFoq0xLaFDWT4MmIcnzjDYNnFJTMiK5habyuEWrUkw7P+lBYKTzQPfo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648808422;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
        bh=N0LsOdjZnLCmPPWAwJCSqDnXkCKgE0jLv9QVEUXcOtg=;
        b=TpBTCYex1Ebro304tl8kyelMQvIPbc4wZ0ntQ7KtlYOvedbD1j99oUUxlo6yGBYS
        IXgOs4gZLHM0rkIZw1xpCMQ4gGn6YxXNwdtkGQ5ZH68+FND8PZGPBvIuPgMXNEsRdPr
        UFFURdPxsdVlvWy23Yt/ByTMwJmgFNP90CNDxEFo=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648808420168564.6989434315456; Fri, 1 Apr 2022 03:20:20 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 4/5] ARM: dts: BCM5301X: Retrieve gmac1 MAC address from NVRAM on Asus RT-AC88U
Date:   Fri,  1 Apr 2022 13:20:01 +0300
Message-Id: <20220401102002.15765-4-arinc.unal@arinc9.com>
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

The et1macaddr NVRAM variable contains a MAC address for gmac1 on Asus
RT-AC88U. Add NVMEM cell for it and reference it in the gmac1 node.

The Broadcom GBit BCMA driver will issue the MAC address for gmac{0,1,2}
retrieved from et{0,1,2}mac from SPROM without this but let's explicitly
define it as mac-address on the devicetree.
Refer to drivers/net/ethernet/broadcom/bgmac-bcma.c:147.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 5696dd5fbaf4..2f944d1c0330 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -25,6 +25,9 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x00180000>;
+
+		et1macaddr: et1macaddr {
+		};
 	};
 
 	leds {
@@ -239,6 +242,11 @@ fixed-link {
 	};
 };
 
+&gmac1 {
+	nvmem-cells = <&et1macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &usb2 {
 	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
 };
-- 
2.25.1

