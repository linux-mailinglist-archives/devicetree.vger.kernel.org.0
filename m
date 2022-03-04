Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A611B4CD055
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233838AbiCDIn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:43:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234509AbiCDIn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:43:57 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D62866FB1
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:43:10 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id m22so6855245pja.0
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 00:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O3fmm4nvalmQleWa1byPzKYwRMYCW7Pxtk8Gk5epwAE=;
        b=DdaVsAKprHzLmoEOoj7hXNT+Eeasjy3ANt5B6k52rePYudsdXjfR8CCclb5wZdHnEf
         /jgBudJsh2wvZwJw/OERuUAIO60Ri0ua4fo10FGa9AKcX0TraqEZMf51mbPB2qQGJ+jv
         6Xyr8BUa2AlZdrDwLWnGWhQMXdKQy7P5i5iEb8tQaZSTQaSjx3NvKxb/aZmDKQ6cpbzS
         rXEG9L4VFJyCl/9o7NzDXvMMnKnLK6aPGyfM8c6sVy0RolXmpNs2BcVj/vuDgag8Dvkj
         Y2prHnlitDZDPD+7urtYUWiaqPYLxQrHiJOk4qlLK3IP2wbBi81rhE7aMy2DN051H+1R
         /YAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O3fmm4nvalmQleWa1byPzKYwRMYCW7Pxtk8Gk5epwAE=;
        b=JdZMg/IN9kQK/MFLbwtVtI55zIbJXNQel8QHjSRQ8dOKghzGtJldLDe0T2bOYI9BeM
         S2WES05Pt1sBle6pM/udJ9cD1Jiue3uvrp8C5KGpJpf+VtAVBQRyC+TR5q3TiSKw0Ofg
         UUi00qARGSsFS7djlth56JdT+2hhXqGIpI0R03Jvz7F6aha3ZFP1UvOOv00CMnuJAn7e
         Ca2cifO2+x4WF8hL4uG0kI/iWmomguzyFFisbmow81nkYiqO/dpnLY6kLRJI5jDoAECO
         T1mSpKAuAfLWda8FqXnn5PHDB910dHqoVHn7qepKpaI7SVSAp0BNGVl1hGKJBTds2gm1
         oM+Q==
X-Gm-Message-State: AOAM532uGmspFxQ0cSZsG1oRZyXwZciT83q7bgkw23oQ+D2S4NTenWvt
        JXnVV8BS+1BMIzxu2BabBS69/g==
X-Google-Smtp-Source: ABdhPJzDQYRRNKtWR17zpM/+FYK3UlyVp5mrA7EmJm310J0T55vcLfD40IjArzY41WnCFi9Aw5b5gg==
X-Received: by 2002:a17:902:b602:b0:14f:e42b:d547 with SMTP id b2-20020a170902b60200b0014fe42bd547mr40717392pls.91.1646383389827;
        Fri, 04 Mar 2022 00:43:09 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id mu1-20020a17090b388100b001bedddf2000sm4245191pjb.14.2022.03.04.00.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 00:43:09 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>, Palmer Dabbelt <palmer@rivosinc.com>
Subject: [PATCH v6 2/3] riscv: dts: Add dma-channels property and modify compatible
Date:   Fri,  4 Mar 2022 16:42:56 +0800
Message-Id: <df3a3e170af82070b0bfaa03e66b6570718dea77.1646383150.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1646383150.git.zong.li@sifive.com>
References: <cover.1646383150.git.zong.li@sifive.com>
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
by device tree, in addition, we add the pdma versioning scheme for
compatible.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Palmer Dabbelt <palmer@rivosinc.com>
Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 3 ++-
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi        | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 869aaf0d5c06..d8869ec99945 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -187,11 +187,12 @@ plic: interrupt-controller@c000000 {
 		};
 
 		dma@3000000 {
-			compatible = "sifive,fu540-c000-pdma";
+			compatible = "sifive,fu540-c000-pdma", "sifive,pdma0";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic>;
 			interrupts = <23>, <24>, <25>, <26>, <27>, <28>, <29>,
 				     <30>;
+			dma-channels = <4>;
 			#dma-cells = <1>;
 		};
 
diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 3eef52b1a59b..6a3011180846 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -168,11 +168,12 @@ uart0: serial@10010000 {
 			status = "disabled";
 		};
 		dma: dma@3000000 {
-			compatible = "sifive,fu540-c000-pdma";
+			compatible = "sifive,fu540-c000-pdma", "sifive,pdma0";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
 			interrupts = <23>, <24>, <25>, <26>, <27>, <28>, <29>,
 				     <30>;
+			dma-channels = <4>;
 			#dma-cells = <1>;
 		};
 		uart1: serial@10011000 {
-- 
2.31.1

