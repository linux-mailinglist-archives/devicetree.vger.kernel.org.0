Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303E559076A
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 22:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235971AbiHKUd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 16:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235764AbiHKUd0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 16:33:26 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FBA09F0FF
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:20 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z16so22486464wrh.12
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=BMoCBhZDWFVbCIulovqGFO1GGwjU3Gb2EjVAgLDr/kM=;
        b=e1haM7gYHDueJmKbGFqDqB0CwdhTeSa2E4wt4JmEDSJbRCc95HOzVyhmhAR1aZMqqx
         WxkA1FzPGcrae9KDWdzDMQHZEb1i39i7aAL9rQ0/XQMl0cjzp27sbySRBMnLhzbUHVO9
         p7YPgrN5/LQYBe6cKzpCPAwLYeTnzOked1Fp12KP22d+INh+NSfPUx4OvjJU/VCDd81U
         gwIKYZTkvJayzWTODqIsBm7Mc+j7idl/i5AbrnvDIsmPMmT2pRhWCHNWRNL/NjJQmAK3
         REtDrCKW9kfVEhaxxP06EjHEUcaXvACDZ9Cu7GF6pF7rHNRdKy1UlQE0Abl+CgWbWCRX
         qlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=BMoCBhZDWFVbCIulovqGFO1GGwjU3Gb2EjVAgLDr/kM=;
        b=IGAwffIoGsSr0+MPq8hXJCfeALBxyWW2az+vO/dywFmE0CLeschCD7WadrVXDkxpCP
         2uQ8W7UatUdr3NRqHy9x8ASkMayO38ESAyb5FqxWtehFLdFgavlTy+BUzWGv+VPBJASA
         3TMAsBcTeij/3a9szQAChQz5c5mMzWMOQMewevUUXRMB46QUzyY9JTWWcc5Q1Q/DJROV
         Oc+CdRr3hDlp+y9ZgSChfbHkj4slE6Fa7vHLw5oU16IRf52u1PpSUMBY9OSKdqxhjR7e
         G/CTl6IdKPiUk4hSfy73Ka3INIa+SdjGhyddR3RmYW26DgJxxiWMZcPWs3nPCuQgtPFg
         2p0Q==
X-Gm-Message-State: ACgBeo2QDi+nq2BzrtDLUuiZarWW3ZWmg5xokH4vkVJAnbi8l2paesy3
        EWN7PtB/HseXZi9becTDfKMNDQ==
X-Google-Smtp-Source: AA6agR7XEt/HJ/k3HAKtCMICn0MmET4kycwS554nxvopStvc3/5uFdV66pz7zYk7eLXXULU8iWeBFw==
X-Received: by 2002:a5d:44c8:0:b0:21e:b750:2bda with SMTP id z8-20020a5d44c8000000b0021eb7502bdamr351862wrr.338.1660249999075;
        Thu, 11 Aug 2022 13:33:19 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id i12-20020adfefcc000000b0021f1ec8776fsm86643wrp.61.2022.08.11.13.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 13:33:18 -0700 (PDT)
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
Subject: [PATCH 3/4] dt-bindings: PCI: microchip,pcie-host: fix incorrect child node name
Date:   Thu, 11 Aug 2022 21:33:06 +0100
Message-Id: <20220811203306.179744-4-mail@conchuod.ie>
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

v2022.08 of dt-schema improved checking of unevaluatedProperties, and
exposed a previously unseen warning for the PCIe controller's interrupt
controller node name:

arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@2000000000: Unevaluated properties are not allowed ('clock-names', 'clocks', 'legacy-interrupt-controller', 'microchip,axi-m-atr0' were unexpected)
        From schema: Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml

Make the property in the binding match the node name actually used in
the dts.

Fixes: dcd49679fb3a ("dt-bindings: PCI: Fix 'unevaluatedProperties' warnings")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
This is another one Rob where I feel like I'm doing the wrong thing.
The Linux driver gets the child node without using the name, but
another OS etc could in theory (or reality), right?
---
 .../devicetree/bindings/pci/microchip,pcie-host.yaml          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
index 2a2166f09e2c..9b123bcd034c 100644
--- a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
@@ -71,7 +71,7 @@ properties:
   msi-parent:
     description: MSI controller the device is capable of using.
 
-  interrupt-controller:
+  legacy-interrupt-controller:
     type: object
     properties:
       '#address-cells':
@@ -125,7 +125,7 @@ examples:
                     msi-controller;
                     bus-range = <0x00 0x7f>;
                     ranges = <0x03000000 0x0 0x78000000 0x0 0x78000000 0x0 0x04000000>;
-                    pcie_intc0: interrupt-controller {
+                    pcie_intc0: legacy-interrupt-controller {
                         #address-cells = <0>;
                         #interrupt-cells = <1>;
                         interrupt-controller;
-- 
2.37.1

