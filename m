Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9096F8346C
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733134AbfHFOzb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:55:31 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:50377 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733142AbfHFOzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:55:31 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E5BE1E000B;
        Tue,  6 Aug 2019 14:55:28 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC compatibles
Date:   Tue,  6 Aug 2019 16:54:56 +0200
Message-Id: <20190806145500.24109-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Describe the compatible properties for the new Marvell SoCs:
* CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
* CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
* CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)

CP115 are similar to CP110 in terms of features.

There are three development boards based on these SoCs:
* CN9130-DB: comes as a single mother board (with the CP115 bundled)
* CN9131-DB: same as CN9130-DB with one additional modular CP115
* CN9132-DB: same as CN9130-DB with two additional modular CP115

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/arm/marvell/armada-7k-8k.txt           | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
index df98a9c82a8c..8eb34ca4c4f0 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
@@ -1,7 +1,7 @@
 Marvell Armada 7K/8K Platforms Device Tree Bindings
 ---------------------------------------------------
 
-Boards using a SoC of the Marvell Armada 7K or 8K families must carry
+Boards using a SoC of the Marvell Armada 7K/8K or CN913x families must carry
 the following root node property:
 
  - compatible, with one of the following values:
@@ -18,6 +18,17 @@ the following root node property:
    - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
       when the SoC being used is the Armada 8040
 
+   - "marvell,cn9130", "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with no external CP.
+
+   - "marvell,cn9131", "marvell,cn9130",
+     "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with one external CP.
+
+   - "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
+     "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with two external CPs.
+
 Example:
 
 compatible = "marvell,armada7040-db", "marvell,armada7040",
-- 
2.20.1

