Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0286D256AB8
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 01:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728007AbgH2XPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 19:15:36 -0400
Received: from mail.manjaro.org ([176.9.38.148]:40558 "EHLO mail.manjaro.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728384AbgH2XPc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 19:15:32 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.manjaro.org (Postfix) with ESMTP id 355E33D60027;
        Sun, 30 Aug 2020 01:15:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
        by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id TH98KehBOKbY; Sun, 30 Aug 2020 01:15:27 +0200 (CEST)
From:   Tobias Schramm <t.schramm@manjaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        linux-kernel@vger.kernel.org,
        Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 1/1] ARM: dts: bcm2711: Enable ddr modes on emmc2 controller
Date:   Sun, 30 Aug 2020 01:15:09 +0200
Message-Id: <20200829231509.543901-2-t.schramm@manjaro.org>
In-Reply-To: <20200829231509.543901-1-t.schramm@manjaro.org>
References: <20200829231509.543901-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch enables ddr modes for eMMC and SD storage on emmc2,
doubling transfer speed. Previously only single data rate modes were
used, wasting half the available throughput.
The bcm2711 supports both SD and eMMC storage using ddr modes. Testing
show that pcb layout of the Raspberry Pi 4 can support them, too.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 222d7825e1ab..8b61e258e906 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -191,6 +191,8 @@ &emmc2 {
 	vqmmc-supply = <&sd_io_1v8_reg>;
 	vmmc-supply = <&sd_vcc_reg>;
 	broken-cd;
+	mmc-ddr-3_3v;
+	sd-uhs-ddr50;
 	status = "okay";
 };
 
-- 
2.28.0

