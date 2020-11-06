Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE682A93B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 11:09:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726751AbgKFKJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 05:09:00 -0500
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:46707 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726621AbgKFKJA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Nov 2020 05:09:00 -0500
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id AF75F1BF20E;
        Fri,  6 Nov 2020 10:08:57 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        <Steen.Hegelund@microchip.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 2/9] dt-bindings: mips: Add Serval and Jaguar2
Date:   Fri,  6 Nov 2020 11:08:42 +0100
Message-Id: <20201106100849.969240-4-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201106100849.969240-1-gregory.clement@bootlin.com>
References: <20201106100849.969240-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Serval and Jaguar2 SoCs belong to the same family as Ocelot and Luton.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 Documentation/devicetree/bindings/mips/mscc.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mips/mscc.txt b/Documentation/devicetree/bindings/mips/mscc.txt
index cc93fd302553..bdbebb525393 100644
--- a/Documentation/devicetree/bindings/mips/mscc.txt
+++ b/Documentation/devicetree/bindings/mips/mscc.txt
@@ -4,7 +4,7 @@ Boards with a SoC of the Microsemi MIPS family shall have the following
 properties:
 
 Required properties:
-- compatible: "mscc,ocelot" or "mscc,luton"
+- compatible: "mscc,ocelot", "mscc,luton", "mscc,serval" or "mscc,jaguar2"
 
 
 * Other peripherals:
-- 
2.28.0

