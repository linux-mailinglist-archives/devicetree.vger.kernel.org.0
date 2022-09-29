Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB5E65EF7D0
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 16:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235703AbiI2OlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 10:41:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235556AbiI2Ok7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 10:40:59 -0400
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [IPv6:2001:4b7a:2000:18::166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6DA1C054E
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:40:56 -0700 (PDT)
Received: from fdsafasdfasdf.mikrus.ds.pw.edu.pl (unknown [194.29.137.22])
        (using TLSv1.3 with cipher TLS_CHACHA20_POLY1305_SHA256 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA512)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 3F4B34018D;
        Thu, 29 Sep 2022 16:40:52 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Cc:     towinchenmi@gmail.com,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: apple,aic: Document A7-A11 compatibles
Date:   Thu, 29 Sep 2022 16:40:38 +0200
Message-Id: <20220929144039.40011-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatibles for Apple A7-A11 SoCs.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
Changes since v1:
- separate t8015 out, it does not fall back to s5l8960x

 .../bindings/interrupt-controller/apple,aic.yaml | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/apple,aic.yaml b/Documentation/devicetree/bindings/interrupt-controller/apple,aic.yaml
index e18107eafe7c..0619dd73a7b0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/apple,aic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/apple,aic.yaml
@@ -36,9 +36,19 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: apple,t8103-aic
-      - const: apple,aic
+    oneOf:
+      - const: apple,s5l8960x-aic
+      - items:
+          - enum:
+              - apple,s8000-aic
+              - apple,t7000-aic
+              - apple,t8010-aic
+          - const: apple,s5l8960x-aic
+      - items:
+          - enum:
+              - apple,t8015-aic
+              - apple,t8103-aic
+          - const: apple,aic
 
   interrupt-controller: true
 
-- 
2.30.2

