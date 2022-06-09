Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 809405451D4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 18:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234492AbiFIQ1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 12:27:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343927AbiFIQ1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 12:27:37 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5CD2449CB1
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 09:27:36 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2E0412FC;
        Thu,  9 Jun 2022 09:27:35 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 157B53F73B;
        Thu,  9 Jun 2022 09:27:33 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <Liviu.Dudau@arm.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: display: arm,malidp: remove bogus RQOS property
Date:   Thu,  9 Jun 2022 17:27:29 +0100
Message-Id: <20220609162729.1441760-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As Liviu pointed out, the arm,malidp-arqos-high-level property
mentioned in the original .txt binding was a mistake, and
arm,malidp-arqos-value needs to take its place.

The binding commit ce6eb0253cba ("dt/bindings: display: Add optional
property node define for Mali DP500") mentions the right name in the
commit message, but has the wrong name in the diff.
Commit d298e6a27a81 ("drm/arm/mali-dp: Add display QoS interface
configuration for Mali DP500") uses the property in the driver, but uses
the shorter name.

Remove the wrong property from the binding, and use the proper name in
the example. The actual property was already documented properly.

Fixes: 2c8b082a3ab1 ("dt-bindings: display: convert Arm Mali-DP to DT schema")
Link: https://lore.kernel.org/linux-arm-kernel/YnumGEilUblhBx8E@e110455-lin.cambridge.arm.com/
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reported-by: Liviu Dudau <liviu.dudau@arm.com>
---
 Documentation/devicetree/bindings/display/arm,malidp.yaml | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/arm,malidp.yaml b/Documentation/devicetree/bindings/display/arm,malidp.yaml
index 795a08ac9f128..2a17ec6fc97c0 100644
--- a/Documentation/devicetree/bindings/display/arm,malidp.yaml
+++ b/Documentation/devicetree/bindings/display/arm,malidp.yaml
@@ -71,11 +71,6 @@ properties:
       - description: number of output lines for the green channel (G)
       - description: number of output lines for the blue channel (B)
 
-  arm,malidp-arqos-high-level:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      integer describing the ARQoS levels of DP500's QoS signaling
-
   arm,malidp-arqos-value:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
@@ -113,7 +108,7 @@ examples:
         clocks = <&oscclk2>, <&fpgaosc0>, <&fpgaosc1>, <&fpgaosc1>;
         clock-names = "pxlclk", "mclk", "aclk", "pclk";
         arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
-        arm,malidp-arqos-high-level = <0xd000d000>;
+        arm,malidp-arqos-value = <0xd000d000>;
 
         port {
             dp0_output: endpoint {
-- 
2.25.1

