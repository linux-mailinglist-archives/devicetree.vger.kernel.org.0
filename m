Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5F532E664E
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 17:12:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388304AbgL1QL4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 11:11:56 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:38101 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394144AbgL1QLz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 11:11:55 -0500
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7619A240005;
        Mon, 28 Dec 2020 16:11:13 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/4] dt-bindings: Add vendor prefix for Silvaco
Date:   Mon, 28 Dec 2020 17:11:04 +0100
Message-Id: <20201228161107.11804-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228161107.11804-1-miquel.raynal@bootlin.com>
References: <20201228161107.11804-1-miquel.raynal@bootlin.com>
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

