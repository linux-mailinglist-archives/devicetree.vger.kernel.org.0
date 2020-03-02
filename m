Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 349F3175EF4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 16:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727159AbgCBP6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Mar 2020 10:58:23 -0500
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:43705 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727085AbgCBP6X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Mar 2020 10:58:23 -0500
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 748E61BF213;
        Mon,  2 Mar 2020 15:58:09 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: gpu: mali-bifrost: Add Rockchip PX30 compatible
Date:   Mon,  2 Mar 2020 16:58:07 +0100
Message-Id: <20200302155808.11273-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip PX30 SoCs feature a Bifrost Mali GPU.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 5f1fd6d7ee0f..283ee0c274d1 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - amlogic,meson-g12a-mali
+          - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
 
   reg:
-- 
2.20.1

