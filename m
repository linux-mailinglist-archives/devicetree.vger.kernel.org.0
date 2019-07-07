Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE21C615E2
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2019 20:25:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727052AbfGGSZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Jul 2019 14:25:25 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:53156 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726623AbfGGSZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Jul 2019 14:25:25 -0400
Received: from pendragon.nordic-sky.finnair.com (unknown [38.98.37.142])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id E7CB9CC;
        Sun,  7 Jul 2019 20:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1562523923;
        bh=uh3oBzGSdr7HxrPeRizjQCfwuS3kpqGzJKVQUCnRDM0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=SQIkCbDcHlhm/Or5Rm8uC2xCvshSfHPq5Vd0HOjcQr794cHLkC7QIYYS+wul2HkKn
         oOv4JA5E9dDlN4rZ6ZL7TA/gdxApYGXcXJ+nfoqtC8EyZ73/Awb0nOFObPRqtg/GIL
         ed9yRyJcNWnTGYMFlZE+5taVz+58QYgLKUiKqhdE=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 16/60] dt-bindings: Add vendor prefix for LG Display
Date:   Sun,  7 Jul 2019 21:18:53 +0300
Message-Id: <20190707181937.6250-13-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

LG Display is an LCD display manufacturer. Originally formed as a joint
venture by LG Electronics and Philips Electronics, it was formerly known
as LG.Philips LCD, hence the DT vendor prefix lgphilips (which is
already in active use in the kernel).

More information is available at
https://en.wikipedia.org/wiki/LG_Display.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f0bcff033ecc..2514463f2c63 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -471,6 +471,8 @@ patternProperties:
     description: Lenovo Group Ltd.
   "^lg,.*":
     description: LG Corporation
+  "^lgphilips,.*":
+    description: LG Display
   "^libretech,.*":
     description: Shenzhen Libre Technology Co., Ltd
   "^licheepi,.*":
-- 
Regards,

Laurent Pinchart

