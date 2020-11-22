Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA9462BC2E1
	for <lists+devicetree@lfdr.de>; Sun, 22 Nov 2020 01:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726662AbgKVAkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 19:40:43 -0500
Received: from relay5.mymailcheap.com ([159.100.241.64]:55098 "EHLO
        relay5.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbgKVAkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 19:40:42 -0500
Received: from relay4.mymailcheap.com (relay4.mymailcheap.com [137.74.80.156])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id A63D12008F;
        Sun, 22 Nov 2020 00:40:39 +0000 (UTC)
Received: from filter1.mymailcheap.com (filter1.mymailcheap.com [149.56.130.247])
        by relay4.mymailcheap.com (Postfix) with ESMTPS id 2D0053F1D0;
        Sun, 22 Nov 2020 01:40:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by filter1.mymailcheap.com (Postfix) with ESMTP id 457052A36E;
        Sat, 21 Nov 2020 19:40:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1606005636;
        bh=Pb4Q1x+cDDkb3+w52LlauT+lSuzZnpwtU+Gv8d3ydLQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=FNbqvfWpMvFk4PhUr2T9z4F+EQ3jOx5zSz9ntMXkyY1CsnZKK3i5m1HDR4Ozv8YE1
         mjcsZrhAQMcxClY/dlHdlX455JobTXYyjdrVgMDDlk0JYnTZL/x+jKPmkgBOcFciFP
         F6m/2cd925HZ0m0fZd67iibKTxQU3WvKcXyHu1TE=
X-Virus-Scanned: Debian amavisd-new at filter1.mymailcheap.com
Received: from filter1.mymailcheap.com ([127.0.0.1])
        by localhost (filter1.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id WNRbMU7bgD3K; Sat, 21 Nov 2020 19:40:35 -0500 (EST)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter1.mymailcheap.com (Postfix) with ESMTPS;
        Sat, 21 Nov 2020 19:40:35 -0500 (EST)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 643684130F;
        Sun, 22 Nov 2020 00:40:34 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="tT2HTfcK";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from ice-e5v2.lan (unknown [59.41.161.246])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id 62CED4130F;
        Sun, 22 Nov 2020 00:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1606005629; bh=Pb4Q1x+cDDkb3+w52LlauT+lSuzZnpwtU+Gv8d3ydLQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tT2HTfcKxKpbl4Fc/urdguBYZzsH2qtWX8iE5+Bun89wzF67eqy3M6JOnVSyPqce6
         n3BIhjwrfseSjKzGqk701OSHh42jUY07OpMXhIw1XMH9v9cmqIh2KRNCv+FCsMGwvP
         Yj3UXkV6x0c/uMjgLMml7YXiMlPlP0R1Y2pS4A58=
From:   Icenowy Zheng <icenowy@aosc.io>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        inux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 3/3] ARM: dts: sun8i: s3: switch PineCube to use OHCI/EHCI only
Date:   Sun, 22 Nov 2020 08:40:11 +0800
Message-Id: <20201122004011.1957325-2-icenowy@aosc.io>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201122003841.1957034-1-icenowy@aosc.io>
References: <20201122003841.1957034-1-icenowy@aosc.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 643684130F
X-Spamd-Result: default: False [4.90 / 20.00];
         ARC_NA(0.00)[];
         RCVD_VIA_SMTP_AUTH(0.00)[];
         R_DKIM_ALLOW(0.00)[aosc.io:s=default];
         RECEIVED_SPAMHAUS_PBL(0.00)[59.41.161.246:received];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         R_MISSING_CHARSET(2.50)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DMARC_NA(0.00)[aosc.io];
         BROKEN_CONTENT_TYPE(1.50)[];
         R_SPF_SOFTFAIL(0.00)[~all:c];
         ML_SERVERS(-3.10)[213.133.102.83];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[8];
         MID_CONTAINS_FROM(1.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
         RCVD_COUNT_TWO(0.00)[2];
         HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1]
X-Rspamd-Server: mail20.mymailcheap.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PineCube board features a USB Type-A connector connected to the
SoC's USB pins.

As this is not designed for being used as a USB device, disable OTG
controller and route USB to OHCI/EHCI fixedly.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 arch/arm/boot/dts/sun8i-s3-pinecube.dts | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-s3-pinecube.dts b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
index 4aa0ee897a0a..c4177c54ef29 100644
--- a/arch/arm/boot/dts/sun8i-s3-pinecube.dts
+++ b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
@@ -78,6 +78,12 @@ csi1_ep: endpoint {
 	};
 };
 
+&ehci0 {
+	phys = <&usbphy 0>;
+	phy-names = "usb";
+	status = "okay";
+};
+
 &emac {
 	phy-handle = <&int_mii_phy>;
 	phy-mode = "mii";
@@ -158,6 +164,12 @@ &mmc1 {
 	status = "okay";
 };
 
+&ohci0 {
+	phys = <&usbphy 0>;
+	phy-names = "usb";
+	status = "okay";
+};
+
 &pio {
 	vcc-pd-supply = <&reg_dcdc3>;
 	vcc-pe-supply = <&reg_ldo3>;
@@ -224,11 +236,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usb_otg {
-	dr_mode = "host";
-	status = "okay";
-};
-
 &usbphy {
 	usb0_vbus-supply = <&reg_vcc5v0>;
 	status = "okay";
-- 
2.28.0
