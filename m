Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3611F5B0991
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:04:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbiIGQEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbiIGQEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:14 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7545ABBA75
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:02:49 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id l10so1796714plb.10
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=/8rl6gokx88Kuf6qcH/eMq1owuxgLHmqVncOwj3PuLg=;
        b=YSOnNkg3Uj6/xVTKMm8VlwSDo9BWyHe8bNAOm8UjOhfy5K22RhPCT+IK93C7tR8b4C
         gGipp/JY0hmtmU+jO/UmviIc0F/nl0oF/19dNDIQ0H+Y4hBETh8b04UScMhwRveQPMWr
         OHuZdryZpsJL9qUkQ3+zBmQY/mp8FZW1rziFWf8MhMH2SobpRgrJS5QSdCeLE8Bgyeza
         upmjp8YRDsxE87+0SUEWBTY66E9cBOhUM5Pr/S0qK14IAMI6A0m0WZVW1OcyzaRxcvia
         6chlFvUiV1+HEAi2aOi3soVZiIpjJ9fMwCEoRPC78Rihmf84/VRlzGy1RLZyvy0UzQRN
         MIrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=/8rl6gokx88Kuf6qcH/eMq1owuxgLHmqVncOwj3PuLg=;
        b=FnJh7YVtJ4INbg9kW0WUomvicQbVCi+W42DozhG8g/x5TtL6OWmsJjvzph7UDIFTE0
         Nnj661yJ7q5mXjrjv4Cd+IAuVeRXf+B2w6KHzf1fJAGpHZOIfT8/RQ+iu/eImDNzOqMq
         k94CVkB0Jel0FJFRwCPM/+rb8cVNRx5quxB5oy6InNbKuv/sUYdVmUqy/vxYeRaviJxi
         3hjI3gK9JNp7IYzwCVDILHYyzJhB+/Y/asZaEmOqthIGS3X3saxNg5GbnaCd0a6THKou
         OFleWxctrVCL3imfa3SwjVl/Mp6haBreru9LYzsw9Q97zXULo7tZB3rdQXCXuFROzo4+
         iTWw==
X-Gm-Message-State: ACgBeo2dwGMDHJIphgn+Z83YGjot1/+qypVMakwMGTfP5dfxA9aqcjO9
        7fclMKPXXIrKpW2KN1CUwLDQOw==
X-Google-Smtp-Source: AA6agR7O4dt+QfLaTyngTlSpQ1y5IWYzNnAmowN62Ei2fgaeYMZ6E5sAlfhPbzYtvB41SjqhvkB7+w==
X-Received: by 2002:a17:903:516:b0:176:6c04:f15e with SMTP id jn22-20020a170903051600b001766c04f15emr4387178plb.93.1662566563854;
        Wed, 07 Sep 2022 09:02:43 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:43 -0700 (PDT)
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
Subject: [PATCH v4 04/13] dt-bindings: clock: rockchip: Document RV1126 CRU
Date:   Wed,  7 Sep 2022 21:31:58 +0530
Message-Id: <20220907160207.3845791-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

