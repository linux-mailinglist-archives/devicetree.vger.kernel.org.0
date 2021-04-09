Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42D093590C3
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 02:05:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232426AbhDIAFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 20:05:48 -0400
Received: from relmlor1.renesas.com ([210.160.252.171]:35982 "EHLO
        relmlie5.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S232793AbhDIAFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 20:05:47 -0400
X-IronPort-AV: E=Sophos;i="5.82,207,1613401200"; 
   d="scan'208";a="77706846"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 09 Apr 2021 09:00:32 +0900
Received: from localhost.localdomain (unknown [10.166.14.185])
        by relmlir5.idc.renesas.com (Postfix) with ESMTP id F12864015FB5;
        Fri,  9 Apr 2021 09:00:31 +0900 (JST)
From:   Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To:     wg@grandegger.com, mkl@pengutronix.de
Cc:     davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v3] dt-bindings: net: can: rcar_can: Document r8a77961 support
Date:   Fri,  9 Apr 2021 09:00:20 +0900
Message-Id: <20210409000020.2317696-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document SoC specific bindings for R-Car M3-W+ (r8a77961) SoC.

Also as R8A7796 is now called R8A77960 so that update those
references.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Changes from v2:
 - Add Reviewed-by and Acked-by tags.
 - Send netdev and CAN maintainers and related mailing lists.
 https://patchwork.kernel.org/project/linux-renesas-soc/patch/20210312095030.534957-2-yoshihiro.shimoda.uh@renesas.com/

 Changes from v1:
 - Add r8a77961 to the paragrap about required properties.
 - Rename r8a7796 with r8a77960.
 https://patchwork.kernel.org/project/linux-renesas-soc/patch/20210312025420.529339-2-yoshihiro.shimoda.uh@renesas.com/

 Documentation/devicetree/bindings/net/can/rcar_can.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/rcar_can.txt b/Documentation/devicetree/bindings/net/can/rcar_can.txt
index 6a5956347816..90ac4fef23f5 100644
--- a/Documentation/devicetree/bindings/net/can/rcar_can.txt
+++ b/Documentation/devicetree/bindings/net/can/rcar_can.txt
@@ -19,7 +19,8 @@ Required properties:
 	      "renesas,can-r8a7793" if CAN controller is a part of R8A7793 SoC.
 	      "renesas,can-r8a7794" if CAN controller is a part of R8A7794 SoC.
 	      "renesas,can-r8a7795" if CAN controller is a part of R8A7795 SoC.
-	      "renesas,can-r8a7796" if CAN controller is a part of R8A7796 SoC.
+	      "renesas,can-r8a7796" if CAN controller is a part of R8A77960 SoC.
+	      "renesas,can-r8a77961" if CAN controller is a part of R8A77961 SoC.
 	      "renesas,can-r8a77965" if CAN controller is a part of R8A77965 SoC.
 	      "renesas,can-r8a77990" if CAN controller is a part of R8A77990 SoC.
 	      "renesas,can-r8a77995" if CAN controller is a part of R8A77995 SoC.
@@ -40,7 +41,7 @@ Required properties:
 - pinctrl-names: must be "default".
 
 Required properties for R8A774A1, R8A774B1, R8A774C0, R8A774E1, R8A7795,
-R8A7796, R8A77965, R8A77990, and R8A77995:
+R8A77960, R8A77961, R8A77965, R8A77990, and R8A77995:
 For the denoted SoCs, "clkp2" can be CANFD clock. This is a div6 clock and can
 be used by both CAN and CAN FD controller at the same time. It needs to be
 scaled to maximum frequency if any of these controllers use it. This is done
-- 
2.25.1

