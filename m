Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 613F7706C9B
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 17:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbjEQPZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 11:25:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232206AbjEQPZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 11:25:43 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8966C212B
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 08:25:33 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 27740861BF;
        Wed, 17 May 2023 17:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684337131;
        bh=+xQn6x8oUFrIA0o4ijehWZbii0Ux1WX6Npl6s6lpi9U=;
        h=From:To:Cc:Subject:Date:From;
        b=l6urBZ4SMcI4BejngZtJ0G5pO94CGdyveBtNnnl4HC63RkueHQNCEawW3NrNDhcot
         tsJ/CKu6XzAPPjSrjdYwtva6GGFsCyB6ZPCwD/slA6AfPI7MdG5WPx7LnO15shB0QL
         vspqKgXLqALxk+oulHbvhHXsw20eJ2Lr25oW30sEExqMSeKANzKsrpgkfu5NDUCtKD
         NS8K6P6nftde6z+uAwJ7anvpkJW/dj5x98lAjJYe7v3TY0DpJMFAMB5Ho7U7KgDWoI
         JUV5fo6/23NeR3P9/Go1WaLqfO8N11d77aqiMTtvkG4jM5HlzMYMD9FJ8ziT/IJJrq
         cSQp4oP8aXsaQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed nvmem bindings
Date:   Wed, 17 May 2023 17:25:11 +0200
Message-Id: <20230517152513.27922-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
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
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
V2: Use generic syscon supernode
---
 .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
new file mode 100644
index 0000000000000..7c1173a1a6218
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
+    syscon {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        syscon@14c {
+            compatible = "nvmem-syscon";
+            reg = <0x14c 0x4>;
+        };
+    };
-- 
2.39.2

