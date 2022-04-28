Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46CD351384C
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 17:27:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349139AbiD1Pak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 11:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349023AbiD1Pag (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 11:30:36 -0400
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1B06AFB04;
        Thu, 28 Apr 2022 08:27:21 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-d6e29fb3d7so5465529fac.7;
        Thu, 28 Apr 2022 08:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=o31DFDmabQgZ+k0PXIEBF6NX+T3/67HLmVqjjLtD4lc=;
        b=MviVbn8hg4TaRBBIiADvF4ieuzUr0ZLiKtmoxZmzNg4eYLnioT55ks0UieuFIKVyVb
         ZG1fVTkCzhD5ywtNqmapUyRIeVS2vuB/vb2d4xzh/hefHfWgYS/sy1X1nSmzM15+sjwN
         CYLxMujskuMGPe5LRWHvSyjrepUJBH4hVDaRVEcG27x5dKa/erL/fLAShzR/Lh8I4AGY
         CCkb7vMMz4Z7eNB+ky52EEZg5ji+6FzGdAYZD7208PCdfMPilHEIWmBg2SNWVrzRPO0O
         2xm7ahqTVrU+VXNTw7EIhDGLQ2D0eAnj3fVBoeTz21YfvQ0CaSaFk6eSE0SHlaf0EytH
         T8+A==
X-Gm-Message-State: AOAM532/7UZOFJdj/CJOV5fqsBhKzdBkRafTdd3zC75k8P+yfifG5iz8
        PjzYP5qdcIcHLTknZofe35bHorsI7g==
X-Google-Smtp-Source: ABdhPJzhB2gzYvtuFkjfJmGKGjta2A94qCL767qMJCIzjSN4FOuqnVDvSkWOqCnjQb1f7MuVfM8N0A==
X-Received: by 2002:a05:6870:b693:b0:de:7356:a3a3 with SMTP id cy19-20020a056870b69300b000de7356a3a3mr13718315oab.24.1651159640916;
        Thu, 28 Apr 2022 08:27:20 -0700 (PDT)
Received: from xps15.. (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.googlemail.com with ESMTPSA id z4-20020a9d7a44000000b00605ee0f1128sm91781otm.26.2022.04.28.08.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 08:27:20 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org
Cc:     Stephen Boyd <sboyd@codeaurora.org>,
        Ben Dooks <ben.dooks@codethink.co.uk>
Subject: [dtschema PATCH] schemas: clock: Add example for 'clock-indices'
Date:   Thu, 28 Apr 2022 10:27:19 -0500
Message-Id: <20220428152719.2263164-1-robh@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add description for assigned-clocks properties from clock-binding.txt in
the Linux kernel.

This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
are the original authors.

Cc: Ben Dooks <ben.dooks@codethink.co.uk>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Please ack the license change.

 dtschema/schemas/clock/clock.yaml | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/dtschema/schemas/clock/clock.yaml b/dtschema/schemas/clock/clock.yaml
index 5299653b80b6..433a858ef31e 100644
--- a/dtschema/schemas/clock/clock.yaml
+++ b/dtschema/schemas/clock/clock.yaml
@@ -94,9 +94,21 @@ properties:
 
   clock-indices:
     $ref: "/schemas/types.yaml#/definitions/uint32-array"
-    description: If the identifying number for the clocks in the node
-      is not linear from zero, then this allows the mapping of identifiers
-      into the clock-output-names array.
+    description: |
+      If the identifying number for the clocks in the node is not linear from
+      zero, then this allows the mapping of identifiers into the
+      clock-output-names array.
+
+      For example, if we have two clocks <&oscillator 1> and <&oscillator 3>:
+
+        oscillator {
+            compatible = "myclocktype";
+            #clock-cells = <1>;
+            clock-indices = <1>, <3>;
+            clock-output-names = "clka", "clkb";
+        }
+
+      This ensures we do not have any empty strings in clock-output-names
 
   # Consumer properties
   clocks:
-- 
2.34.1

