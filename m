Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61C6F3F0CC2
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 22:30:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232564AbhHRUag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 16:30:36 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:50790
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229965AbhHRUaf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 16:30:35 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id A439240571
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 20:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629318599;
        bh=afNSlBvYu02DicXjmlIdMONOuSvA1ml27PmqTZLXujg=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=ac+JVba4r2dBnX3PErkopRWJlMLoGv1Asi0ujLrwwWLDSoX42Lq98Ck3PkM1U+Wmo
         BJ7+urYnDKiGeI0gJUWiq3pTWQmgYynWi6mvP5FZJkxORcXr7DZ7SrvRphG8GMqN3N
         rbjzPkKzfd5ROcnA0ZnDuTS83WxwQcm9veqUxCVeL0MoZ8DyK6EHT2E1KbZXmX/b7t
         +IRiUzVoMvs7zMofJr2wvmv2p1YcDcq9GHqoArVG/L3RmDJWCi+NdD9x0EU7wfKkDW
         Lj7rYxf6O0uXoqI6h10CaTv1v3ho0u6f3t7fEgvoRQwTOM2OS1StR26kBfDn6Zbnou
         Qd5GktzSwVYYA==
Received: by mail-ed1-f71.google.com with SMTP id y39-20020a50bb2a0000b02903bc05daccbaso1659457ede.5
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 13:29:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=afNSlBvYu02DicXjmlIdMONOuSvA1ml27PmqTZLXujg=;
        b=HBx4rYMF3NMIIlZ2lyNLMlmWueNbf7eOCD9a+zpt1/JWNx2KQqYpmsz+WE4k9KHLdR
         A1Opd7x7duK8nKdVFBH21msklcAlYAdbIYnozPNMmmJ++sL0l0rhGeHcC63rHS3PKyhH
         3p6SFI9x5aYb0mUlr+31UeI5FLFKttRmMR+sLNt3rk8cn25n/3kA4RSPVUPwwLMzz0gJ
         2gt2juHEMntMWtV8K3LbX0wYNLWU/E2d1xHfwHCoGSzLOR/0xX+DY3lS/QMKsvkGL/O+
         /0LsdyUz2YP1fjx8RlrvZmGow1fET46q+ds7ZjoxdJRGeTcofo6cmyQgsbbob66WPHc0
         fTqg==
X-Gm-Message-State: AOAM530m6WkWUknpphLJZS0ZaST9yzqk4Hcvp1VwIZCMnfMyKpm7FhLV
        yEHyDf9IIDIadWYy2oZvszfAZuOtSI46XpSWltPi38Vglzp/qDlkLSEzRartLw20qN5QcqpGJa7
        IUsrr03hEJluxS4WZUO2Gfr+cZ3fdwii+QrdlfIM=
X-Received: by 2002:a17:906:b09:: with SMTP id u9mr11332288ejg.496.1629318599355;
        Wed, 18 Aug 2021 13:29:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlUwyt6DegBZjxkBvS1uKXPBCiQbCpt2q/GzSfMQsrwy3+z3k3UkYEhAMP6kPHoNFybCXXjQ==
X-Received: by 2002:a17:906:b09:: with SMTP id u9mr11332256ejg.496.1629318598975;
        Wed, 18 Aug 2021 13:29:58 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d3sm589073edv.48.2021.08.18.13.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 13:29:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Yoshinori Sato <ysato@users.sourceforge.jp>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: memory: convert H8/300 bus controller to dtschema
Date:   Wed, 18 Aug 2021 22:29:53 +0200
Message-Id: <20210818202953.16862-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert H8/300 bus controller bindings to DT schema format using
json-schema.

The conversion also extends the bindings to match what is really used in
existing devicetree sources (the original file mentions only
"renesas,h8300-bsc" but "renesas,h8300h-bsc" and "renesas,h8s-bsc" are
used with it).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Add renesas,h8s-bsc pointed by Rob.
2. Extend commit log.
---
 .../memory-controllers/renesas,h8300-bsc.txt  | 12 -------
 .../memory-controllers/renesas,h8300-bsc.yaml | 35 +++++++++++++++++++
 2 files changed, 35 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
deleted file mode 100644
index cdf406c902e2..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-* H8/300 bus controller
-
-Required properties:
-  - compatible: Must be "renesas,h8300-bsc".
-  - reg: Base address and length of BSC registers.
-
-Example.
-	bsc: memory-controller@fee01e {
-		compatible = "renesas,h8300h-bsc", "renesas,h8300-bsc";
-		reg = <0xfee01e 8>;
-	};
-
diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml
new file mode 100644
index 000000000000..2b18cef99511
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/renesas,h8300-bsc.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/renesas,h8300-bsc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: H8/300 bus controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,h8300h-bsc
+          - renesas,h8s-bsc
+      - const: renesas,h8300-bsc
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
+    memory-controller@fee01e {
+        compatible = "renesas,h8300h-bsc", "renesas,h8300-bsc";
+        reg = <0xfee01e 8>;
+    };
-- 
2.30.2

