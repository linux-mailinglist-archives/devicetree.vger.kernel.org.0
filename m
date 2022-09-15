Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B66075B9FC1
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 18:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbiIOQkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 12:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiIOQkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 12:40:17 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B5F31204
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:40:16 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id i19so14542633pgi.1
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=3OIPMzj4iiIUGp+iaz7aXIQIdtVpCgsrY3rjXGlHnBM=;
        b=scDo2qu/3d9zD1JFvoySII91Bt4B0ahkCEeVPBGvi6EMzDwrUTjmjb8qqF5iV6PJLt
         Q0tilwKZZaMdeEnJ5/49PRYU3l2PVqACG0W15fAnOB07lNofykFEp65DYOleHxSip6ir
         8YtNMbZoui/nLCs6o+UCQASEOM7aPsRGN6uzpehyaVmDjD7ixCOTxn10ezcqbkVn5qwn
         uHDJpRt9SgdIUvK/AetCg0wqYlgxxnwe2Tan8ZzZOw4pRJJe5fTXarf5LGfzAzxIGngK
         d+5dCzbLNG2K5gdwJMrLZmpKI9GD654+b6cWYo7qV7VewUBBfLIjgnZv27oXLrwxslnA
         xJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3OIPMzj4iiIUGp+iaz7aXIQIdtVpCgsrY3rjXGlHnBM=;
        b=ao/fKQTv2A8QaQ7LRLyUuQWJAnLxS6cu/BOCQuWGn9UUvQcwzNb/kuBb9/U+YBvd2P
         bkV8k5agSjEKW1n0/pNrvJ4Ifld4DMF2BKrtS15JVUJWOq15fx0eao7NnTlYI6X2/tm6
         wlmf86V2zK86oAugTlh8/Jkjcjxwc+MpPtfyGN9/JzYcZD1SC7cFSyjpYd5OSgKQGiz+
         5z19Q846Ck2+zp2u1dF1di+nsKOiD9ZLB9GE/0Xvft5E7FJBqpVbtJnvZzVNyUWiIEMK
         NTIBJPy/5y1nuzXvsI1zI4rGQa3gcLUuOe+XgL+dDvQfnzqeu2Br3lPmEyUecq4Wc/8O
         fwbg==
X-Gm-Message-State: ACrzQf1UWCps1Uvyjx8pFl4/gVCKVNAEXo4paYDph4Idd3p8/AoiUOoQ
        tQQigJuBfnWv4ex28gTDM/WC4A==
X-Google-Smtp-Source: AMsMyM5r8FQISwAMyFiX8EKegG1Gk+rdXDrmQjySQnI8vcyS6UAFWiqS1xz5yttKhQMBY40WWHtJWA==
X-Received: by 2002:a05:6a00:a83:b0:542:7116:32a8 with SMTP id b3-20020a056a000a8300b00542711632a8mr281389pfl.79.1663260016255;
        Thu, 15 Sep 2022 09:40:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f820:a732:fc7f:74df])
        by smtp.gmail.com with ESMTPSA id x21-20020aa78f15000000b00540f3ac5fb8sm12841652pfr.69.2022.09.15.09.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 09:40:15 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, linux-clk@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 3/6] dt-bindings: clock: rockchip: Document RV1126 CRU
Date:   Thu, 15 Sep 2022 22:09:44 +0530
Message-Id: <20220915163947.1922183-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915163947.1922183-1-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for Rockchip RV1126 clock controller.

Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v5:
- none
Changes for v4:
- rebase on -next 
Changes for v3:
- none
Changes for v2:
- fixed title
- remove '|' in description
- add one example

 .../bindings/clock/rockchip,rv1126-cru.yaml   | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
new file mode 100644
index 000000000000..0998f8b922bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1126-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RV1126 Clock and Reset Unit
+
+maintainers:
+  - Jagan Teki <jagan@edgeble.ai>
+  - Finley Xiao <finley.xiao@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
+  The RV1126 clock controller generates the clock and also implements a
+  reset controller for SoC peripherals.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1126-cru
+      - rockchip,rv1126-pmucru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@ff490000 {
+      compatible = "rockchip,rv1126-cru";
+      reg = <0xff490000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.25.1

