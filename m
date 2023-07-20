Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7705C75B066
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 15:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231402AbjGTNwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 09:52:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231400AbjGTNwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 09:52:01 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72CF51BFC
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 06:51:59 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-66767d628e2so519000b3a.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 06:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1689861119; x=1690465919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwIjpadbA1bA+sFrh7qCEP0xay0bdLfI0ypl9RcKrcI=;
        b=IhvSszQH7ed5TdLQb/bhOsEEIP+Ti0MkfkYGqt7ql/69xRHHL7UfR2C0woZnzRxj4M
         wKZ13zLz+NT/Sjq9PqG+ncOpY+pxRLudha7/fqfiqsjW8PueNjqggffIFnocWL2F+SxM
         3YQ279j8kREhvC0zy5sclfszwT0fQn+POzPFYIr6odeP9tEGjT2F0bI00dhSmAkOa0kc
         GaudZfPloQNfmuUiH6rlF+9PF7ak7XwXfiIe57vpXx+S+YmjAyD392jnF9kY7F5DHpxt
         v+Jny5mkuXnvvHrKbZiABGpuoaoov8tddSudAw0eYt97XWovnpYh9ptj57+BN71t9RCa
         K/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689861119; x=1690465919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwIjpadbA1bA+sFrh7qCEP0xay0bdLfI0ypl9RcKrcI=;
        b=EI3tHGoi/6ur7Eu59HGAropOZbXGmiwTRJwYLCQWG01Bt5wfXx3/G8eZl33G6PxNDK
         4Eu/p7m8LZFsQXhucW8IkxLxA0+rslsK8VrCZkdZVOw52PK0yvjbI48fjLX4+tVeba5U
         o8839ItIcylVsl1S97aVl1zPh/XsRhcfHYm8jYmc6GRuY0uacgWZakw2YRYeO8VC+EdF
         Ls6ADNp0Io9vGQH6COvRii6hLI/YA0PgSK0J6WDHstXcQuorr8wjHGU4gyOb895g+LHO
         KLS3ilK4u6noGjlHi+J/1jSTbgETd9VVscRkNwxN+s+DaYe409rgpwo5ADDY9RHq06B9
         Iajw==
X-Gm-Message-State: ABy/qLZmM8ivLbQpJyizNu9kbtD+GdBpVFmfjW9UH4fuyW7FzriTSCUL
        dYIAF3GkQaFXhMzJQVnlDX2IxA==
X-Google-Smtp-Source: APBJJlG0R23vqKexKWkbs1Zy4QZQSyTSNTWmgwbdNzmyOhYsE1lhy3kIgnsfh3MEtlFSekjQ6Tdxkw==
X-Received: by 2002:a05:6a20:549c:b0:135:4858:681 with SMTP id i28-20020a056a20549c00b0013548580681mr6149717pzk.9.1689861118900;
        Thu, 20 Jul 2023 06:51:58 -0700 (PDT)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id j18-20020aa78d12000000b00679fef56287sm1197529pfe.147.2023.07.20.06.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 06:51:58 -0700 (PDT)
From:   Eric Lin <eric.lin@sifive.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
        will@kernel.org, mark.rutland@arm.com, tglx@linutronix.de,
        peterz@infradead.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com, Eric Lin <eric.lin@sifive.com>,
        Nick Hu <nick.hu@sifive.com>
Subject: [PATCH v2 1/3] dt-bindings: riscv: sifive: Add SiFive Private L2 cache controller
Date:   Thu, 20 Jul 2023 21:51:19 +0800
Message-Id: <20230720135125.21240-2-eric.lin@sifive.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230720135125.21240-1-eric.lin@sifive.com>
References: <20230720135125.21240-1-eric.lin@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This add YAML DT binding documentation for SiFive Private L2
cache controller

Signed-off-by: Eric Lin <eric.lin@sifive.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Nick Hu <nick.hu@sifive.com>
---
 .../bindings/cache/sifive,pl2cache.yaml       | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml

diff --git a/Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml b/Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml
new file mode 100644
index 000000000000..ee8356c5eeee
--- /dev/null
+++ b/Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (C) 2023 SiFive, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/cache/sifive,pl2cache.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Private L2 Cache Controller
+
+maintainers:
+  - Greentime Hu  <greentime.hu@sifive.com>
+  - Eric Lin  <eric.lin@sifive.com>
+
+description:
+  The SiFive Private L2 Cache Controller is per core and
+  communicates with both the upstream L1 caches and
+  downstream L3 cache or memory, enabling a high-performance
+  cache subsystem.
+
+allOf:
+  - $ref: /schemas/cache-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: sifive,pl2cache1
+      - const: cache
+
+  cache-block-size: true
+  cache-level: true
+  cache-sets: true
+  cache-size: true
+  cache-unified: true
+
+  reg:
+    maxItems: 1
+
+  next-level-cache: true
+
+required:
+  - compatible
+  - cache-block-size
+  - cache-level
+  - cache-sets
+  - cache-size
+  - cache-unified
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    cache-controller@10104000 {
+        compatible = "sifive,pl2cache1","cache";
+        cache-block-size = <64>;
+        cache-level = <2>;
+        cache-sets = <512>;
+        cache-size = <262144>;
+        cache-unified;
+        reg = <0x10104000 0x4000>;
+        next-level-cache = <&L4>;
+    };
-- 
2.40.1

