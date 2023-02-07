Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6440468D5BD
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 12:40:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbjBGLkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 06:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbjBGLkt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 06:40:49 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3185515C9D
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 03:40:47 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so12959908wmb.2
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 03:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sDatRZBqiUI2ElF++MvN6nONqINB6h8G+ODmLux2ut8=;
        b=UbJx6nOES/5CVkxT2y0+f0gyICo7sUHnyUxLOElgPp0ArrXCZ3ma0xG7tnuhlOM5r9
         pUAHCZn5LeWL/sSSR949JTcfTFVLzCSVDScY4qAvlsxaasS6jDGRAB/ZOYPaSxSJ/g4I
         zyB5KtYHrIxxL5od9AiVWQ+Fn2MIMi2Cz8a+36f7KWnzzEadtFlqW2r+QKmB66XlV1YM
         kD71BYQW8YiUbTHfA/aHd3cbqAPKcc22dntETCWyGu2ZuAxgAd0IRkupVl7xx0xwRyox
         4IWlYz0ywZ5A+Rmyx41HS35p3fer5vPa/1uYUPbLXX0uOAqy25u2ziNe15zRrKxZ1wzs
         eUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sDatRZBqiUI2ElF++MvN6nONqINB6h8G+ODmLux2ut8=;
        b=Z4zP6sziLecmVXpNhPLFKBvRvRMHCBJfRVCTl/Yn+y/7aHzVQygIIy9lrfmMMNBKQD
         JLE6oFuYKESjD3f5uHl5i/5yVl5Y2HYAthFnlVKCpQZKucPzNpczrZAZRe7Xo/YQYitk
         3h0gK5rqHatmfwS+wl26IuqFyf8Z93VrrMzEW6+XJLzihd+waInhjnzyQnil/EYZlOMQ
         XONPXeCeJm5RExKnU4jRD816UKukK7Kkm1evTP1mi9yRmJawQ/4VftQ6+79TquCZajtK
         pK6b49mM0dbLZV28vATNNFtS8Hmk5bbBqhlF+hzOqxUwWbxb8wcrulvIlldkCz8M1etW
         CwXw==
X-Gm-Message-State: AO0yUKVjixUVZKuWohGU4W01Ts7dbm56u2FinQP8Vi3Gd5QIi+vzVRge
        NB9tdD6diFenXzo/YVDPD6sm4A==
X-Google-Smtp-Source: AK7set/wX6k+mhXbdEELuzdhFeFTnjAV+Fu7L99AhkJE//2AB1ZuyKSZQuUgvJUJbvvSWr6c1OWADg==
X-Received: by 2002:a05:600c:713:b0:3df:e4b4:de69 with SMTP id i19-20020a05600c071300b003dfe4b4de69mr2821331wmn.27.1675770045665;
        Tue, 07 Feb 2023 03:40:45 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:45 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 1/6] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date:   Tue,  7 Feb 2023 13:40:19 +0200
Message-Id: <20230207114024.944314-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207114024.944314-1-abel.vesa@linaro.org>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
for the new driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

There will be a binding check warning from Rob's bot because of the tcsr
clock bindings missing (dt-bindings/clock/qcom,sm8550-tcsr.h), but that
is expected as the header is already merged through Bjorn's clocks tree.

The v4 version of this patch was here:
https://lore.kernel.org/all/20230202132511.3983095-2-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * removed blank line, like Rob suggested
 * dropped quotes and reset description, like Rob suggested
 * dropped the RPMH_CXO_PAD_CLK clock and the ref_src clock name
   to match the schema
 * fixed filenames of the includes in the example (sm8550-gcc and
   sm8550-tcsr)

Changes since v2:
 * none

Changes since v1:
 * dropped the "ref src" clock
 * dropped the usb-repeater property


 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..de72577e34a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SNPS eUSB2 phy controller
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+description:
+  eUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
+
+properties:
+  compatible:
+    const: qcom,sm8550-snps-eusb2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: ref
+
+  clock-names:
+    items:
+      - const: ref
+
+  resets:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Phandle to 0.88V regulator supply to PHY digital circuit.
+
+  vdda12-supply:
+    description:
+      Phandle to 1.2V regulator supply to PHY refclk pll block.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - vdd-supply
+  - vdda12-supply
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8550-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/clock/qcom,sm8550-tcsr.h>
+
+    usb_1_hsphy: phy@88e3000 {
+        compatible = "qcom,sm8550-snps-eusb2-phy";
+        reg = <0x88e3000 0x154>;
+        #phy-cells = <0>;
+
+        clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+        clock-names = "ref";
+
+        vdd-supply = <&vreg_l1e_0p88>;
+        vdda12-supply = <&vreg_l3e_1p2>;
+
+        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+    };
-- 
2.34.1

