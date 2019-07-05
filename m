Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB4F606B6
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 15:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727807AbfGENjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 09:39:49 -0400
Received: from relmlor2.renesas.com ([210.160.252.172]:37493 "EHLO
        relmlie6.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727066AbfGENjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 09:39:49 -0400
X-IronPort-AV: E=Sophos;i="5.62,455,1554735600"; 
   d="scan'208";a="20441061"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 05 Jul 2019 22:39:48 +0900
Received: from fabrizio-dev.ree.adwin.renesas.com (unknown [10.226.36.196])
        by relmlir6.idc.renesas.com (Postfix) with ESMTP id CA37742559A9;
        Fri,  5 Jul 2019 22:39:45 +0900 (JST)
From:   Fabrizio Castro <fabrizio.castro@bp.renesas.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
        Simon Horman <horms@verge.net.au>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH 1/3] arm64: dts: renesas: r8a774a1: Use extended audio dmac register
Date:   Fri,  5 Jul 2019 14:39:37 +0100
Message-Id: <1562333979-28516-2-git-send-email-fabrizio.castro@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562333979-28516-1-git-send-email-fabrizio.castro@bp.renesas.com>
References: <1562333979-28516-1-git-send-email-fabrizio.castro@bp.renesas.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Basic audio dmac register only supports busif from 0 to 3,
in order to use busif4 ~ busif7 extended audio dmac registers
need to be used.

Based on similar work from Jiada Wang:
7a516e49d975 ("arm64: dts: renesas: use extended audio dmac register")

Signed-off-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
index f209457..2c5173e 100644
--- a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
@@ -1653,7 +1653,7 @@
 				<0 0xec5a0000 0 0x100>,  /* ADG */
 				<0 0xec540000 0 0x1000>, /* SSIU */
 				<0 0xec541000 0 0x280>,  /* SSI */
-				<0 0xec740000 0 0x200>;  /* Audio DMAC peri peri*/
+				<0 0xec760000 0 0x200>;  /* Audio DMAC peri peri*/
 			reg-names = "scu", "adg", "ssiu", "ssi", "audmapp";
 
 			clocks = <&cpg CPG_MOD 1005>,
-- 
2.7.4

