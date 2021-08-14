Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78ED23EC304
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 15:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234353AbhHNN4D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Aug 2021 09:56:03 -0400
Received: from relmlor1.renesas.com ([210.160.252.171]:47360 "EHLO
        relmlie5.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S238551AbhHNN4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Aug 2021 09:56:02 -0400
X-IronPort-AV: E=Sophos;i="5.84,321,1620658800"; 
   d="scan'208";a="90620333"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 14 Aug 2021 22:55:33 +0900
Received: from localhost.localdomain (unknown [10.226.92.7])
        by relmlir6.idc.renesas.com (Postfix) with ESMTP id 360444272039;
        Sat, 14 Aug 2021 22:55:31 +0900 (JST)
From:   Biju Das <biju.das.jz@bp.renesas.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Biju Das <biju.das.jz@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] arm64: dts: renesas: r9a07g044: Add external audio clock nodes
Date:   Sat, 14 Aug 2021 14:55:25 +0100
Message-Id: <20210814135526.15561-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210814135526.15561-1-biju.das.jz@bp.renesas.com>
References: <20210814135526.15561-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add external audio clocks nodes to RZ/G2L (a.k.a R9A07G044) SoC DTSI.

The external audio clocks are configured as 0 Hz fixed frequency clocks by
default. Boards that provide audio clocks should override them.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index 2f313c2a81c7..6bbf1fae8ca5 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -13,6 +13,20 @@
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	audio_clk1: audio_clk1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it */
+		clock-frequency = <0>;
+	};
+
+	audio_clk2: audio_clk2 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it */
+		clock-frequency = <0>;
+	};
+
 	/* External CAN clock - to be overridden by boards that provide it */
 	can_clk: can {
 		compatible = "fixed-clock";
-- 
2.17.1

