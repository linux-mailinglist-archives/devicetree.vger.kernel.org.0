Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38824243213
	for <lists+devicetree@lfdr.de>; Thu, 13 Aug 2020 03:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726126AbgHMB3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Aug 2020 21:29:42 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:57534 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726518AbgHMB3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Aug 2020 21:29:39 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 21530F89;
        Thu, 13 Aug 2020 03:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1597282173;
        bh=ZlzB1T9U9Heew1KU4fD4Cj6zVn59h8amfbtV76Mcljk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rFHpWyV7koZg2kc4nVVlgb94pA3p21JnHHSM4ZTAVD5agsGCn62xVCF8xei3XnX5m
         9XSp+6AIMQS6hk5s42uvbn8BtKQ92REm9oixp9FFynjQ5JT7kO7JpNRerjhQ3kB7iY
         mFANfWyoCw0vaP7k+hYwvJ0Jz/Mz5YzKd4dopL2k=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
Subject: [PATCH 4/8] dt-bindings: display: mxsfb: Rename to fsl,lcdif.yaml
Date:   Thu, 13 Aug 2020 04:29:06 +0300
Message-Id: <20200813012910.13576-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200813012910.13576-1-laurent.pinchart@ideasonboard.com>
References: <20200813012910.13576-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the mxsfb.yaml binding schema to fsl,lcdif.yaml to match the
usual bindings naming scheme.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../devicetree/bindings/display/{mxsfb.yaml => fsl,lcdif.yaml}  | 2 +-
 MAINTAINERS                                                     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/display/{mxsfb.yaml => fsl,lcdif.yaml} (98%)

diff --git a/Documentation/devicetree/bindings/display/mxsfb.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/display/mxsfb.yaml
rename to Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index d15bb8edc29f..60210775c31e 100644
--- a/Documentation/devicetree/bindings/display/mxsfb.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/mxsfb.yaml#
+$id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Freescale/NXP i.MX LCD Interface (LCDIF)
diff --git a/MAINTAINERS b/MAINTAINERS
index e3fac23383d2..fe1bda639a39 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11757,7 +11757,7 @@ M:	Stefan Agner <stefan@agner.ch>
 L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-F:	Documentation/devicetree/bindings/display/mxsfb.yaml
+F:	Documentation/devicetree/bindings/display/fsl,lcdif.yaml
 F:	drivers/gpu/drm/mxsfb/
 
 MYLEX DAC960 PCI RAID Controller
-- 
Regards,

Laurent Pinchart

