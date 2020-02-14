Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCB6C15D650
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 12:10:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729089AbgBNLKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Feb 2020 06:10:43 -0500
Received: from Galois.linutronix.de ([193.142.43.55]:54330 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729149AbgBNLKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Feb 2020 06:10:43 -0500
Received: from [5.158.153.55] (helo=adam.guests.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
        (Exim 4.80)
        (envelope-from <bage@linutronix.de>)
        id 1j2Yrp-00043V-2u; Fri, 14 Feb 2020 12:10:41 +0100
From:   bage@linutronix.de
To:     devicetree@vger.kernel.org
Cc:     Bastian Germann <bage@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add Linutronix Testbox
Date:   Fri, 14 Feb 2020 12:10:02 +0100
Message-Id: <20200214111003.11115-3-bage@linutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214111003.11115-1-bage@linutronix.de>
References: <20200206113328.7296-1-bage@linutronix.de>
 <20200214111003.11115-1-bage@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bastian Germann <bage@linutronix.de>

Add device tree bindings for the newly added Linutronix Testbox board.

Signed-off-by: Bastian Germann <bage@linutronix.de>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 327ce6730823..71f0b1ae2805 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -394,6 +394,12 @@ properties:
           - const: linksprite,pcduino3-nano
           - const: allwinner,sun7i-a20
 
+      - description: Linutronix Testbox v2
+        items:
+          - const: linutronix,testbox-v2
+          - const: lamobo,lamobo-r1
+          - const: allwinner,sun7i-a20
+
       - description: HAOYU Electronics Marsboard A10
         items:
           - const: haoyu,a10-marsboard
-- 
2.20.1

