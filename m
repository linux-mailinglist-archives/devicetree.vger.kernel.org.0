Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 157D64C0D5D
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 08:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238693AbiBWHgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 02:36:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236984AbiBWHgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 02:36:21 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A69D70F5F
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:35:55 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E2CC73FCAE
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645601753;
        bh=KcttjNAmbIhSjRs0HRxX1kGL0G5aH52vHUuc1heZPO0=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=t+NFzcSm2pspI9nCvSvHxCqmW5zvyfKUKrTFLzyUYwEWigEJkop6hFTXaQ/OrOW4i
         MDCHLMiUbYDRZ+WXY8PEu0FCaRvgKsiv1LB9BBjo5HDoI8WuW6I2WBz4JFArwJcklY
         GyyB4lhg36rYVcs3KTZL/x2dVJk6p97Zz5aAg3efzaCbMSC6dukqlZQWCinwANugvW
         nwfd/jX2kvM8AJuD7+vR/9dnWQNk2DXukeQk4BdZK8P0DJph0sqv6pJJGIjQfa5ovI
         5tYV2TyYSWVUER0wQLuFho5AyNg9zEz+pL14kbuCoA9LIeLKhuMTEn5+Cd5TQeGqrz
         Tt4v3WK28Vb3g==
Received: by mail-ej1-f69.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso6719896ejk.17
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:35:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KcttjNAmbIhSjRs0HRxX1kGL0G5aH52vHUuc1heZPO0=;
        b=TVHLWHf/uxZTNi6mXsjafpVSsCZmknGJfHFBA4wO91NsmERFbCkjbQaoJnzoPacLhC
         m3IT2mzTbDdm7nUCQcIXUgYdV874x9DCbksNC2/l7fiXmMRXC5og2BcvrLyZ9l9Tk6bo
         3lMkW7ig6Q0oIZznzZeeq4g7Npb+UKhro1GUVw+JRwJV4vaHaDAoWa5XsiC244wDjevE
         uFu+RCFd7kvoB900kPX6jkdeU0ShTrNHCxbMi1EI6L3vZe23V3nFap5pVseTxsi0a6qG
         G+s30tjVC3MDmbp+1OCLHgvLDp9Z2rvMRZZPUxVm8hgV+wFTzYE6BQOmb5UOW1PoFGoo
         iHWg==
X-Gm-Message-State: AOAM532js46euNYxln+cMePmtDxJXLJvolnQCx/r7Ziilo/ujvZ9tbJ1
        F+36ybyR9RVoKvzUOHMSZJH1XQYolunvPGUHalNnfW3aoGx8eKZqBJ3qrRUmdL6L2eY/yWcsEhY
        9kZEB8Xns0IrgMdD1Ey6J5jlOzTAYs+pNg79Inqo=
X-Received: by 2002:a17:906:f2cc:b0:6ce:7164:ac9a with SMTP id gz12-20020a170906f2cc00b006ce7164ac9amr21593532ejb.629.1645601753546;
        Tue, 22 Feb 2022 23:35:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzOwY2Eh1aNU5JQEK3K13jDU3E29JLr5VjvAqtJ/sUL4KqaFQ0/gvrXV7486by/PMgh4dIqSw==
X-Received: by 2002:a17:906:f2cc:b0:6ce:7164:ac9a with SMTP id gz12-20020a170906f2cc00b006ce7164ac9amr21593519ejb.629.1645601753310;
        Tue, 22 Feb 2022 23:35:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id u4sm7129842ejn.216.2022.02.22.23.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 23:35:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: example: Extend with typical case (int-array and disallowed prop)
Date:   Wed, 23 Feb 2022 08:35:47 +0100
Message-Id: <20220223073547.8746-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220223073547.8746-1-krzysztof.kozlowski@canonical.com>
References: <20220223073547.8746-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend the example with:
 - an array where each element has constraints (min/max value),
 - property not allowed in case of different compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/example-schema.yaml        | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/example-schema.yaml b/Documentation/devicetree/bindings/example-schema.yaml
index c078796ae1b5..80a28781845d 100644
--- a/Documentation/devicetree/bindings/example-schema.yaml
+++ b/Documentation/devicetree/bindings/example-schema.yaml
@@ -162,6 +162,16 @@ properties:
       don't need a type.
     enum: [ 100, 200, 300 ]
 
+  vendor,int-array-variable-length-and-constrained-values:
+    description: Array might define what type of elements might be used (e.g.
+      their range).
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 3
+    items:
+      minimum: 0
+      maximum: 8
+
   child-node:
     description: Child nodes are just another property from a json-schema
       perspective.
@@ -207,6 +217,10 @@ allOf:
     then:
       required:
         - foo-supply
+    else:
+      # If otherwise the property is not allowed:
+      properties:
+        foo-supply: false
   # Altering schema depending on presence of properties is usually done by
   # dependencies (see above), however some adjustments might require if:
   - if:
-- 
2.32.0

