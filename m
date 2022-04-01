Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50B164EEB29
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:20:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245165AbiDAKWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:22:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245380AbiDAKWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:22:30 -0400
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A6571C9453
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648808418; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=U0WyLo3irxC8DtKFjCMCVPckckXjft7YbO2WfcQoXDYLL/BIX9Pjrdzm/OiuEfxWQ62SOF555lF7Q1EaPfOoEBcsG3xoVraMnO8QSvhosc/S/2k9ooQhEQEraDeZovFLoIz9rNo353o3nN2Mou0jd62t/MwaS+Q3zSWGZqr3THA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1648808418; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=/Q/XDxvyF27YMUY+rF0Ic2U07WI7re9M6M1SJ9njBAA=; 
        b=NAUxf41c6sNj5GbMtreoL9ipcly6eUdgECYrk/W8z+N3xodVhV1GUhbqzBD/vQXl3LI4OYZgXbAW0byY+xKjsuXydE8KcGwE47T+HOPiWJPxrGbRHhvUBogXivUFeXUKG5W1Co2cNqNhEaDb3nii/747rxlUBrA4YTE0zzMhjCY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1648808418;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
        bh=/Q/XDxvyF27YMUY+rF0Ic2U07WI7re9M6M1SJ9njBAA=;
        b=OfbE1njhzn2J48UcERkIMzAGoB3IT0/QhRiINd8gLEAd27YvTnoA67GC7TfLH22L
        jJQpURFl3ZOyNHTW4mTq+O03+8XYHnB9L3UyVvOE83wz4OVzmDwsGFKFzwoE3OyJgkn
        pjEjEbUk/7A+iYSJk0fJSzmYNH+92A9z67WcSWFM=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1648808417673463.7316576804211; Fri, 1 Apr 2022 03:20:17 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 3/5] ARM: dts: BCM5301X: Add rgmii to port@5 of Broadcom switch on Asus RT-AC88U
Date:   Fri,  1 Apr 2022 13:20:00 +0300
Message-Id: <20220401102002.15765-3-arinc.unal@arinc9.com>
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

Define phy-mode of the Broadcom switch's port@5 as rgmii. This doesn't seem
to matter but let's explicitly define it since phy-mode as rgmii is defined
on the other side which is port@6 of the Realtek switch.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index cf793c558437..5696dd5fbaf4 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -205,6 +205,7 @@ port@4 {
 		sw0_p5: port@5 {
 			reg = <5>;
 			label = "extsw";
+			phy-mode = "rgmii";
 
 			fixed-link {
 				speed = <1000>;
-- 
2.25.1

