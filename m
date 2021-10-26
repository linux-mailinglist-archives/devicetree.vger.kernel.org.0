Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E00F543B7AE
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 18:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235246AbhJZRA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 13:00:26 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17491 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233522AbhJZRAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 13:00:25 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1635267457; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=FyCIGTpYBKOelFK4UjKj7RYoydXjTQjg4rqaYZz1kAtuiLmT915EtJ++vUrP5sX9wIv+S6GOhDBp/NLyjvF62Tcqmb4dZwL15aZSO3bGp7gKYZr/pIFkiler4VZDNcISfb8AtIiA+6/VgIoRY2Z8oj4KEgWONLAkR/GbMBVYSr4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1635267457; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=XxLCRbNpLu8h/WBroB7AjAPtqrIBeRIhh+m81mDDH0A=; 
        b=MB703Opxm3kFU+2iCB/oCu+zmege6TRXpzQrdk/tqCKw+oVWk3vtrTlmQsE2Kq9Lnm2BjPlrgI5wy7iqvsFiHoElI9MBmfBrFnuDM8iZaVpZMujU//xTNWH1aHmmCi8TYaQDokXG2CKhddJoUzQxBUhZJanwjOvkBHSAl5G8Qag=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1635267457;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=XxLCRbNpLu8h/WBroB7AjAPtqrIBeRIhh+m81mDDH0A=;
        b=EOf5NwnyvwdpB4PB+CREg6aM6Y8yLAOcaV5fq3AsbTvsxMSfBpd6jN3YdXncJVJQ
        W4sTPB+1xMzKkusqKtbjjCEjgrMyub6r/qGFrHK5oawhMzWqNisQdiB1d1b7gGgEynw
        0+G4aSyLYdUBS+4p+Wn21aWd3WNPclYlopjASziA=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1635267454908711.4948663344269; Tue, 26 Oct 2021 09:57:34 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <ALSI@bang-olufsen.dk>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH v2 1/2] ARM: dts: BCM5301X: remove unnecessary address & size cells from Asus RT-AC88U
Date:   Wed, 27 Oct 2021 00:57:03 +0800
Message-Id: <20211026165703.17997-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the unnecessary #address-cells & #size-cells in the gpio-keys node
from the device tree of Asus RT-AC88U.

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

