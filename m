Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0B652F68BA
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 19:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727825AbhANSCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 13:02:00 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:44952 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbhANSCA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 13:02:00 -0500
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 3AD513AFE52
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 17:57:07 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 60F3FFF809;
        Thu, 14 Jan 2021 17:56:05 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 3/6] dt-bindings: Add vendor prefix for Silvaco
Date:   Thu, 14 Jan 2021 18:55:55 +0100
Message-Id: <20210114175558.17097-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210114175558.17097-1-miquel.raynal@bootlin.com>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com>
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

