Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A9365ED5A
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 14:41:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232541AbjAENlk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 08:41:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232670AbjAENli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 08:41:38 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8633F32E92
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 05:41:36 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id f34so54999980lfv.10
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 05:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSujiAbquYvi81351VGo3QHTuOxLgyZj862ZjiWzNCs=;
        b=ZG4leSdK6N2UqAeYx/Ztpfs7tx9dPoBMU7dZmogVm3VSKa9xhVqEXrxaJlQDJ2BY4l
         ydGM9VlVPc3g71nnvxW2ngZXyXQd0rGvJTJJAS4XVehPYKjZ0U/ah7IY94ry527/tM9i
         0SKI/a3t23fFuqzRmPrdQ7uPPpxug0x948tyPACp/wwwYa0Hx8UVhvjl/gLszE/fsGOq
         uUktt6CtubFUE2rrkaZDqrwcAodS6rRtvZZyF3qXw3ZwCz9yECjDGYBXiu5G/eJ3jFVZ
         TFvZYdAk2yvhwbZlQRbsghDzoi105ZmEt1rym1F2eAagPTMG8hFPl4PNMq4gyqJKoaLL
         bP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSujiAbquYvi81351VGo3QHTuOxLgyZj862ZjiWzNCs=;
        b=LM0J8FZrNcHQko3alBEHdu1RBUCZtObA+mJ1GO0R+HaVDYPEktzF0msfRNN2UOXtVC
         dxzZWXT1MPZ9eqZPMXgwuZLsQ3djAYFTX4DJiRGymBR1e1aR4kNMT5q6vpI9ous7ksWF
         bR21p48f1VuimduXDV8wOXB7rd5Nhjd1t4lrJQc+TbjLTbOhItsEoQwmK6kvrKzUOxBA
         IMGhJdbGIcumMKno9Kj+Fiaw+2lf/Y5ijiJ9rh4f0NRxnVWnT0mh5K4vsJIKmSRQ5BTo
         7eFfJcV/UoWzKt8DScyOvvfhOnlDniatovSd3LRKnteuw+Nu5JACrWqG1826REcZd5/R
         jaCg==
X-Gm-Message-State: AFqh2ko0qmYEYpmUvvvEOZIpwxVG+zXQovpmjgMiDZFCPlAwND0RPIFR
        3pJ3Cpr9GxIb1JJdgkElixp4VA==
X-Google-Smtp-Source: AMrXdXvQJNTd2uAqp9+ew9zzhyMkQ8W/RAuyXFKzerOc02qX+xgkriUfLTnWwxsmb/JXj3SmIG4drg==
X-Received: by 2002:a05:6512:ba5:b0:4c0:91d0:e7b7 with SMTP id b37-20020a0565120ba500b004c091d0e7b7mr24034873lfv.27.1672926094913;
        Thu, 05 Jan 2023 05:41:34 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bq25-20020a056512151900b004b592043413sm5461315lfb.12.2023.01.05.05.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 05:41:34 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 01/12] dt-bindings: clock: qcom,gcc-apq8084: define clocks/clock-names
Date:   Thu,  5 Jan 2023 15:41:22 +0200
Message-Id: <20230105134133.1550618-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105134133.1550618-1-dmitry.baryshkov@linaro.org>
References: <20230105134133.1550618-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define clock/clock-names properties of the GCC device node to be used
on APQ8084 platform.

Note: the driver uses a single pcie_pipe clock, however most probably
there are two pipe clocks, one from each of PCIe QMP PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/qcom,gcc-apq8084.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
index 8ade176c24f4..732b6770b46e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
@@ -25,6 +25,30 @@ properties:
   compatible:
     const: qcom,gcc-apq8084
 
+  clocks:
+    items:
+      - description: XO source
+      - description: Sleep clock source
+      - description: UFS RX symbol 0 clock
+      - description: UFS RX symbol 1 clock
+      - description: UFS TX symbol 0 clock
+      - description: UFS TX symbol 1 clock
+      - description: SATA ASIC0 clock
+      - description: SATA RX clock
+      - description: PCIe PIPE clock
+
+  clock-names:
+    items:
+      - const: xo
+      - const: sleep_clk
+      - const: ufs_rx_symbol_0_clk_src
+      - const: ufs_rx_symbol_1_clk_src
+      - const: ufs_tx_symbol_0_clk_src
+      - const: ufs_tx_symbol_1_clk_src
+      - const: sata_asic0_clk
+      - const: sata_rx_clk
+      - const: pcie_pipe
+
 required:
   - compatible
 
@@ -32,11 +56,35 @@ unevaluatedProperties: false
 
 examples:
   - |
+    /* UFS PHY on APQ8084 is not supported (yet), so these bindings just serve an example */
+    #define UFS_PHY_RX_SYMBOL_0 0
+    #define UFS_PHY_RX_SYMBOL_1 1
+    #define UFS_PHY_TX_SYMBOL_0 2
+    #define UFS_PHY_TX_SYMBOL_1 3
     clock-controller@fc400000 {
         compatible = "qcom,gcc-apq8084";
         reg = <0xfc400000 0x4000>;
         #clock-cells = <1>;
         #reset-cells = <1>;
         #power-domain-cells = <1>;
+
+        clocks = <&xo_board>,
+                 <&sleep_clk>,
+                 <&ufsphy UFS_PHY_RX_SYMBOL_0>,
+                 <&ufsphy UFS_PHY_RX_SYMBOL_1>,
+                 <&ufsphy UFS_PHY_TX_SYMBOL_0>,
+                 <&ufsphy UFS_PHY_TX_SYMBOL_1>,
+                 <&sata 0>,
+                 <&sata 1>,
+                 <&pcie_phy>;
+        clock-names = "xo",
+                      "sleep_clk",
+                      "ufs_rx_symbol_0_clk_src",
+                      "ufs_rx_symbol_1_clk_src",
+                      "ufs_tx_symbol_0_clk_src",
+                      "ufs_tx_symbol_1_clk_src",
+                      "sata_asic0_clk",
+                      "sata_rx_clk",
+                      "pcie_pipe";
     };
 ...
-- 
2.39.0

