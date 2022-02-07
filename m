Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1D3C4AB509
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 07:41:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242095AbiBGGfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 01:35:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241115AbiBGGav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 01:30:51 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F35CC043186
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 22:30:51 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id my12-20020a17090b4c8c00b001b528ba1cd7so12433786pjb.1
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 22:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=osho4FvgLzowJuFLyZCnSgKHB8Ho1YEMLsQwVPBIhrQ=;
        b=aYEV+dyLB+amBduXwKLTJW/3/KSl0vdvVUWqaLhgwH4B52TecfYl5wCP1ZsiORX1CB
         6hlKB8KJmLK9j+we7MeXGW6G05ckobQjwsznT1kEQiadEJyLHzDccSzCK9AzYAuaTRCM
         K4KcKEkTnnNOt1MxOYkMnFNv3yFdmEFTCib5cwP+6y/bm82FjQbng91jGTlkRTjSNeGB
         +WdbeFm4zHYH/AZll9BgHaTYRZ2bjnigbxMujoB+FVhkClPBDL0Cywwc+18lTVbUP5Q7
         Ax4GJY29WBjjomuDf+oLTC/bLe713unqaaNjg2z2DmSWFEbapAdr5MvSsxKjydf2Fhfk
         Bo1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=osho4FvgLzowJuFLyZCnSgKHB8Ho1YEMLsQwVPBIhrQ=;
        b=4MkN2m/sBazFOdnoRjx9u29fcDDqx0aZnletI3FojISo07S1OTpYvgjxHTv7GRwQi7
         A3JOjKaXaqZfREBm6oNbzpgK4j79djCm+L4k7Eo6aKcDCTbp5pzmNJXiDm5/ocVXIFms
         JRdqxy0ZWKjA3+ZkRsaJxWJuK9qDL2GMKM6TDV7FNVx9uMuNik9f3QL2hFU/5Ir2vsR8
         sSucesP7dBESNgMTftCudeHb1ySOT1jUJ4QGe/WQqEtVWfmmnIGwS10o/44x0wnvrAYX
         OWTEkfNNTpPDBfayt3JzecPqqVq7X6BeacwOq0o0XGhVB7UCcImIG+tpTBR03XsFKa0/
         Crpw==
X-Gm-Message-State: AOAM532i8AKzH+7vLPCdph2t89l3gnGAbE4X1qPXu3plaTZEiGEgjgcN
        bex+mPCw2DvWKUqhhi/G6HTXDQ==
X-Google-Smtp-Source: ABdhPJyVcYtlV91++9ZVxo2GN3FeH1zysf9x9ULbE58unMlpr3ZDHua5lxLFugP4dveVBuh2RNkDcw==
X-Received: by 2002:a17:90a:eb0f:: with SMTP id j15mr7879986pjz.155.1644215450600;
        Sun, 06 Feb 2022 22:30:50 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id i10sm5266634pjd.2.2022.02.06.22.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 22:30:50 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>, Palmer Dabbelt <palmer@rivosinc.com>
Subject: [PATCH v5 1/3] dt-bindings: Add dma-channels property and modify compatible
Date:   Mon,  7 Feb 2022 14:30:38 +0800
Message-Id: <30430019105af445d52b7a48331c106f8e6d6816.1644215230.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1644215230.git.zong.li@sifive.com>
References: <cover.1644215230.git.zong.li@sifive.com>
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

Add dma-channels property, then we can determine how many channels there
by device tree, rather than statically defining it in PDMA driver.
In addition, we also modify the compatible for PDMA versioning scheme.

Signed-off-by: Zong Li <zong.li@sifive.com>
Suggested-by: Palmer Dabbelt <palmer@rivosinc.com>
---
 .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
index 75ad898c59bc..92f410f54d72 100644
--- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -25,7 +25,15 @@ description: |
 properties:
   compatible:
     items:
-      - const: sifive,fu540-c000-pdma
+      - enum:
+          - sifive,fu540-c000-pdma
+      - const: sifive,pdma0
+    description:
+      Should be "sifive,<chip>-pdma" and "sifive,pdma<version>".
+      Supported compatible strings are -
+      "sifive,fu540-c000-pdma" for the SiFive PDMA v0 as integrated onto the
+      SiFive FU540 chip resp and "sifive,pdma0" for the SiFive PDMA v0 IP block
+      with no chip integration tweaks.
 
   reg:
     maxItems: 1
@@ -34,6 +42,12 @@ properties:
     minItems: 1
     maxItems: 8
 
+  dma-channels:
+    description: For backwards-compatibility, the default value is 4
+    minimum: 1
+    maximum: 4
+    default: 4
+
   '#dma-cells':
     const: 1
 
@@ -48,8 +62,9 @@ additionalProperties: false
 examples:
   - |
     dma@3000000 {
-      compatible = "sifive,fu540-c000-pdma";
+      compatible = "sifive,fu540-c000-pdma", "sifive,pdma0";
       reg = <0x3000000 0x8000>;
+      dma-channels = <4>;
       interrupts = <23>, <24>, <25>, <26>, <27>, <28>, <29>, <30>;
       #dma-cells = <1>;
     };
-- 
2.31.1

