Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF4497596B9
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 15:28:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbjGSN2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 09:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231314AbjGSN15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 09:27:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A46F6CD
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 06:27:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3231E611F9
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 13:27:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF863C433C7;
        Wed, 19 Jul 2023 13:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689773275;
        bh=j3WX6VG11qqN+dpQF3sJs5YpLWNhuU3oA4/SdLnqNsc=;
        h=From:To:Cc:Subject:Date:From;
        b=TkbGgqI2uHBMg/3re0wMJFBESxNGJu0GQa0F8Zi0Insc/Ek1M8TqOLpIG2psOkqzx
         8kbjZqobnekrFx5AoVCqIOurl8sTKaznudyJ73Xy4vfdNpSpqRjcve1E2k+eBo1ZHz
         xajQwHfJGgdyJzOMph1L2LUNsVTMNFyMz2HWgjxzvbjfoUHCHbNuPkmjzLj4z/RLWl
         qFJVSGIWNdGlYCN08pDrucSAH6LJ1PjjVNIVGIf9I8P8oZXPn1sTlIPKDS6Grq5YEw
         R5gv8pEr/TZ/XDLfAftR1GPPPAPBoCoeqgFTtZUUlALE0Zy9TXAj03rifuIzXgI3Qb
         p+YTRnfsqs71g==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCHv2] dt-bindings: reset: altr,modrst-offset is not required for arm64 SoCFPGA
Date:   Wed, 19 Jul 2023 08:27:49 -0500
Message-Id: <20230719132749.661914-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The property "altr,modrst-offset" is only applicable to arm32 SoCFPGA
platforms, thus it not required for all platforms.

While at it, update my email address.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: remove the need for else statement since "altr,modrst-offset" is
    already allowed
---
 .../devicetree/bindings/reset/altr,rst-mgr.yaml      | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
index 4379cec6b35a..761c70cf9ddf 100644
--- a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
+++ b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Altera SOCFPGA Reset Manager
 
 maintainers:
-  - Dinh Nguyen <dinguyen@altera.com>
+  - Dinh Nguyen <dinguyen@kernel.org>
 
 properties:
   compatible:
@@ -32,9 +32,17 @@ properties:
 required:
   - compatible
   - reg
-  - altr,modrst-offset
   - '#reset-cells'
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: altr,stratix10-rst-mgr
+then:
+  properties:
+    altr,modrst-offset: false
+
 additionalProperties: false
 
 examples:
-- 
2.25.1

