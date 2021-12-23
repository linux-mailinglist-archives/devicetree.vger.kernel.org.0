Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F093547E875
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 20:45:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244995AbhLWTpU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 14:45:20 -0500
Received: from sender4-op-o18.zoho.com ([136.143.188.18]:17832 "EHLO
        sender4-op-o18.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244856AbhLWTpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 14:45:19 -0500
X-Greylist: delayed 903 seconds by postgrey-1.27 at vger.kernel.org; Thu, 23 Dec 2021 14:45:19 EST
ARC-Seal: i=1; a=rsa-sha256; t=1640287793; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=ODcnJESuYiI5lF0hJ/37J4F2JxRFjC8zpiMwnSkBW5rWHNkvQW+jpmehBYEw9fPI8dlYqhWVdc6XyJDBIVbUrXPlhgtccBDMjUh3EAmJggxwytTHd1rqVCJ15/nJltA8fDUoxhC6xHoxD5kHfCdJbAzn0PUulG4M3pOKsUUPXyI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1640287793; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=XumMhngb5fuxytwFaljHNoziprEndZexnil4FSax5U8=; 
        b=HeSJzmIbrA25CfWIRUS7/2krCrPBdYkq/xyY1OkJi561PlkteXr6IVfVP8gWmI/dsvoVJRrXnlFI/d5XX9qsiOEk1/lgQ8ZunxjkQHjTjzuMqrM3Q2i/F7s0MZiRg3UeiRjSAFrZ6I62QONayZiB04teg7KOdG3b0+KRZGXObBE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1640287793;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=XumMhngb5fuxytwFaljHNoziprEndZexnil4FSax5U8=;
        b=QpkLIf9fYZI/Q99utjMpWbnqJbnPFw9Jq2aXWC6+wETrsRYPHxtTLEKTdSIgLHP4
        O308xaH4M2WSeuu3fgjxZ/BNG9vXQIM1uu46G5ittOkoYfJV95eiJ0ZC9L6GN3lx90a
        MWa959bDYW0ZEjtJ2Kx6f4+aZJH1RnMy/gGfjABg=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1640287791590246.80195835712175; Thu, 23 Dec 2021 11:29:51 -0800 (PST)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
        Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] ARM: dts: BCM5301X: remove reg property from ports node on Asus RT-AC88U
Date:   Thu, 23 Dec 2021 22:29:41 +0300
Message-Id: <20211223192941.1016-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "reg" property on the "ports" node of the Realtek switch is not supposed to
be there which causes warnings while compiling. Remove it.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Fixes: 3d2d52a0d183 ("ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U")
Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index df8199fd4eb4..82f9629f0abb 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -106,7 +106,6 @@ switch {
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0>;
 
 			port@0 {
 				reg = <0>;
-- 
2.25.1

