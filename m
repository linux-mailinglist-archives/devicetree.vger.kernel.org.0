Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C46B0590761
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 22:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235841AbiHKUd0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 16:33:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235721AbiHKUdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 16:33:22 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC789F0FB
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:19 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bs25so4100836wrb.2
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=QxkmtF8asgPVQHFJENq/ehachAsL+qmscZvCCu05yWc=;
        b=XaRcrphLz19LTNxZ0dzKwHA8K/MkiviSjiw49WVWXeVE5qRONAyZyq8QlcuzrvefVq
         DVNMQX04znal0vPNRmcNC3MbIYAUaAwumKVcp1t0JK2JWpjZ/cp5ve/O9xgtHIB9jYp1
         a8nRH+Wy1LAZE51EqhGYykiH3KzE9PEX9dP0kwd3yenGFVrqs5lMmYFvz3ozZW8IIaAJ
         Bj4EyFhC9G2D5gf3y3F2K/Htv7ZqH11Y9ovKD1Bz7OjfH17QcK/dDGLuF9YkGgrMvCco
         4DIJtEW+NiKBMz3o+dzkdKU5lyhNrWpghKTXW2kDbXlMfdJOmER6MuwSLRX/k4n+MNIT
         Ftcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=QxkmtF8asgPVQHFJENq/ehachAsL+qmscZvCCu05yWc=;
        b=mwLIhxRoG6qVxQ+kV7DAYAaB1A5w+GpfCXXcpMe9zqeMI8hZQ7R93baxBjyIMlIoDb
         RHXFY5wPqdRPw3+ej0ZmODQoFnVV6svjGZH9zpSdTwP/HtVA/nFUi0wSE8s2n0bKDwit
         i8eSnsHkfqPnuoZYVZttDXCGJ2GgBgn1kNiRZu9rXi65idE75+e08EXxedt+FZYcht9U
         lKjI0hfooG/zEFg6C4WQsbnP/WSCKHx9zRhZdfGfvo8I9m6fpJmLA9dVSf7Y1k1BXe7/
         bv8i5vsoBK6K2NsptBaR+pcJawgPzb3w75B4dDIpBuxfZ+F6aMY8cAvizgY3SYsrlUsu
         +i+w==
X-Gm-Message-State: ACgBeo1nv3oMommouKvOZ5ZgzvHRlqlou2QvnBnuIRxh3ERmwFpf3/Yv
        I+AvHf4KZ1mhu6Nuea7OGfJTdQ==
X-Google-Smtp-Source: AA6agR5//7v1W6BSWMIoYqn+Fu+wgEM3FNII37M+y/PlRKeC6C5AWj7949Ozxp/ApCOBEqaRSPZzpw==
X-Received: by 2002:a5d:59a5:0:b0:222:c5a5:59c4 with SMTP id p5-20020a5d59a5000000b00222c5a559c4mr337239wrr.656.1660249997915;
        Thu, 11 Aug 2022 13:33:17 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id i12-20020adfefcc000000b0021f1ec8776fsm86643wrp.61.2022.08.11.13.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 13:33:17 -0700 (PDT)
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
Subject: [PATCH 2/4] dt-bindings: PCI: microchip,pcie-host: fix missing clocks properties
Date:   Thu, 11 Aug 2022 21:33:05 +0100
Message-Id: <20220811203306.179744-3-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220811203306.179744-1-mail@conchuod.ie>
References: <20220811203306.179744-1-mail@conchuod.ie>
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

Upgrading dt-schema to v2022.08 reveals unevaluatedProperties issues
that were not previously visible, such as the missing clocks and
clock-names properties for PolarFire SoC's PCI controller:
arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@2000000000: Unevaluated properties are not allowed ('clock-names', 'clocks', 'legacy-interrupt-controller', 'microchip,axi-m-atr0' were unexpected)
        From schema: Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml

The clocks are required to enable interfaces between the FPGA fabric
and the core complex, so add them to the binding.

Fixes: 6ee6c89aac35 ("dt-bindings: PCI: microchip: Add Microchip PolarFire host binding")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/pci/microchip,pcie-host.yaml     | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
index edb4f81253c8..2a2166f09e2c 100644
--- a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
@@ -25,6 +25,31 @@ properties:
       - const: cfg
       - const: apb
 
+  clocks:
+    description:
+      Fabric Interface Controllers, FICs, are the interface between the FPGA
+      fabric and the core complex on PolarFire SoC. The FICs require two clocks,
+      one from each side of the interface. The "FIC clocks" described by this
+      property are on the core complex side & communication through a FIC is not
+      possible unless it's corresponding clock is enabled. A clock must be
+      enabled for each of the interfaces the root port is connected through.
+    minItems: 1
+    items:
+      - description: FIC0's clock
+      - description: FIC1's clock
+      - description: FIC2's clock
+      - description: FIC3's clock
+
+  clock-names:
+    items:
+      enum:
+        - fic0
+        - fic1
+        - fic2
+        - fic3
+    minItems: 1
+    maxItems: 4
+
   interrupts:
     minItems: 1
     items:
-- 
2.37.1

