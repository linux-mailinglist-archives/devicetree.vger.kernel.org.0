Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F322F8863
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:24:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbhAOWYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:24:12 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51870 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbhAOWYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:24:11 -0500
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 154CD1381;
        Fri, 15 Jan 2021 23:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610749406;
        bh=GsFEbIUp28O/bXAtCgPgK0ml1MI/Xl1O7day7F+o2Gw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=PQxR5whZoLMZyF6Ba7908cs5P5dtagntkFMr61k5Jv3TYwt0F9WjENPNx1Zx2qfYM
         RNy83uhefpZwQ0PMnSfPYd58U9tDbfhx6wBe+JAQDvFguSPToznQZ8Onl/Bno7z6aT
         zWWSOiR+6vMdtXLCXIeNZGuy1zpdKk52KVLV7exw=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v3 2/3] dt-bindings: display: mxsfb: Add and fix compatible strings
Date:   Sat, 16 Jan 2021 00:23:03 +0200
Message-Id: <20210115222304.5427-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
References: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Additional compatible strings have been added in DT source for the
i.MX6SL, i.MX6SLL, i.MX6UL and i.MX7D without updating the bindings.
Most of the upstream DT sources use the fsl,imx28-lcdif compatible
string, which mostly predates the realization that the LCDIF in the
i.MX6 and newer SoCs have extra features compared to the i.MX28.

Update the bindings to add the missing compatible strings, with the
correct fallback values. This fails to validate some of the upstream DT
sources. Instead of adding the incorrect compatible fallback to the
binding, the sources should be updated separately.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes since v2:

- Fix indentation under items too

Changes since v1:

- Fix indentation under enum
---
 .../devicetree/bindings/display/fsl,lcdif.yaml | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index bbd47d80d253..4fc24d482b1c 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -15,11 +15,19 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - fsl,imx23-lcdif
-      - fsl,imx28-lcdif
-      - fsl,imx6sx-lcdif
-      - fsl,imx8mq-lcdif
+    oneOf:
+      - enum:
+          - fsl,imx23-lcdif
+          - fsl,imx28-lcdif
+          - fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+              - fsl,imx6ul-lcdif
+              - fsl,imx7d-lcdif
+              - fsl,imx8mq-lcdif
+          - const: fsl,imx6sx-lcdif
 
   reg:
     maxItems: 1
-- 
Regards,

Laurent Pinchart

