Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 584D042C1B8
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 15:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235484AbhJMNvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 09:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234531AbhJMNvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 09:51:52 -0400
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B7FC061570
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 06:49:48 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9c93:91ff:d58:ecfb])
        by baptiste.telenet-ops.be with bizsmtp
        id 5Rpk2600J0KW32a01RpkbH; Wed, 13 Oct 2021 15:49:46 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maedc-004bZh-7n; Wed, 13 Oct 2021 15:49:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maedb-0035bZ-Nx; Wed, 13 Oct 2021 15:49:43 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,i2s-[rt]x-route
Date:   Wed, 13 Oct 2021 15:49:42 +0200
Message-Id: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

make dt_binding_check:

    Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-rx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S RX sdis to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
	    hint: "maxItems" is not needed with an "items" list
	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
    Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-tx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S TX sdos to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
	    hint: "maxItems" is not needed with an "items" list
	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#

Drop the "-" from the enums to fix this.

Fixes: 510f1c133aedcf69 ("ASoC: dt-bindings: rockchip: add i2s-tdm bindings")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v4/v5 differed slightly from what Rob suggested in his review of v3
https://lore.kernel.org/all/YS6kHkeOKCJMOOIf@robh.at.kernel.org/
---
 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index dce8b4136ec6db4e..ce3e18b50230dc9b 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -112,7 +112,7 @@ properties:
       rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.
     maxItems: 4
     items:
-      - enum: [0, 1, 2, 3]
+      enum: [0, 1, 2, 3]
 
   rockchip,i2s-tx-route:
     $ref: /schemas/types.yaml#/definitions/uint32-array
@@ -122,7 +122,7 @@ properties:
       rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.
     maxItems: 4
     items:
-      - enum: [0, 1, 2, 3]
+      enum: [0, 1, 2, 3]
 
   rockchip,io-multiplex:
     description:
-- 
2.25.1

