Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23F483F6D3A
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 03:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236959AbhHYBxJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 21:53:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236442AbhHYBxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 21:53:09 -0400
X-Greylist: delayed 1133 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Aug 2021 18:52:24 PDT
Received: from fudo.makrotopia.org (fudo.makrotopia.org [IPv6:2a07:2ec0:3002::71])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D002C061757
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 18:52:24 -0700 (PDT)
Received: from local
        by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
         (Exim 4.94.2)
        (envelope-from <daniel@makrotopia.org>)
        id 1mIhnG-0007sr-4b; Wed, 25 Aug 2021 03:33:29 +0200
Date:   Wed, 25 Aug 2021 02:33:23 +0100
From:   Daniel Golle <daniel@makrotopia.org>
To:     linux-mediatek@lists.infradead.org, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Ryder Lee <ryder.lee@mediatek.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Felix Fietkau <nbd@nbd.name>,
        Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/2] dt: bindings: net: mt76: add eeprom-data property
Message-ID: <YSWdv7ZKz7SBtF+v@makrotopia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

EEPROM data for mt76 can be embedded into device-tree as an array.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../devicetree/bindings/net/wireless/mediatek,mt76.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.yaml b/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.yaml
index 3e2c2e43175e5..1489d3c1cd6ec 100644
--- a/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.yaml
@@ -47,6 +47,11 @@ properties:
 
   ieee80211-freq-limit: true
 
+  mediatek,eeprom-data:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      EEPROM data embedded as array.
+
   mediatek,mtd-eeprom:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description:
-- 
2.32.0

