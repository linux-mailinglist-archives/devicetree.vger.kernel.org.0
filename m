Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66B4E2BC2E0
	for <lists+devicetree@lfdr.de>; Sun, 22 Nov 2020 01:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726544AbgKVAkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 19:40:36 -0500
Received: from relay5.mymailcheap.com ([159.100.241.64]:55096 "EHLO
        relay5.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbgKVAkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 19:40:36 -0500
Received: from relay3.mymailcheap.com (relay3.mymailcheap.com [217.182.119.155])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id 537F72008F;
        Sun, 22 Nov 2020 00:40:33 +0000 (UTC)
Received: from filter1.mymailcheap.com (filter1.mymailcheap.com [149.56.130.247])
        by relay3.mymailcheap.com (Postfix) with ESMTPS id BFAC13ECDF;
        Sun, 22 Nov 2020 01:40:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by filter1.mymailcheap.com (Postfix) with ESMTP id E66C92A36E;
        Sat, 21 Nov 2020 19:40:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1606005630;
        bh=hjfKq4YhuUu7r1N+L6TCHJk4XIKWM4JYeZHkHuuROZA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=U9Al2PW1S2q4sDM0rqoO2mDdHglxqiqETJDvEuMivvlKxIxPbRn9KkYLD5PbHiwL3
         TQCi9JF9l8LKESgZOx8YCt/OcfSbTxED9Pie6WwrIo1uSc+iMwPre7IWXAnxBkyDc+
         K0Z5MlyX9zn3Jz/t7C6xCfN4efNGkQigTzVXjFPY=
X-Virus-Scanned: Debian amavisd-new at filter1.mymailcheap.com
Received: from filter1.mymailcheap.com ([127.0.0.1])
        by localhost (filter1.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id JbpPsKNE9o2H; Sat, 21 Nov 2020 19:40:30 -0500 (EST)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter1.mymailcheap.com (Postfix) with ESMTPS;
        Sat, 21 Nov 2020 19:40:30 -0500 (EST)
Received: from [148.251.23.173] (ml.mymailcheap.com [148.251.23.173])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 0EA4241A94;
        Sun, 22 Nov 2020 00:40:29 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="OC43z1FQ";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from ice-e5v2.lan (unknown [59.41.161.246])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id 96F984130F;
        Sun, 22 Nov 2020 00:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1606005624; bh=hjfKq4YhuUu7r1N+L6TCHJk4XIKWM4JYeZHkHuuROZA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=OC43z1FQ7AHArZH6X5IRftfRUca09nBpp4pk1PNuE4wCvY3xdn+vWvVlc/MLi77ga
         KCBO6QDpI/if5o6v11ZRViQFICV26B9tmc9V21VbvLNfVgmOYrY07qmSMaq1bFq+/Y
         m9jHJRlM87WWycnQ82iN/irSu8JDk+HsOR0+RPcs=
From:   Icenowy Zheng <icenowy@aosc.io>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        inux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 2/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI for Lichee Pi Zero
Date:   Sun, 22 Nov 2020 08:40:10 +0800
Message-Id: <20201122004011.1957325-1-icenowy@aosc.io>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201122003841.1957034-1-icenowy@aosc.io>
References: <20201122003841.1957034-1-icenowy@aosc.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0EA4241A94
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
         ML_SERVERS(-3.10)[148.251.23.173];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[8];
         MID_CONTAINS_FROM(1.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:148.251.0.0/16, country:DE];
         RCVD_COUNT_TWO(0.00)[2];
         HFILTER_HELO_BAREIP(3.00)[148.251.23.173,1]
X-Rspamd-Server: mail20.mymailcheap.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As the USB port on Lichee Pi Zero works in the OTG mode, enable the
EHCI/OHCI controllers for it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
index 2e4587d26ce5..0cd969194acb 100644
--- a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
+++ b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
@@ -77,6 +77,10 @@ red_led {
 	};
 };
 
+&ehci0 {
+	status = "okay";
+};
+
 &mmc0 {
 	broken-cd;
 	bus-width = <4>;
@@ -84,6 +88,10 @@ &mmc0 {
 	status = "okay";
 };
 
+&ohci0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-0 = <&uart0_pb_pins>;
 	pinctrl-names = "default";
-- 
2.28.0
