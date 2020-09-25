Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3FB02793C3
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 23:50:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727351AbgIYVuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 17:50:13 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:34662 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726807AbgIYVuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 17:50:13 -0400
X-Greylist: delayed 601 seconds by postgrey-1.27 at vger.kernel.org; Fri, 25 Sep 2020 17:50:12 EDT
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 9B7F2A390BF; Fri, 25 Sep 2020 23:40:09 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Date:   Fri, 25 Sep 2020 23:40:02 +0200
Message-Id: <20200925214003.27186-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The prefix is already used in arm/armada-388-helios4.dts.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 63996ab03521..b2cbdad45846 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -545,6 +545,8 @@ patternProperties:
     description: Kionix, Inc.
   "^kobo,.*":
     description: Rakuten Kobo Inc.
+  "^kobol,.*":
+    description: Kobol Innovations Pte. Ltd.
   "^koe,.*":
     description: Kaohsiung Opto-Electronics Inc.
   "^kontron,.*":
-- 
2.28.0

