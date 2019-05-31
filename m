Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D03930724
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 05:54:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726701AbfEaDx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 23:53:59 -0400
Received: from mail-it1-f196.google.com ([209.85.166.196]:51200 "EHLO
        mail-it1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726721AbfEaDx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 23:53:59 -0400
Received: by mail-it1-f196.google.com with SMTP id m3so13581632itl.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JZ95IE69sVcEBRYG+tgP+o1mXucxgv2wjwcFuiPisT8=;
        b=um96SFt2ycKzFq9uGSVCZXnnl+5VpTPczH63AkH78WbURU0HUg0oQkJqruuHV0ekPf
         AA8QjULtHn5OjoK6WV2NoNuhF6m9yfc8wRoJZcor4/rN+zgLvhXNPNNNaD+506eWeiks
         b65grxnRRhReyKn2e9jgp2KTK+5pfby9Eo137NqKOnRPuk2aMIudpwXCI3+D3h3v/g8S
         BdBznrfedr5Dhtdi/DwhnleSg1EHCzi3Ol6NsCk1py2XRGGeDpr+9cGA5MCc1wWPhVmU
         CznBta7yL7k7P1+WkhCQIjJChcuLD3mOcnO+9aKy45Z2WPNqdnEczTSZwVWbqXLhTxXC
         3aiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZ95IE69sVcEBRYG+tgP+o1mXucxgv2wjwcFuiPisT8=;
        b=BTdq0MVE71XRnLMzOi96SKbony3TszZgblF4BlL/nh7Tf8kUFDs8hHpuN3qbTjIOgn
         x8Jf7B69ZL/OXj5MyjO4QJpek6Lk3F0n8jNd2SCAoUPSDqPyC+uSu1uU7EPWga5jMIiT
         hlGd13UQ5Abq/dVsxHIMItNQtSNHmTfYBNaYcCXEYAn4jpjDV6+mOFhEdHiRV4pK2VOv
         kU0IHgCy3HI5erPN6xfyUDJT2pDE39tJyWDc2uHpp1woRSaaGwTzVCHQRujMt3wfLuY9
         a9/W6vnGUSQ6O700zop9xRlAI9HeH8T8k1t0pv625kiKOtrf/H8JsvIyJiJdOot5XpdK
         mNYQ==
X-Gm-Message-State: APjAAAWpXo2Dl9NFIiGCtJasPDXgZYUOwcAFaoUBC9xJw0XziwXwiNSG
        YPamV4n6jX8HG9q3BwBI6CaVNg==
X-Google-Smtp-Source: APXvYqwaoaNsdphNA/LmcRP5E4+03JIOwqNJ7oWa3ZTXbHBfI6jcDM1GZjPROsP7Jdb6VHnZlpOyGA==
X-Received: by 2002:a05:660c:712:: with SMTP id l18mr5737921itk.169.1559274838050;
        Thu, 30 May 2019 20:53:58 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net. [71.195.29.92])
        by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.53.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 20:53:57 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
        ilias.apalodimas@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org
Cc:     evgreen@chromium.org, benchan@google.com, ejcaruso@google.com,
        cpratapa@codeaurora.org, syadagir@codeaurora.org,
        subashab@codeaurora.org, abhishek.esse@gmail.com,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 02/17] dt-bindings: soc: qcom: add IPA bindings
Date:   Thu, 30 May 2019 22:53:33 -0500
Message-Id: <20190531035348.7194-3-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the binding definitions for the "qcom,ipa" device tree node.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 .../devicetree/bindings/net/qcom,ipa.yaml     | 180 ++++++++++++++++++
 1 file changed, 180 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
new file mode 100644
index 000000000000..0037fc278a61
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -0,0 +1,180 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qcom,ipa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IP Accelerator (IPA)
+
+maintainers:
+  - Alex Elder <elder@kernel.org>
+
+description:
+  This binding describes the Qualcomm IPA.  The IPA is capable of offloading
+  certain network processing tasks (e.g. filtering, routing, and NAT) from
+  the main processor.
+
+  The IPA sits between multiple independent "execution environments,"
+  including the Application Processor (AP) and the modem.  The IPA presents
+  a Generic Software Interface (GSI) to each execution environment.
+  The GSI is an integral part of the IPA, but it is logically isolated
+  and has a distinct interrupt and a separately-defined address space.
+
+  See also soc/qcom/qcom,smp2p.txt and interconnect/interconnect.txt.
+
+  - |
+    --------             ---------
+    |      |             |       |
+    |  AP  +<---.   .----+ Modem |
+    |      +--. |   | .->+       |
+    |      |  | |   | |  |       |
+    --------  | |   | |  ---------
+              v |   v |
+            --+-+---+-+--
+            |    GSI    |
+            |-----------|
+            |           |
+            |    IPA    |
+            |           |
+            -------------
+
+properties:
+  compatible:
+      const: "qcom,sdm845-ipa"
+
+  reg:
+    items:
+      - description: IPA registers
+      - description: IPA shared memory
+      - description: GSI registers
+
+  reg-names:
+    items:
+      - const: ipa-reg
+      - const: ipa-shared
+      - const: gsi
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+      const: core
+
+  interrupts:
+    items:
+      - description: IPA interrupt (hardware IRQ)
+      - description: GSI interrupt (hardware IRQ)
+      - description: Modem clock query interrupt (smp2p interrupt)
+      - description: Modem setup ready interrupt (smp2p interrupt)
+
+  interrupt-names:
+    items:
+      - const: ipa
+      - const: gsi
+      - const: ipa-clock-query
+      - const: ipa-setup-ready
+
+  interconnects:
+    items:
+      - description: Interconnect path between IPA and main memory
+      - description: Interconnect path between IPA and internal memory
+      - description: Interconnect path between IPA and the AP subsystem
+
+  interconnect-names:
+    items:
+      - const: memory
+      - const: imem
+      - const: config
+
+  qcom,smem-states:
+    description: State bits used in by the AP to signal the modem.
+    items:
+    - description: Whether the "ipa-clock-enabled" state bit is valid
+    - description: Whether the IPA clock is enabled (if valid)
+
+  qcom,smem-state-names:
+    description: The names of the state bits used for SMP2P output
+    items:
+      - const: ipa-clock-enabled-valid
+      - const: ipa-clock-enabled
+
+  modem-init:
+    type: boolean
+    description:
+      If present, it indicates that the modem is responsible for
+      performing early IPA initialization, including loading and
+      validating firwmare used by the GSI.
+
+  memory-region:
+    maxItems: 1
+    description:
+      If present, a phandle for a reserved memory area that holds
+      the firmware passed to Trust Zone for authentication.  Required
+      when Trust Zone (not the modem) performs early initialization.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - interconnects
+  - qcom,smem-states
+
+oneOf:
+  - required:
+    - modem-init
+  - required:
+    - memory-region
+
+examples:
+  - |
+        smp2p-mpss {
+                compatible = "qcom,smp2p";
+                ipa_smp2p_out: ipa-ap-to-modem {
+                        qcom,entry-name = "ipa";
+                        #qcom,smem-state-cells = <1>;
+                };
+
+                ipa_smp2p_in: ipa-modem-to-ap {
+                        qcom,entry-name = "ipa";
+                        interrupt-controller;
+                        #interrupt-cells = <2>;
+                };
+        };
+        ipa@1e40000 {
+                compatible = "qcom,sdm845-ipa";
+
+                modem-init;
+
+                reg = <0 0x1e40000 0 0x7000>,
+                        <0 0x1e47000 0 0x2000>,
+                        <0 0x1e04000 0 0x2c000>;
+                reg-names = "ipa-reg",
+                                "ipa-shared";
+                                "gsi";
+
+                interrupts-extended = <&intc 0 311 IRQ_TYPE_EDGE_RISING>,
+                                        <&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+                                        <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+                                        <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+                interrupt-names = "ipa",
+                                        "gsi",
+                                        "ipa-clock-query",
+                                        "ipa-setup-ready";
+
+                clocks = <&rpmhcc RPMH_IPA_CLK>;
+                clock-names = "core";
+
+                interconnects =
+                        <&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
+                        <&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
+                        <&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
+                interconnect-names = "memory",
+                                        "imem",
+                                        "config";
+
+                qcom,smem-states = <&ipa_smp2p_out 0>,
+                                        <&ipa_smp2p_out 1>;
+                qcom,smem-state-names = "ipa-clock-enabled-valid",
+                                        "ipa-clock-enabled";
+        };
-- 
2.20.1

