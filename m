Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99244381B06
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 22:39:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234937AbhEOUlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 May 2021 16:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234959AbhEOUlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 May 2021 16:41:09 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39ECEC061573
        for <devicetree@vger.kernel.org>; Sat, 15 May 2021 13:39:54 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8EAA781CD1;
        Sat, 15 May 2021 22:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1621111190;
        bh=djzY4tmJ8xS65obV3JnFAexto6vglwPAZBqoPNyM52s=;
        h=From:To:Cc:Subject:Date:From;
        b=L5qr5F0xRb6w18zuJtLf9es4bH6I6fnWHId4E9dzAs8nAR+3e12cWgOJ0bNRRxDqf
         Nit+Vl6MesKIcPjQxKXR1JgT95pbH1bP93FhLTOzB74LapAUX4HOV6FRnFne/NkoFn
         a1J0tKfBl2yDjiTL7oa5mLDIiB1Q/nkFLMR3uhJKEm6iSR7z5C+oBfMVinKMA54VAt
         ma37/nrIzh/9nhSaf3iEc7vuzPoAwoSV16hkngnMDO7fGM6TuMo2Dmn0EpfcpR/M7N
         WM4QHsD9eo3YsiB7M+LGzERzAMtnhZXS9OYvJPvk53eWBsD+kKazqGTDzePgaae4oU
         keMZG7MgopNYg==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     ch@denx.de, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix spacing
Date:   Sat, 15 May 2021 22:39:32 +0200
Message-Id: <20210515203932.366799-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing spaces to make the diagrams readable, no functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/lvds.yaml      | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
index 31164608ba1d..06d7ca692d0d 100644
--- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
@@ -52,9 +52,9 @@ properties:
         [VESA] specifications. Data are transferred as follows on 3 LVDS lanes.
 
       Slot	    0       1       2       3       4       5       6
-            ________________                         _________________
+                ________________                         _________________
       Clock	                \_______________________/
-              ______  ______  ______  ______  ______  ______  ______
+                  ______  ______  ______  ______  ______  ______  ______
       DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
       DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
       DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
@@ -63,9 +63,9 @@ properties:
         specifications. Data are transferred as follows on 4 LVDS lanes.
 
       Slot	    0       1       2       3       4       5       6
-            ________________                         _________________
+                ________________                         _________________
       Clock	                \_______________________/
-              ______  ______  ______  ______  ______  ______  ______
+                  ______  ______  ______  ______  ______  ______  ______
       DATA0	><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
       DATA1	><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
       DATA2	><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
@@ -75,9 +75,9 @@ properties:
         Data are transferred as follows on 4 LVDS lanes.
 
       Slot	    0       1       2       3       4       5       6
-            ________________                         _________________
+                ________________                         _________________
       Clock	                \_______________________/
-              ______  ______  ______  ______  ______  ______  ______
+                  ______  ______  ______  ______  ______  ______  ______
       DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
       DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
       DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
-- 
2.30.2

