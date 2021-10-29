Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54EF543F427
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 02:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230419AbhJ2A4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 20:56:06 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:29791 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230211AbhJ2A4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 28 Oct 2021 20:56:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1635468817;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=eo6UYnZwUTssCdnmrv67GJ2sHUnck1SIMVJqaxKytiA=;
        b=X6txbNtlHd1GZNwIn5PXiiHTFVJxlKvDXUw1qmM2GHjnwkY8ks5S7lJZ4lm5NnmktNltvV
        BJFUD0qPxYnJnWrsSurUZSV8hEAmYsLF+358SgJyIJhMPSDHgrCAly73XeWqDccyeuP0rR
        qk8oGoJqJHtBKL0nMlBIuz3SXro/K34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-YhhcfY9EPbeJ7J7o3OhQMw-1; Thu, 28 Oct 2021 20:53:34 -0400
X-MC-Unique: YhhcfY9EPbeJ7J7o3OhQMw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3649210A8E01;
        Fri, 29 Oct 2021 00:53:31 +0000 (UTC)
Received: from dreyauc.ausil.us.com (unknown [10.22.32.92])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D47A4180;
        Fri, 29 Oct 2021 00:53:27 +0000 (UTC)
From:   Dennis Gilmore <dgilmore@redhat.com>
To:     linux-rockchip@lists.infradead.org
Cc:     dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Florian Klink <flokli@flokli.de>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC
        support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: rockchip: helios64: add variables for pcie completion
Date:   Thu, 28 Oct 2021 19:53:19 -0500
Message-Id: <20211029005323.144652-1-dgilmore@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

without ep-gpios defined u-boot does not initialise PCIe
rockchip_pcie pcie@f8000000: failed to find ep-gpios property

additionally set max-link-speed and pinctrl-names for completeness

with this patch and the ones from Florian Klink applied to the dts
file in u-boot sata drives show up in both u-boot and linux

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 9c2b45012daa..1e4042a7fdc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -534,7 +534,10 @@ &pcie_phy {
 };
 
 &pcie0 {
+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
 	num-lanes = <2>;
+	pinctrl-names = "default";
 	status = "okay";
 
 	vpcie12v-supply = <&vcc12v_dcin>;
-- 
2.32.0

