Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 323A232EC2A
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:31:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230341AbhCENax (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:30:53 -0500
Received: from inva021.nxp.com ([92.121.34.21]:58134 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230386AbhCENan (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 5 Mar 2021 08:30:43 -0500
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C8162006AC;
        Fri,  5 Mar 2021 14:30:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D7362010B6;
        Fri,  5 Mar 2021 14:30:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 00C65402C9;
        Fri,  5 Mar 2021 14:30:29 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v5 01/18] dt-bindings: arm: fsl: add imx8qm boards compatible string
Date:   Fri,  5 Mar 2021 21:17:30 +0800
Message-Id: <1614950268-22073-2-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add imx8qm boards compatible string

Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 297c87f45db8..842bb061d1e4 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -755,6 +755,12 @@ properties:
           - const: zii,imx8mq-ultra
           - const: fsl,imx8mq
 
+      - description: i.MX8QM based Boards
+        items:
+          - enum:
+              - fsl,imx8qm-mek           # i.MX8QM MEK Board
+          - const: fsl,imx8qm
+
       - description: i.MX8QXP based Boards
         items:
           - enum:
-- 
2.25.1

