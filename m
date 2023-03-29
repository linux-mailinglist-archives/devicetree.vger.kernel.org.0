Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12B8F6CEC0A
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 16:45:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbjC2Op1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 10:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbjC2OpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 10:45:10 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C53559FE
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 07:42:45 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id n7-20020a4ae1c7000000b0053b61145406so2458056oot.11
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 07:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680100964; x=1682692964;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4TgCeK/FWwpScXFN0SkgR07QFqbQkFTnE4FHqctST/Q=;
        b=MBlJPXAskV5cOjS851q/v1jvH+O8w4O/Wo26RXvk8iIeJgykY4vkD97EKryHvGt1PR
         g9MtrBxo9oIhw0FBdyPbe1YRhsqWZWgVCjwrwZgBbuvYZ1SPZkkq7MCO7NA8kQgAE2on
         k1i1eKrBurtXPo0/NbokOCD+LuI2jjjEdIAiCkIUoiO7WiJrwLEKHCL3CLU7s+WXKf8a
         l79Rcfg29/qI0zgSGeZ15mxm7Gz9fbJ1BUNmLCTMov/sm8G32mfxLIdxZwH1WOv78oBU
         uqGOLM8yTUFvJEwvK9hyLzSZkTTdXVBL7hXCBCeju6e3oXfFF2p6aoT830nMu0ck+oxP
         EUng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680100964; x=1682692964;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4TgCeK/FWwpScXFN0SkgR07QFqbQkFTnE4FHqctST/Q=;
        b=z4xy4n1JtPwYo9WJrKBuup5hZnkT5aNhUQw8Dn3ffUd9+8oHVhQP0PEoOsvGa5bi3j
         tipwu4YV6bwI5X2Gb54fwmEs2foufjWB1G+aTOyJXsM5VwuQz5zoe3kuTYlZnxF70uPV
         7wZJnr2rcalTG8v0XVsia39pLh6NHgo432e1lBYLR6om81fEU+FDQHTtHLfKfw+L+t2e
         8Snbz+fXDg15bhb4KR9sSAG4lYkS+7XpfRiFZTzSm7Y9rRFdmFXKg9+AL0UKWUll4AZA
         Z84wzXLRbpxuCodIJVdrjbBRlOND8Yc2swInhVMD7GVZfxZLa/iuhzMgz9rfcZ74YZ1x
         Q+Sg==
X-Gm-Message-State: AO0yUKUWut8XcGFdZeYPt6z55FusUxj08LYBF5WKxh1terBtk3Dy0X2b
        4WtctUYVyYwTBcCZpfy624kiGb7sfictMQ==
X-Google-Smtp-Source: AK7set/TWkvXPSoOa0QfT40/Y6m8YavrDMihlZIkTI4xvLJMt51azGNhzKDWzbnVRTBqbGD0P8YDDw==
X-Received: by 2002:a4a:c90d:0:b0:525:bdbb:2f94 with SMTP id v13-20020a4ac90d000000b00525bdbb2f94mr8394039ooq.1.1680100964557;
        Wed, 29 Mar 2023 07:42:44 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1c2d:271:d34:84ea])
        by smtp.gmail.com with ESMTPSA id v12-20020a4aad8c000000b0053b909a5229sm7223691oom.4.2023.03.29.07.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 07:42:44 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     inki.dae@samsung.com, marex@denx.de, jagan@amarulasolutions.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add 'lane-polarities'
Date:   Wed, 29 Mar 2023 11:41:54 -0300
Message-Id: <20230329144155.699196-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The Samsung DSIM IP block allows the inversion of the clock and
data lanes.

Add an optional property called 'lane-polarities' that describes the
polarities of the MIPI DSI clock and data lanes.

This is property is useful for properly describing the hardware
when the board designer decided to switch the polarities of the MIPI DSI
clock and/or data lanes.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/exynos/exynos_dsim.txt      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
index 2a5f0889ec32..65ed8ef7aed7 100644
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
+++ b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
@@ -29,6 +29,12 @@ Required properties:
 
 Optional properties:
   - power-domains: a phandle to DSIM power domain node
+  - lane-polarities: Array that describes the polarities of the clock and data lanes.
+    1: inverted polarity
+    0: normal polarity
+    The first entry corresponds to the clock lanes. Subsequent entries correspond to the data lanes.
+    Example of a 4-lane system with only the clock lanes inverted:
+    lane-polarities = <1 0 0 0 0>;
 
 Child nodes:
   Should contain DSI peripheral nodes (see MIPI DSI bindings [1]).
-- 
2.34.1

