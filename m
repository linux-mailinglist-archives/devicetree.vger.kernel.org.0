Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66462FE768
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 11:20:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728923AbhAUKTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:19:53 -0500
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:36777 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729173AbhAUKTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:19:00 -0500
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 70E452000C;
        Thu, 21 Jan 2021 10:18:15 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 3/6] dt-bindings: Add vendor prefix for Silvaco
Date:   Thu, 21 Jan 2021 11:18:05 +0100
Message-Id: <20210121101808.14654-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210121101808.14654-1-miquel.raynal@bootlin.com>
References: <20210121101808.14654-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Silvaco, Inc. is an EDA provider of software tools used for process
and device development and for analog/mixed-signal, power IC and
memory design [1].

[1] https://www.silvaco.com/company/profile/profile.html

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 041ae90b0d8f..df1b7971c07e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1075,6 +1075,8 @@ patternProperties:
     description: Shenzhen Sunchip Technology Co., Ltd
   "^SUNW,.*":
     description: Sun Microsystems, Inc
+  "^silvaco,.*":
+    description: Silvaco, Inc.
   "^swir,.*":
     description: Sierra Wireless
   "^syna,.*":
-- 
2.20.1

