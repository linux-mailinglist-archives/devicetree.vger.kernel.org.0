Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F00C3263B9
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:06:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbhBZOFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:05:32 -0500
Received: from mx2.suse.de ([195.135.220.15]:55126 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230122AbhBZOFG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Feb 2021 09:05:06 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id D7C71AD5C;
        Fri, 26 Feb 2021 14:03:23 +0000 (UTC)
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     f.fainelli@gmail.com, robh+dt@kernel.org, robin.murphy@arm.com,
        ardb@kernel.org, hch@infradead.org, narmstrong@baylibre.com,
        dwmw2@infradead.org, linux@armlinux.org.uk,
        catalin.marinas@arm.com, arnd@arndb.de, will@kernel.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 12/13] ARM: dts: bcm2711: Mark PCIe bus as 64bit-mmio-broken
Date:   Fri, 26 Feb 2021 15:03:04 +0100
Message-Id: <20210226140305.26356-13-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210226140305.26356-1-nsaenzjulienne@suse.de>
References: <20210226140305.26356-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bus implementation can't handle 64bit MMIO accesses.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 462b1dfb0385..825abdbc0d76 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -529,6 +529,7 @@ pcie0: pcie@7d500000 {
 			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
 				      0x0 0xc0000000>;
 			brcm,enable-ssc;
+			64bit-mmio-broken;
 		};
 
 		genet: ethernet@7d580000 {
-- 
2.30.1

