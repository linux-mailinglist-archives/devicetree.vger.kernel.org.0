Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA4B424C740
	for <lists+devicetree@lfdr.de>; Thu, 20 Aug 2020 23:44:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728048AbgHTVoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Aug 2020 17:44:30 -0400
Received: from mars.blocktrron.ovh ([51.254.112.43]:43714 "EHLO
        mail.blocktrron.ovh" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgHTVo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Aug 2020 17:44:29 -0400
Received: from localhost.localdomain (p200300e53f0d0e000467bd62be8be184.dip0.t-ipconnect.de [IPv6:2003:e5:3f0d:e00:467:bd62:be8b:e184])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.blocktrron.ovh (Postfix) with ESMTPSA id 291DF23E92;
        Thu, 20 Aug 2020 23:44:26 +0200 (CEST)
From:   David Bauer <mail@david-bauer.net>
To:     robh+dt@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com,
        jagan@amarulasolutions.com, jbx6244@gmail.com,
        robin.murphy@arm.com, kever.yang@rock-chips.com,
        m.reichl@fivetechno.de, t.schramm@manjaro.org, pgwipeout@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date:   Thu, 20 Aug 2020 23:44:08 +0200
Message-Id: <20200820214409.34957-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam: Yes
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
Changes in v2:
  - Change model name to FriendlyElec

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

