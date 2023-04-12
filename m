Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31C5F6DFD21
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 19:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjDLR6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 13:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjDLR6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 13:58:14 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE1D61A9
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 10:58:13 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6a4213bfbb2so26868a34.0
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 10:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681322292; x=1683914292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d2uw0pnbO7YgaFGMc7HjwyNcPXnRtQStNSMvy/NZNMw=;
        b=CRINQtglWRDFKrsCRyvGOzktaOvab5x2F96gRppWJOzYoS862rqLvBuQGiHPG+vZRq
         vWKFw1rYOoYQ/XnyCN69hnv6NBOlvUDUg0m7k7i4Z6B7jGmLDjBwKU7g8ev7GrJJ9cNY
         gaNzzAUqG0xy5cDFqECC7IAlO3l01MACdBNdE8Y/a1DK0S715Ux/ROLM0WAprekl3R7N
         2kANckd4+cjTPf1XrBspGHrQaZNJRus9y4WgSaYnOVPX96zthFOL+qEQ0FV7hwDb1V89
         weGEq2rF7yq9rMALQ7BETyBpfn0/pFN59Ig+7aKhprypXJ/NiKtnxpua5xbG5qzKzxAw
         bW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681322292; x=1683914292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d2uw0pnbO7YgaFGMc7HjwyNcPXnRtQStNSMvy/NZNMw=;
        b=Dd2AKjRvQQU5FeJvtpuoYf3TCQ6kqPkgrR24joaoY3I4w3fiszxnaHPhy/wQpkugbR
         nfceA9OPRd57IXnEU2i4AwJIZzec7Bm0/CbI+hPgPmGd3DpCtfDdbZIW3FedEL+vNDIf
         TbHxozHokLhsIVfF252DFtd8IY8SvK7liwSpucmFgZE84uLIDDAkZcFKEeuzfiif7ZTL
         mSdEVb9q7X7hNmgq+K4xHhjq0FEw128LCvpDR8TCLaF/2ehfRf6aGsP2y/j5y4tqrZ4f
         aGZsMDCCPZyBvldpz6aCfpIdi+4Nm4dIHaz6xCBUsBgYydWiQqdkbFOM/H+AGiyCeIxe
         NtRg==
X-Gm-Message-State: AAQBX9ccGotfjN1dJwre/UOGsbMcr+dm8UaBM69bE0FY/CLt8J657wVn
        CwDttrMO+sMesieb00jYtSw=
X-Google-Smtp-Source: AKy350abdyjnrVs0S69rq9Jb8RhHOVKQq6sbgPsExmOg+jtr0lPrDBjrMAIAi1t6JtCIT5V+Efd0gQ==
X-Received: by 2002:a05:6870:a18a:b0:183:cf65:a4bd with SMTP id a10-20020a056870a18a00b00183cf65a4bdmr9607102oaf.5.1681322292431;
        Wed, 12 Apr 2023 10:58:12 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9b67:19cc:485f:3268])
        by smtp.gmail.com with ESMTPSA id zh20-20020a0568716b9400b0017281100b75sm6323803oab.42.2023.04.12.10.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 10:58:11 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     dianders@chromium.org
Cc:     neil.armstrong@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: drm/bridge: ti-sn65dsi86: Fix the video-interfaces.yaml references
Date:   Wed, 12 Apr 2023 14:58:00 -0300
Message-Id: <20230412175800.2537812-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

video-interface.txt does not exist anymore, as it has been converted
to video-interfaces.yaml.

Instead of referencing video-interfaces.yaml multiple times,
pass it as a $ref to the schema.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Pass  video-interfaces.yaml as a $ref to the schema. (Rob)

 .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml    | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
index 911564468c5e..6ec6d287bff4 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
@@ -90,7 +90,7 @@ properties:
 
         properties:
           endpoint:
-            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            $ref: /schemas/media/video-interfaces.yaml#
             unevaluatedProperties: false
 
             properties:
@@ -106,7 +106,6 @@ properties:
                     description:
                       If you have 1 logical lane the bridge supports routing
                       to either port 0 or port 1.  Port 0 is suggested.
-                      See ../../media/video-interface.txt for details.
 
                   - minItems: 2
                     maxItems: 2
@@ -118,7 +117,6 @@ properties:
                     description:
                       If you have 2 logical lanes the bridge supports
                       reordering but only on physical ports 0 and 1.
-                      See ../../media/video-interface.txt for details.
 
                   - minItems: 4
                     maxItems: 4
@@ -132,7 +130,6 @@ properties:
                     description:
                       If you have 4 logical lanes the bridge supports
                       reordering in any way.
-                      See ../../media/video-interface.txt for details.
 
               lane-polarities:
                 minItems: 1
@@ -141,7 +138,6 @@ properties:
                   enum:
                     - 0
                     - 1
-                description: See ../../media/video-interface.txt
 
             dependencies:
               lane-polarities: [data-lanes]
-- 
2.34.1

