Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAE8032EC2E
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbhCENaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:30:55 -0500
Received: from inva020.nxp.com ([92.121.34.13]:33572 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229781AbhCENas (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 5 Mar 2021 08:30:48 -0500
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F36D91A0E98;
        Fri,  5 Mar 2021 14:30:43 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3214B1A0EAC;
        Fri,  5 Mar 2021 14:30:39 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A8F9E40249;
        Fri,  5 Mar 2021 14:30:32 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v5 02/18] dt-bindings: mailbox: mu: add imx8qm support
Date:   Fri,  5 Mar 2021 21:17:32 +0800
Message-Id: <1614950268-22073-4-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add imx8qm support

Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
index 15cef82cd356..1a3dff277e2b 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
@@ -34,12 +34,15 @@ properties:
               - fsl,imx8mm-mu
               - fsl,imx8mn-mu
               - fsl,imx8mp-mu
+              - fsl,imx8qm-mu
               - fsl,imx8qxp-mu
           - const: fsl,imx6sx-mu
       - description: To communicate with i.MX8 SCU with fast IPC
         items:
           - const: fsl,imx8-mu-scu
-          - const: fsl,imx8qxp-mu
+          - enum:
+              - fsl,imx8qm-mu
+              - fsl,imx8qxp-mu
           - const: fsl,imx6sx-mu
 
   reg:
-- 
2.25.1

