Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADEE56105EF
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 00:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234291AbiJ0Wun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 18:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbiJ0Wun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 18:50:43 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D06BF6CD36
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 15:50:41 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0195D847F4;
        Fri, 28 Oct 2022 00:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1666911039;
        bh=L2RUJA6avzpluMIYNWCe6g6q67lWcj7BpG+HavvWTlE=;
        h=From:To:Cc:Subject:Date:From;
        b=eabp1C37oKKwYakkhkqaoQhqqPySvEp4qVqT0A8jp9K2UNhUOuJwFYX84xFZHZTmf
         /yGKHhfk9GtytDDAMzcR/VI1juuh0APRaO9JnGU9yK0vp/ODCP0pzHvpltW7phDLC6
         AfC9ktC8OTlqGoBhTH5zMoEhAq9jMe6HoO+M1SZ1HqNC6SLLL6S3LfRm9+er2EtNxO
         a1wu7jPvFDXkSTFUyuANPsWzAm2A/SSOcf3eWhKXxpOoCRyNWBluhQkz3JzalE9vMU
         BV1SVb29z6nNRxVvw5U5lcHJSk6dZDhkywjtVIu75yX9YLYtBKesL/AqTOb3nRqKlf
         nrZ0YMGqLN8BQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/3] [RFC] dt-bindings: nvmem: syscon: Add syscon backed nvmem bindings
Date:   Fri, 28 Oct 2022 00:50:18 +0200
Message-Id: <20221027225020.215149-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add trivial bindings for driver which permits exposing syscon backed
register to userspace. This is useful e.g. to expose U-Boot boot
counter on various platforms where the boot counter is stored in
random volatile register, like STM32MP15xx TAMP_BKPxR register.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rafał Miłecki <rafal@milecki.pl>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
new file mode 100644
index 0000000000000..3035a0b2cd24a
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic syscon backed nvmem
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - nvmem-syscon
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
+    tamp@5c00a000 {
+        compatible = "st,stm32-tamp", "syscon", "simple-mfd";
+        reg = <0x5c00a000 0x400>;
+
+        nvmem-syscon {
+            compatible = "nvmem-syscon";
+            reg = <0x14c 0x4>;
+        };
+    };
-- 
2.35.1

