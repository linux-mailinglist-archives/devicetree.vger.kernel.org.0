Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA2C53FE830
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 05:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233239AbhIBD4F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 23:56:05 -0400
Received: from inva021.nxp.com ([92.121.34.21]:34604 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233122AbhIBD4F (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Sep 2021 23:56:05 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 562C3201E2D;
        Thu,  2 Sep 2021 05:55:02 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 263BE2015C0;
        Thu,  2 Sep 2021 05:55:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 8AE26183AD07;
        Thu,  2 Sep 2021 11:54:56 +0800 (+08)
From:   Shengjiu Wang <shengjiu.wang@nxp.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: fsl_rpmsg: Add compatible string for i.MX8ULP
Date:   Thu,  2 Sep 2021 11:32:05 +0800
Message-Id: <1630553525-25655-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for i.MX8ULP platform which support audio
function through rpmsg audio channel on M core.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml b/Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml
index 61802a11baf4..d370c98a62c7 100644
--- a/Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml
@@ -21,6 +21,7 @@ properties:
       - fsl,imx8mn-rpmsg-audio
       - fsl,imx8mm-rpmsg-audio
       - fsl,imx8mp-rpmsg-audio
+      - fsl,imx8ulp-rpmsg-audio
 
   model:
     $ref: /schemas/types.yaml#/definitions/string
-- 
2.17.1

