Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DCAB42B0B2
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 02:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234903AbhJMAIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 20:08:25 -0400
Received: from inva021.nxp.com ([92.121.34.21]:33166 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232942AbhJMAIZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 20:08:25 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8B12F2026B6;
        Wed, 13 Oct 2021 02:06:21 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com [134.27.49.11])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5169B2001AA;
        Wed, 13 Oct 2021 02:06:21 +0200 (CEST)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.142])
        by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id 7D86840A85;
        Tue, 12 Oct 2021 17:06:20 -0700 (MST)
From:   Li Yang <leoyang.li@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 01/17] dt-bindings: arm: fsl: add ls1021a-tsn board
Date:   Tue, 12 Oct 2021 18:58:07 -0500
Message-Id: <20211012235824.31096-2-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20211012235824.31096-1-leoyang.li@nxp.com>
References: <20211012235824.31096-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing board in the binding docuemnt.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 60f4862ba15e..65299c0d1272 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -886,6 +886,7 @@ properties:
           - enum:
               - fsl,ls1021a-moxa-uc-8410a
               - fsl,ls1021a-qds
+              - fsl,ls1021a-tsn
               - fsl,ls1021a-twr
           - const: fsl,ls1021a
 
-- 
2.25.1

