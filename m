Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC61271577
	for <lists+devicetree@lfdr.de>; Sun, 20 Sep 2020 17:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbgITPxJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Sep 2020 11:53:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726316AbgITPxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Sep 2020 11:53:09 -0400
X-Greylist: delayed 440 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 20 Sep 2020 08:53:07 PDT
Received: from mail.blocktrron.ovh (mars.blocktrron.ovh [IPv6:2001:41d0:401:3000::cbd])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B44AEC061755
        for <devicetree@vger.kernel.org>; Sun, 20 Sep 2020 08:53:07 -0700 (PDT)
Received: from localhost.localdomain (p200300e53f3f5e006864d0f74357ffb3.dip0.t-ipconnect.de [IPv6:2003:e5:3f3f:5e00:6864:d0f7:4357:ffb3])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.blocktrron.ovh (Postfix) with ESMTPSA id 6DDB12E4CE;
        Sun, 20 Sep 2020 17:45:41 +0200 (CEST)
From:   David Bauer <mail@david-bauer.net>
To:     robh+dt@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com,
        jagan@amarulasolutions.com, jbx6244@gmail.com,
        robin.murphy@arm.com, kever.yang@rock-chips.com,
        m.reichl@fivetechno.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date:   Sun, 20 Sep 2020 17:45:27 +0200
Message-Id: <20200920154528.88185-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam: Yes
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Signed-off-by: David Bauer <mail@david-bauer.net>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index db2e35796795..61722b9ffa9a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -104,6 +104,11 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi R2S
+        items:
+          - const: friendlyarm,nanopi-r2s
+          - const: rockchip,rk3328
+
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
-- 
2.28.0

