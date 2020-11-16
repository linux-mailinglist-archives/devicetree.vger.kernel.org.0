Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C48F2B4AE9
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 17:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731972AbgKPQYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 11:24:37 -0500
Received: from relay11.mail.gandi.net ([217.70.178.231]:38341 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731960AbgKPQYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 11:24:36 -0500
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 56ED1100002;
        Mon, 16 Nov 2020 16:24:33 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        <Steen.Hegelund@microchip.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH v3 2/5] dt-bindings: interrupt-controller: Add binding for few Microsemi interrupt controllers
Date:   Mon, 16 Nov 2020 17:24:24 +0100
Message-Id: <20201116162427.1727851-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201116162427.1727851-1-gregory.clement@bootlin.com>
References: <20201116162427.1727851-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Device Tree binding documentation for the Microsemi Jaguar2,
Luton and Serval interrupt controller that is part of the ICPU. It is
connected directly to the MIPS core interrupt controller.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 .../bindings/interrupt-controller/mscc,ocelot-icpu-intr.yaml  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mscc,ocelot-icpu-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/mscc,ocelot-icpu-intr.yaml
index 3a537635a859..5483ed7062ba 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mscc,ocelot-icpu-intr.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/mscc,ocelot-icpu-intr.yaml
@@ -21,7 +21,11 @@ properties:
   compatible:
     items:
       - enum:
+          - mscc,jaguar2-icpu-intr
+          - mscc,luton-icpu-intr
           - mscc,ocelot-icpu-intr
+          - mscc,serval-icpu-intr
+
 
   '#interrupt-cells':
     const: 1
-- 
2.29.2

