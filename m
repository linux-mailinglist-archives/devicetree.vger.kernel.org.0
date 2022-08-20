Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBEA459A92A
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 01:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241294AbiHSXOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 19:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233206AbiHSXOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 19:14:31 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56201DAB96
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 16:14:29 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d16so1410689wrr.3
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 16:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=DWhXZZFAZhCnIU4fgoPIE8pwmZNnfCyeRQd6/ThxbP8=;
        b=TlHri4rXXzgpOkPtCLjuGJ1mPrjJL/4KdH3rMQIdvOOrOUXEki8NgXCDfrl8xltG/Y
         xyRc7iJvLuKqvcNsrzPpTNM/lfOcWd0/QRQehj2lGgmGG3fpL+6Wyu3BzVOASjMNKWCk
         apFHqHXAp25MLTIzwJz1KuT2wyu0K4KOSuIdtKD+Y3T7osGjaVIj2gOTEJds0qmjFanA
         mQ3SNn3CZ8Ytc3f1+nbzwv1XAduJ00V1IG7vGfMkLMl3uPwJdfZzpo6yP/e7bMBKxR/S
         1ptgZmk15AnDXat7ziGc19VedjhfPSzcS+Ckv/T2r9yM/7TqqikNV3W35ELd2QHKCtIN
         DYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=DWhXZZFAZhCnIU4fgoPIE8pwmZNnfCyeRQd6/ThxbP8=;
        b=c9kFW1WVDE5nvrl8EtKkxsp8L7o2JvOLeBR5ANM5iobJvs3HjP5Ai/wh+qwIECQ8DV
         LxLv99+IH/5qfg5oxv9nWZOo9QdNqWoSeXPPQcbzWbvmBqsCFJkv34mjKzHaiPieatmb
         1Ywvig1yUd3YPx4/1kKmqekewePxbmOzsRLWbyMkaO3VWB1iXgZJpkBKQCqtGv4XfpC7
         UqgviqIE+zB2BRnB6knk+JfrLl3KdNk8RDdTOn7Iv+kaByBGR6zTh+OYse+NEArkzWaK
         16tWouqTKA2mm7sHA79v677HgjiuI/fjoDNFyhJLxvG3totXraQ098HNL4HvU6hjA5dz
         Eg7Q==
X-Gm-Message-State: ACgBeo1pvxSpN/3SJfDhC2Vu8zduPuSgiKOg4EnIED51z52wj8feV2vj
        OLNaGh9S8s04ovNRGUt8Z0nF+w==
X-Google-Smtp-Source: AA6agR4v+IICZ3bclYWDQkb0DGxyv2hQHAvTlMTrWB2qMnF7A2A2AVYqWTgQXMw3/HeIhAsI5Ns4lw==
X-Received: by 2002:a05:6000:80b:b0:21e:d62e:b282 with SMTP id bt11-20020a056000080b00b0021ed62eb282mr5271465wrb.557.1660950867592;
        Fri, 19 Aug 2022 16:14:27 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id g17-20020a5d46d1000000b0020fff0ea0a3sm5198522wrs.116.2022.08.19.16.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 16:14:27 -0700 (PDT)
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
Subject: [PATCH v3 3/7] dt-bindings: PCI: microchip,pcie-host: fix missing dma-ranges
Date:   Sat, 20 Aug 2022 00:14:12 +0100
Message-Id: <20220819231415.3860210-4-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220819231415.3860210-1-mail@conchuod.ie>
References: <20220819231415.3860210-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The dma-ranges property was missed when adding the binding initially.
The root port can use up to 6 address translation tables, depending on
configuration.

Link: https://www.microsemi.com/document-portal/doc_download/1245812-polarfire-fpga-and-polarfire-soc-fpga-pci-express-user-guide # Section 1.3.3
Fixes: 6ee6c89aac35 ("dt-bindings: PCI: microchip: Add Microchip PolarFire host binding")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/pci/microchip,pcie-host.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
index 6fbe62f4da93..23d95c65acff 100644
--- a/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml
@@ -67,6 +67,10 @@ properties:
   ranges:
     maxItems: 1
 
+  dma-ranges:
+    minItems: 1
+    maxItems: 6
+
   msi-controller:
     description: Identifies the node as an MSI controller.
 
-- 
2.37.1

