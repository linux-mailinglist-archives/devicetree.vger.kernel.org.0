Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBD10477840
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:19:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233634AbhLPQTr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:19:47 -0500
Received: from sender3-op-o12.zoho.com ([136.143.184.12]:17897 "EHLO
        sender3-op-o12.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238520AbhLPQTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 11:19:44 -0500
X-Greylist: delayed 901 seconds by postgrey-1.27 at vger.kernel.org; Thu, 16 Dec 2021 11:19:44 EST
ARC-Seal: i=1; a=rsa-sha256; t=1639670656; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=AYLEoDzKB5Her5Lf/dAxn73Nmc/sR7amB1lLQvDRq1lOoWhkkdUJtJHjbqAC18kK7YIEHxaWr+6LjcgvjqTk2EXbSxsC3SAYdTsYSG/26S4y4GT58U8lO1kbHD5YquKH5AkaGC9ThW6W2dw7pUTm3/JXdOIp9o594kenYRE6GQM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1639670656; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=0znMVt2nT4vGVbuBGHFlNVR1cvwHOwympZTT84tk5PA=; 
        b=dwTdCF2k1WlsvUuV65QClA5XDFDCqv2rHDKUonVzW7rxPclXJtj71+P6DbzghClY8NskhTkuXK4ukiXjcCa459K4uYyP9jgUfpfeigNZAzbuTPrzr7XS3MedVgLkODXu+0phAtXjePBgHK2Sci4njTgOPMbmhf7f4R3XMUK3Fp0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1639670656;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=0znMVt2nT4vGVbuBGHFlNVR1cvwHOwympZTT84tk5PA=;
        b=iW1olyh405n5gWXa88eYASv1itKDou5u0lSvhl3mBqXx/xP32o919n9By6LbykSX
        LZ4e35dRl9hv28s+SHW2GpqO/Yq71TIuoA4G864ktmPq0wRqMi7sr9Vkp0CWxVPT4PS
        eNCBYGUselz0bE6tpvsDsKMslZlq8R5HG5qVyLro=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1639670654768605.1685326086817; Thu, 16 Dec 2021 08:04:14 -0800 (PST)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <ALSI@bang-olufsen.dk>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH] ARM: dts: BCM5301X: correct rx-internal-delay-ps & enable flow control on extsw on Asus RT-AC88U
Date:   Fri, 17 Dec 2021 00:03:19 +0800
Message-Id: <20211216160319.2373-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current rx-internal-delay-ps value on the Realtek switch node, 2000,
will be divided by 300, resulting in 6.66, which will be rounded to the
closest step value, 7. Change it to 2100 anyway to be accurate.

Commit ef136837aaf6 ("net: dsa: rtl8365mb: set RGMII RX delay in steps of
0.3 ns")

Flow control needs to be enabled on both sides. It's already enabled on the
CPU port of the Realtek switch. Enable it on the extsw port of the Broadcom
switch as well.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 16dea851719f..df8199fd4eb4 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -138,7 +138,7 @@ port@6 {
 				ethernet = <&sw0_p5>;
 				phy-mode = "rgmii";
 				tx-internal-delay-ps = <2000>;
-				rx-internal-delay-ps = <2000>;
+				rx-internal-delay-ps = <2100>;
 
 				fixed-link {
 					speed = <1000>;
@@ -213,6 +213,7 @@ sw0_p5: port@5 {
 			fixed-link {
 				speed = <1000>;
 				full-duplex;
+				pause;
 			};
 		};
 
-- 
2.25.1

