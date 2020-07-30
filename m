Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B755233C12
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 01:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730413AbgG3XVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jul 2020 19:21:06 -0400
Received: from mars.blocktrron.ovh ([51.254.112.43]:42452 "EHLO
        mail.blocktrron.ovh" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730367AbgG3XVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jul 2020 19:21:06 -0400
Received: from localhost.localdomain (p200300e53f0c59003c99c88dc8f0abc2.dip0.t-ipconnect.de [IPv6:2003:e5:3f0c:5900:3c99:c88d:c8f0:abc2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.blocktrron.ovh (Postfix) with ESMTPSA id 9EC201E067;
        Fri, 31 Jul 2020 01:20:59 +0200 (CEST)
From:   David Bauer <mail@david-bauer.net>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date:   Fri, 31 Jul 2020 01:20:53 +0200
Message-Id: <20200730232054.286381-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d4a4045092df..b17931ec2d86 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -104,6 +104,11 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
 
+      - description: FriendlyARM NanoPi R2S
+        items:
+          - const: friendlyarm,nanopi-r2s
+          - const: rockchip,rk3328
+
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
-- 
2.27.0

