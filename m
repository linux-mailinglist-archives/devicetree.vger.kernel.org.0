Return-Path: <devicetree+bounces-459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3537A19F9
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:09:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE8AD281A1A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD5DD534;
	Fri, 15 Sep 2023 09:09:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FEA2F38
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 09:09:51 +0000 (UTC)
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBE930C3
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 02:07:40 -0700 (PDT)
Received: from ramsan.of.borg ([84.195.187.55])
	by albert.telenet-ops.be with bizsmtp
	id m97e2A00B1C8whw0697ehz; Fri, 15 Sep 2023 11:07:38 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qh4nH-003lJx-6w;
	Fri, 15 Sep 2023 11:07:38 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qh4na-00Gdnd-6R;
	Fri, 15 Sep 2023 11:07:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: arm: realview: Spelling s/ARM 11/Arm11/, s/Cortex A-/Cortex-A/
Date: Fri, 15 Sep 2023 11:07:33 +0200
Message-Id: <3d4b1bbc105ccb8cc0a4ea79b76c70df7d0683e6.1694768749.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix misspellings of "Arm11", "Cortex-A8", and "Cortex-A9".

While at it, add a missing comma before "and", and reflow the paragraph.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2:
  - Add Acked-by,
  - Handle "Arm11", too,
  - Add mising comma before "and",
  - Refow paragraph.
---
 Documentation/devicetree/bindings/arm/arm,realview.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
index 8d3ed2e4ed315ca5..94b01fc294e9bb91 100644
--- a/Documentation/devicetree/bindings/arm/arm,realview.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
@@ -10,9 +10,9 @@ maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
 
 description: |+
-  The ARM RealView series of reference designs were built to explore the ARM
-  11, Cortex A-8 and Cortex A-9 CPUs. This included new features compared to
-  the earlier CPUs such as TrustZone and multicore (MPCore).
+  The ARM RealView series of reference designs were built to explore the Arm11,
+  Cortex-A8, and Cortex-A9 CPUs. This included new features compared to the
+  earlier CPUs such as TrustZone and multicore (MPCore).
 
 properties:
   $nodename:
-- 
2.34.1


