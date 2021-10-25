Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A67543A609
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230260AbhJYVmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:42:35 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17486 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbhJYVmf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 17:42:35 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1635197997; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=dWhId5zMv14we7gAdU55V83Xu2r1tcE2d/baDqsDoMf/PoUHIqhCW0IS4VW6h//dvt0yXSkwfYg5083hasf34SSD9rFSUnO3MgTi59OLmw5g2u1AVwLL6fNa6p3FZ3eNnhVSTQoFvnMXF5XArfbm2wRk9L3HIHPB1G0ogsu87To=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1635197997; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=ocrEj3niA0VDGWM5qb+N33ooo6RnRaWSK4gccFn8a6k=; 
        b=kSxCBV2GkWuQI0U5iV9fYD9c9o07BbcIwJ0JO5WzUWmycs7juGDOBJuXsx++FXlEN5GrD/INUBAMQbEBF4G2WaGmZHPS91EvaLyBa17s4zif+C2LuLjvtTYAFrvzv9tCFvEX5jNovuioYJ2xTAGtctPqZav3rbzzfpISK2D1vwc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1635197997;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=ocrEj3niA0VDGWM5qb+N33ooo6RnRaWSK4gccFn8a6k=;
        b=kPDdH3l41ckWY7HGXiWV2QBdQ6/zm3WZtVXvw8iIKo+42wQuDteFJjpMOQMQzFMO
        QH5EbUaaL9e0BOe1abjYchW+25AniAIhfXoxbXgRMA5qzvkB9IVxWUAyzm0Z+xG/y2y
        Ar/ShfAzCaK+W8b7CQMUFPZgjSdn4pEZ0I0miuGw=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1635197996472841.2262249596893; Mon, 25 Oct 2021 14:39:56 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 1/2] ARM: dts: BCM5301X: remove unnecessary address & size cells from Asus RT-AC88U
Date:   Tue, 26 Oct 2021 05:39:25 +0800
Message-Id: <20211025213926.21203-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the unnecessary #address-cells & #size-cells in the gpio-keys node from the device tree of Asus RT-AC88U.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 448060561cd0..b0cee1d87600 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -68,8 +68,6 @@ wps {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
-- 
2.25.1

