Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8725C28693D
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727608AbgJGUjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:39:52 -0400
Received: from inva020.nxp.com ([92.121.34.13]:54152 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726348AbgJGUjv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Oct 2020 16:39:51 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 82C4F1A01E0;
        Wed,  7 Oct 2020 22:39:50 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 758701A01C2;
        Wed,  7 Oct 2020 22:39:50 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 305A82030C;
        Wed,  7 Oct 2020 22:39:50 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3 02/11] dt-bindings: net: add the 10gbase-r connection type
Date:   Wed,  7 Oct 2020 23:39:27 +0300
Message-Id: <20201007203936.23953-3-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201007203936.23953-1-ioana.ciornei@nxp.com>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add 10gbase-r to the list of accepted PHY connection types between an
Ethernet device and a physical PHY. This is available as a valid
connection type since commit c114574ebfdf ("net: phy: add
PHY_INTERFACE_MODE_10GBASER")

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v3:
 -  new patch

 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 137fbb95c0ea..75f9155ce161 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -95,6 +95,7 @@ properties:
       # 10GBASE-KR, XFI, SFI
       - 10gbase-kr
       - usxgmii
+      - 10gbase-r
 
   phy-mode:
     $ref: "#/properties/phy-connection-type"
-- 
2.28.0

