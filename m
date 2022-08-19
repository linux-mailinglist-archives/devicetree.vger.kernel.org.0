Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7675D59A944
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 01:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239470AbiHSXOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 19:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233206AbiHSXO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 19:14:28 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5854D2EAA
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 16:14:26 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id k16so6699197wrx.11
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 16:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Ar1lQa9BYLA+2BrGBUjljW+ChrkaQLd3BjaRIH/JfBg=;
        b=LmAakIOkt77pZdPShAOdMDn7SLBNaNq8qTkoJm7Kzt5WdgHj61h0xehsNah9Hbmsxw
         NtHwxjAiqOJoaVY3IfYukzwm4sO9dJUGHpsVWLcRJesmz9rbDInhzYGz8l04Ve4UzYe2
         jO57QAr3Ca/teH+1Zs/2ccy3ZVf2KDAZZWfvQwu6tg3qtwU/Jpnfv+haBYrmvBXQONTO
         uKJig2BH6ECCpV/+eXqv8n/B0iFw/mq29k0uwvZgLH9buybKiCwV/KhtWmrj6cr36rZ3
         oZ0EuPC9RKo028Lc5J43eWev6blJCMkVAHaNbS/gRgvuSeh2BfinVEv3uH3HNnwnqTD1
         9tkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Ar1lQa9BYLA+2BrGBUjljW+ChrkaQLd3BjaRIH/JfBg=;
        b=Uu0OWaZ9Agoeb8w85eX086Ye5gcn4rvlt1p5zzHAEQUIqsphTlvEP/va8DWKDzygXB
         kC9Y7Eh7Vx+oxH3JeWIodROnMgYnRXThqxRUEUWe/O8pXCCmzEVi+OSq9DNpdjcKMxmz
         8k9y1ATfMVk+Wbk2eGeQICBiWnoirJ94kKPlBF7aRY9Xme+XqJVaqsRmCI0amTr27t1i
         cljZUbnha/5XSe/V1YKfLZcwdTYxAJt3k7RP1JQYIFVVvHHeM0cWY7UmgJUL9ZY13+NO
         MK2YfX5EVaIPaHbN383p5yOYkzDFv1In90BrFwlDostRk6IAA+ZWMqlypmP0o2R7SPgg
         5Amw==
X-Gm-Message-State: ACgBeo2Pox70IbmjaG5RFbXcxrBcruLifL5My+VARpcJMdUxyd0sXTtt
        yUcvpBXcD8hfD31LkDeYWCz+5g==
X-Google-Smtp-Source: AA6agR5OOrwGni2RQj3G1GdLapCkg1a9eihP+hQCkGd2ZFMHSfMF0pFbvB6VJvqoRIgB69tPeKnueA==
X-Received: by 2002:a05:6000:1681:b0:21f:16a6:626f with SMTP id y1-20020a056000168100b0021f16a6626fmr5242574wrd.717.1660950865391;
        Fri, 19 Aug 2022 16:14:25 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id g17-20020a5d46d1000000b0020fff0ea0a3sm5198522wrs.116.2022.08.19.16.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 16:14:24 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Daire McNamara <daire.mcnamara@microchip.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/7] dt-bindings: PCI: fu740-pci: fix missing clock-names
Date:   Sat, 20 Aug 2022 00:14:10 +0100
Message-Id: <20220819231415.3860210-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220819231415.3860210-1-mail@conchuod.ie>
References: <20220819231415.3860210-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The commit b92225b034c0 ("dt-bindings: PCI: designware: Fix
'unevaluatedProperties' warnings") removed the clock-names property as
a requirement and from the example as it triggered unevaluatedProperty
warnings. dtbs_check was not able to pick up on this at the time, but
now can:

arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dtb: pcie@e00000000: Unevaluated properties are not allowed ('clock-names' was unexpected)
        From schema: linux/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml

The property was already in use by the FU740 DTS and the clock must be
enabled. The Linux and FreeBSD drivers require the property to enable
the clocks correctly Re-add the property and its "clocks" dependency,
while making it required.

Fixes: b92225b034c0 ("dt-bindings: PCI: designware: Fix 'unevaluatedProperties' warnings")
Fixes: 43cea116be0b ("dt-bindings: PCI: Add SiFive FU740 PCIe host controller")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
v2022.08 of dt-schema is required.
---
 .../devicetree/bindings/pci/sifive,fu740-pcie.yaml        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml b/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
index 195e6afeb169..844fc7142302 100644
--- a/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
@@ -51,6 +51,12 @@ properties:
     description: A phandle to the PCIe power up reset line.
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pcie_aux
+
   pwren-gpios:
     description: Should specify the GPIO for controlling the PCI bus device power on.
     maxItems: 1
@@ -66,6 +72,7 @@ required:
   - interrupt-map-mask
   - interrupt-map
   - clocks
+  - clock-names
   - resets
   - pwren-gpios
   - reset-gpios
@@ -104,6 +111,7 @@ examples:
                             <0x0 0x0 0x0 0x2 &plic0 58>,
                             <0x0 0x0 0x0 0x3 &plic0 59>,
                             <0x0 0x0 0x0 0x4 &plic0 60>;
+            clock-names = "pcie_aux";
             clocks = <&prci FU740_PRCI_CLK_PCIE_AUX>;
             resets = <&prci 4>;
             pwren-gpios = <&gpio 5 0>;
-- 
2.37.1

