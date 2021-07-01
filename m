Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9997B3B8B5A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 02:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238251AbhGAAnk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 20:43:40 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:21476 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238231AbhGAAnj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 30 Jun 2021 20:43:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1625100069;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=lwoHLx2eJfcqWlSuvHPH6Uv2QHfVsHItf+nTiFi6sqA=;
        b=cdqhw+TY+9mkOhuq5E0pwGx0qBjdqZMytxrdrr4jjyqU2n8s9mYaXMq5rXqRR7MbnJb4fn
        5jfEb1ThmVFqLg71evBFuLrt6TZpbYoyownrXJFaSvP/iP6npGqIg2B8f3wQ2bMal6NqQO
        THCUg5J4zBl9AdhGcuR/nGQ/j2+q7Ns=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-CGqjlbC4P_Wl2cEPPwvDqA-1; Wed, 30 Jun 2021 20:41:06 -0400
X-MC-Unique: CGqjlbC4P_Wl2cEPPwvDqA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA01B1005E53;
        Thu,  1 Jul 2021 00:41:04 +0000 (UTC)
Received: from dreyauc.ausil.us (ovpn-113-50.rdu2.redhat.com [10.10.113.50])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B0359604CC;
        Thu,  1 Jul 2021 00:41:01 +0000 (UTC)
From:   Dennis Gilmore <dgilmore@redhat.com>
To:     linux-rockchip@lists.infradead.org
Cc:     dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC
        support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/4] arm64: dts: rockchip: helios64: add SPI support
Date:   Wed, 30 Jun 2021 19:40:38 -0500
Message-Id: <20210701004043.18585-3-dgilmore@redhat.com>
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>
References: <20210701004043.18585-1-dgilmore@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add SPI support for the helios64, u-boot can live in spi1, spi2 is user
accessible, spi5 is for the sata controller rom.
https://wiki.kobol.io/helios64/spi/

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index bdcf6472664c..09c5a6fa11ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -21,6 +21,9 @@ / {
 	aliases {
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi5 = &spi5;
 	};
 
 	avdd_0v9_s0: avdd-0v9-s0 {
@@ -473,6 +476,27 @@ &sdmmc {
 	status = "okay";
 };
 
+&spi1 {
+	status = "okay";
+
+	spiflash: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-max-frequency = <25000000>;
+		status = "okay";
+		m25p,fast-read;
+	};
+};
+
+/* UEXT connector */
+&spi2 {
+	status = "okay";
+};
+
+&spi5 {
+	status = "okay";
+};
+
 &tcphy1 {
 	/* phy for &usbdrd_dwc3_1 */
 	status = "okay";
-- 
2.31.1

