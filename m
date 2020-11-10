Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FBC62AD589
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 12:45:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729555AbgKJLpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 06:45:19 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:45083 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726152AbgKJLpS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 06:45:18 -0500
Received: from localhost (82-65-9-182.subs.proxad.net [82.65.9.182])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 68B8A200002;
        Tue, 10 Nov 2020 11:45:15 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        <Steen.Hegelund@microchip.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/9] dt-bindings: mips: Add Serval and Jaguar2
Date:   Tue, 10 Nov 2020 12:45:01 +0100
Message-Id: <20201110114508.1197652-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201110114508.1197652-1-gregory.clement@bootlin.com>
References: <20201110114508.1197652-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Serval and Jaguar2 SoCs belong to the same family as Ocelot and Luton.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 Documentation/devicetree/bindings/mips/mscc.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mips/mscc.txt b/Documentation/devicetree/bindings/mips/mscc.txt
index cc93fd302553..cc916eaeed0a 100644
--- a/Documentation/devicetree/bindings/mips/mscc.txt
+++ b/Documentation/devicetree/bindings/mips/mscc.txt
@@ -4,7 +4,7 @@ Boards with a SoC of the Microsemi MIPS family shall have the following
 properties:
 
 Required properties:
-- compatible: "mscc,ocelot" or "mscc,luton"
+- compatible: "mscc,ocelot", "mscc,luton", "mscc,serval" or "mscc,jr2"
 
 
 * Other peripherals:
-- 
2.28.0

