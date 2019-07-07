Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66050615E4
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2019 20:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbfGGSZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Jul 2019 14:25:55 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:53188 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726623AbfGGSZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Jul 2019 14:25:55 -0400
Received: from pendragon.nordic-sky.finnair.com (unknown [38.98.37.142])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 81C09CC;
        Sun,  7 Jul 2019 20:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1562523954;
        bh=zAOes8FySHTQv7tmZmjdSQN4VB42lZkYdDrm3pzmyro=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Y+ZUBSH4QFMso2TLZ32w5QaIXXQUwNRuDqDMwWHe1hh4Uwi7nCBiLFYFH5Vs6O937
         vGotevZBJZGiZEhAwgWMFACxko1rOymjrdeTWjWy10ttcCDqrL3lAqPXgXk4OyTXm5
         Vh+07NqEakBkHRsMNEjaaCg5da2C886e+OcRct1A=
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
Subject: [PATCH 17/60] dt-bindings: Add legacy 'toppoly' vendor prefix
Date:   Sun,  7 Jul 2019 21:18:54 +0300
Message-Id: <20190707181937.6250-14-laurent.pinchart@ideasonboard.com>
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

The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
document it as legacy.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2514463f2c63..d78527eb8254 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -867,6 +867,8 @@ patternProperties:
     description: Tecon Microprocessor Technologies, LLC.
   "^topeet,.*":
     description: Topeet
+  "^toppoly,.*":
+    description: TPO (legacy prefix, see 'tpo')
   "^toradex,.*":
     description: Toradex AG
   "^toshiba,.*":
-- 
Regards,

Laurent Pinchart

