Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 213CE5E17D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 11:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726936AbfGCJzW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 05:55:22 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:49399 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726870AbfGCJzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 05:55:22 -0400
X-Originating-IP: 185.94.189.188
Received: from localhost (unknown [185.94.189.188])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7A948C01BF;
        Wed,  3 Jul 2019 09:55:20 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 4/7] dt-bindings: display: Fix simple-framebuffer example
Date:   Wed,  3 Jul 2019 11:55:10 +0200
Message-Id: <20190703095513.12340-4-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703095513.12340-1-maxime.ripard@bootlin.com>
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The simple-framebuffer binding has a compatible that isn't one of the valid
options. Since an Allwinner pipeline is being described, let's add the
matching compatible.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/display/simple-framebuffer.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
index b052d76cf8b6..c8d73ef010b5 100644
--- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
+++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
@@ -139,7 +139,7 @@ examples:
       #size-cells = <1>;
       stdout-path = "display0";
       framebuffer0: framebuffer@1d385000 {
-        compatible = "simple-framebuffer";
+        compatible = "allwinner,simple-framebuffer", "simple-framebuffer";
         reg = <0x1d385000 3840000>;
         width = <1600>;
         height = <1200>;
-- 
2.21.0

