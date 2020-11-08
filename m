Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 103832AADC6
	for <lists+devicetree@lfdr.de>; Sun,  8 Nov 2020 23:14:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728928AbgKHWOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Nov 2020 17:14:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727570AbgKHWOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Nov 2020 17:14:49 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9651BC0613CF
        for <devicetree@vger.kernel.org>; Sun,  8 Nov 2020 14:14:48 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4CTpMS3psdz1rt44;
        Sun,  8 Nov 2020 23:14:44 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4CTpMS2w1Mz1qy5Z;
        Sun,  8 Nov 2020 23:14:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id pqmUv7j6a4bA; Sun,  8 Nov 2020 23:14:43 +0100 (CET)
X-Auth-Info: LirUQGMHELDycsfgCCJoy3mBg80Y58ZOue2POre1IFM=
Received: from localhost.localdomain (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun,  8 Nov 2020 23:14:43 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Patrice Chotard <patrice.chotard@st.com>,
        Patrick Delaunay <patrick.delaunay@st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] dt-bindings: arm: stm32: Add compatible strings for DH SoMs and boards
Date:   Sun,  8 Nov 2020 23:14:38 +0100
Message-Id: <20201108221438.310406-1-marex@denx.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree compatible strings of the DH SoMs and boards.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 .../devicetree/bindings/arm/stm32/stm32.yaml      | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 009b424e456e..f9939ec28eae 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -14,6 +14,20 @@ properties:
     const: "/"
   compatible:
     oneOf:
+      - description: DH STM32MP1 SoM based Boards
+        items:
+          - enum:
+              - arrow,stm32mp157a-avenger96 # Avenger96
+              - dh,stm32mp153c-dhcom-drc02
+              - dh,stm32mp157c-dhcom-pdk2
+              - dh,stm32mp157c-dhcom-picoitx
+          - enum:
+              - dh,stm32mp153c-dhcom-som
+              - dh,stm32mp157a-dhcor-som
+              - dh,stm32mp157c-dhcom-som
+          - enum:
+              - st,stm32mp153
+              - st,stm32mp157
       - items:
           - enum:
               - st,stm32f429i-disco
@@ -39,7 +53,6 @@ properties:
           - const: st,stm32h743
       - items:
           - enum:
-              - arrow,stm32mp157a-avenger96 # Avenger96
               - lxa,stm32mp157c-mc1
               - shiratech,stm32mp157a-iot-box # IoT Box
               - shiratech,stm32mp157a-stinger96 # Stinger96
-- 
2.28.0

