Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F263F453F29
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 04:51:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231298AbhKQDyU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 22:54:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhKQDyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 22:54:20 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8D11C061570
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:22 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id y8so997549plg.1
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tIhZG+CbbMmgzuL06GZqXJZNzmxGG5DYaNDz94CFpeY=;
        b=RmBFqPTIMkFmrsaBO+0iCxe94FYp5PQsfcdYHGedbuSIithhbmP8MeUQ8nKHXBye1Q
         hHS6QUzwtBLvjNwgPywRNR4JzDISdb38yBokfzlP4Izsc4DzDA3RPLNSM2mQt7p6xKff
         2CaOI4x882fDDE5uxOxJsKqHZwwMHOW9Le9rHDTSmwSf19s0sXj53cayzuFFC2fsqyAw
         imYMl2m+He/T4/gxK09SsTxAvhu/SZ9C2wRGV8dM+ZWA83GmpEIMbsy5lhAsjVjrjNw9
         MjJ3pf1KwY5m7nX5Cz1DPzVcDqnjiafBpNdY/4YWUvsY5iUKLsODCiFn+ONSK60sHCyr
         MH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=tIhZG+CbbMmgzuL06GZqXJZNzmxGG5DYaNDz94CFpeY=;
        b=yQbHC4Ruz2ruiYgvCGIIdQ1Lt/7fPsHs0YW24fzwS/hoZjEJM+3EqnMQwP3m1dd9yS
         HFUnLeCZGQ0PerLPLLpu8KCkcLGLVkf2r9idl7j/P7PTMnKmx8KgByK1DvoeOWWx0LAB
         lOwBpnycoMl9UgVkeP8m++SVgoUkR4igVI08xgxWWIL96FMNlFFGEO2sZCdzmvctN2mE
         1DoRl3Y8YD2yYnuGvcjlAwzhGOp23J19+vQoXQWtO/veUjPK7lhlZm3NCCKof0nsWQU6
         +VtIk4LlCFqXdw39HDwG89RdSS6pik5B5tjkg1IPzCKS6Xh1xC8arBocU3N+aksjj8G6
         3WPA==
X-Gm-Message-State: AOAM533WzQi9Gr1xY3H6+RfC7sfOsF2/zdEDXnXD0QBZ2qACd4p8SMKv
        Wusq6LEujmIAH/DYI8jV8uI=
X-Google-Smtp-Source: ABdhPJzEbj9ggqVmPebbmGB6+qsREhi30XIsiNVa2iPnIOqFNcysnM/GBHI7tl2kQnNqYPUCMNll2Q==
X-Received: by 2002:a17:90a:690d:: with SMTP id r13mr5509019pjj.40.1637121082351;
        Tue, 16 Nov 2021 19:51:22 -0800 (PST)
Received: from voyager.guest.fluxperth.local (210-10-213-150.per.static-ipl.aapt.com.au. [210.10.213.150])
        by smtp.gmail.com with ESMTPSA id c15sm3671339pjg.53.2021.11.16.19.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 19:51:21 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.u>, Rob Herring <robh+dt@kernel.org>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: [PATCH 1/3] dt-bindings: aspeed: Add Secure Boot Controller bindings
Date:   Wed, 17 Nov 2021 11:51:04 +0800
Message-Id: <20211117035106.321454-2-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211117035106.321454-1-joel@jms.id.au>
References: <20211117035106.321454-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The secure boot controller was first introduced in the AST2600.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../bindings/arm/aspeed/aspeed,sbc.yaml       | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
new file mode 100644
index 000000000000..c72aab706484
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+# Copyright 2021 Joel Stanley, IBM Corp.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/aspeed/aspeed,sbc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ASPEED Secure Boot Controller
+
+maintainers:
+  - Joel Stanley <joel@jms.id.au>
+  - Andrew Jeffery <andrew@aj.id.au>
+
+description: |
+  The ASPEED SoCs have a register bank for interacting with the secure boot
+  controller.
+
+properties:
+  compatible:
+    items:
+      - const: aspeed,ast2600-sbc
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    sbc: secure-boot-controller@1e6f2000 {
+            compatible = "aspeed,ast2600-sbc";
+            reg = <0x1e6f2000 0x1000>;
+    };
-- 
2.33.0

