Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73E0841E9CD
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 11:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353147AbhJAJni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 05:43:38 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46614
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353141AbhJAJnd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 05:43:33 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EE1F1402D5
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 09:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633081308;
        bh=PsCkcyaCEnAXm38y0vJxGzfoUxQhj4fpVQ0zBS6vTGo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Z69FWhzBuDngr71+XbEHH8r8gH5ILvBWm5jQz5UTy1uAiwL3f8+EguI4aV7f1qhfA
         SJrD1quzXVj5PluYS4Q33xiHIUlvppgSUW8Zt48gh1YqMJTK8RAR6FMDU6vDUMN03Y
         U9Csut8RTKVBbHfNcKGUr/z24Rtka5UfsZbJ5bfXWC9EgIZAqVf43lvbJW5BgTt1/E
         Tf3fuVggeQibKAF43P77hEZGNcfRVKypi/HsrE7T8crgmc66XNdeIYEXSByvVJQ9IF
         hsAVnz6cbwqWjO3Q8JL59vb1IFkP5wq2qgqvXcp1+b39DoBQ9EwjNKWEjUEFZgmnDs
         XYKd/NcfmayiQ==
Received: by mail-lf1-f72.google.com with SMTP id c24-20020ac25318000000b003f257832dfdso8355402lfh.20
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 02:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PsCkcyaCEnAXm38y0vJxGzfoUxQhj4fpVQ0zBS6vTGo=;
        b=2uRJAGic3dDlbwefEKM6qoXVwYKDnceoERKMcQPIpeRq62/iUQjkOsKjqxHtatk1nh
         C9RX/PnK8I8tnvo8BG54VpCBvhDJWyeWZe0TFCNR0dJ3Fo3vEGdj4Jp3SgfpjsVIW4Nw
         n8gXve6MHHmo13UDAenzIpfkmANL1yVYcVUy89cvjLMCKxplbWLq8kF/K4efxCtnGCDZ
         9i0wfJsRJS2tAk+7J+7zBYNywE4ewgmbNmbytCHDjmjJ4C3fHx3KU6ukzY1fpdgZzbzN
         HjNLZiC4+hu6YdJqJsJHeUD2myvcKBNycY+9Pa2EYd6cgmsEZfOf7b9PQeNWcautzfmo
         J86w==
X-Gm-Message-State: AOAM533fMYEk+mukar9k+QSbrtL93V5oXhNRk+k1fDvxGrxKmZkH6tt7
        ORYXuQjR1MD1Dz9nzULachAzbjje8bZP5PZQniYaBpT3BjpHr1M7D//h4jfCkm90nUTeRC50Vd5
        iEvSsSLtr5HMl6xGtecc3//Pf9hOPIuZAYEFZN7s=
X-Received: by 2002:a2e:8745:: with SMTP id q5mr330467ljj.331.1633081308279;
        Fri, 01 Oct 2021 02:41:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjckcYD+4IDpwNfPju5WCHtLSBxCtXtCtf29IdYTu8oI8wjzmG4OKY3Udt78D8Cq6FYOzgyA==
X-Received: by 2002:a2e:8745:: with SMTP id q5mr330449ljj.331.1633081308052;
        Fri, 01 Oct 2021 02:41:48 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id g29sm673784lfj.212.2021.10.01.02.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Oct 2021 02:41:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 03/10] dt-bindings: clock: samsung,s2mps11: convert to dtschema
Date:   Fri,  1 Oct 2021 11:40:59 +0200
Message-Id: <20211001094106.52412-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
References: <20211001094106.52412-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the clock provider of Samsung S2MPS11 family of PMICs to DT
schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/clock/samsung,s2mps11.txt        | 49 -------------------
 .../bindings/clock/samsung,s2mps11.yaml       | 45 +++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 46 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/samsung,s2mps11.txt
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml

diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.txt b/Documentation/devicetree/bindings/clock/samsung,s2mps11.txt
deleted file mode 100644
index 2726c1d58a79..000000000000
--- a/Documentation/devicetree/bindings/clock/samsung,s2mps11.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-Binding for Samsung S2M and S5M family clock generator block
-============================================================
-
-This is a part of device tree bindings for S2M and S5M family multi-function
-devices.
-More information can be found in bindings/mfd/sec-core.txt file.
-
-The S2MPS11/13/15 and S5M8767 provide three(AP/CP/BT) buffered 32.768 kHz
-outputs. The S2MPS14 provides two (AP/BT) buffered 32.768 KHz outputs.
-
-To register these as clocks with common clock framework instantiate under
-main device node a sub-node named "clocks".
-
-It uses the common clock binding documented in:
- - Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-
-Required properties of the "clocks" sub-node:
- - #clock-cells: should be 1.
- - compatible: Should be one of: "samsung,s2mps11-clk", "samsung,s2mps13-clk",
-               "samsung,s2mps14-clk", "samsung,s5m8767-clk"
-   The S2MPS15 uses the same compatible as S2MPS13, as both provides similar
-   clocks.
-
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-    Clock               ID           Devices
-    ----------------------------------------------------------
-    32KhzAP		0            S2MPS11/13/14/15, S5M8767
-    32KhzCP		1            S2MPS11/13/15, S5M8767
-    32KhzBT		2            S2MPS11/13/14/15, S5M8767
-
-Include dt-bindings/clock/samsung,s2mps11.h file to use preprocessor defines
-in device tree sources.
-
-
-Example:
-
-	s2mps11_pmic@66 {
-		compatible = "samsung,s2mps11-pmic";
-		reg = <0x66>;
-
-		s2m_osc: clocks {
-			compatible = "samsung,s2mps11-clk";
-			#clock-cells = <1>;
-			clock-output-names = "xx", "yy", "zz";
-		};
-	};
diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
new file mode 100644
index 000000000000..1410c51e0e7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/samsung,s2mps11.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2M and S5M family clock generator block
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for S2M and S5M family of Power
+  Management IC (PMIC).
+
+  The S2MPS11/13/15 and S5M8767 provide three(AP/CP/BT) buffered 32.768 kHz
+  outputs. The S2MPS14 provides two (AP/BT) buffered 32.768 KHz outputs.
+
+  All available clocks are defined as preprocessor macros in
+  dt-bindings/clock/samsung,s2mps11.h header.
+
+  See also Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml for
+  additional information and example.
+
+properties:
+  compatible:
+    enum:
+      - samsung,s2mps11-clk
+      - samsung,s2mps13-clk # S2MPS13 and S2MPS15
+      - samsung,s2mps14-clk
+      - samsung,s5m8767-clk
+
+  "#clock-cells":
+    const: 1
+
+  clock-output-names:
+    minItems: 3
+    maxItems: 3
+    description: Names for AP, CP and BT clocks.
+
+required:
+  - compatible
+  - "#clock-cells"
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index 0f28fb4b4e5c..241fe78a3282 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16599,7 +16599,7 @@ M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Supported
-F:	Documentation/devicetree/bindings/clock/samsung,s2mps11.txt
+F:	Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
 F:	Documentation/devicetree/bindings/mfd/samsung,sec-core.txt
 F:	Documentation/devicetree/bindings/regulator/samsung,s2m*.txt
 F:	Documentation/devicetree/bindings/regulator/samsung,s5m*.txt
-- 
2.30.2

