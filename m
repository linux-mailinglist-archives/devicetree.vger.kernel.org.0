Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9646B4E91FF
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 11:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240037AbiC1Jy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 05:54:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240050AbiC1JyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 05:54:25 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 071BC54BD9
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 02:52:43 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id w8so14329962pll.10
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 02:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wa/jhOBDbzXypLwdqQHP2csPLeVnygjpsw6wefsCgcI=;
        b=Q3fVODma/iyy4N0/11SdBthh/s+q8+fOIxK61L2ALfHDGiUqEW8sE9ALtc52F85OhS
         EkXBFEVuHIE2gB44Iz1tiQrWKcRhG0a6s9aVJoZ9xbfv6CH6SO1u/V6y7NOA/nFFP7kL
         MWw5PXy8/qGv4cSwVRq55OiYaJbUpraPvbXSyzOXE4kADO2Kf1JZfbhCU6qxO9jTsXgm
         1d1XLpCVpErOnecqUNkOmh81lGmRWpaT5KIpA6GNl3UK1gjtK/QJAwR2ccvyRpMAEkVx
         wVs6gKqRgH98VoJLDPbk3D93Dyu6tsiqmt3fVcs9X1kuynctSonwhdo7RXFhfzWcAu5x
         k75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wa/jhOBDbzXypLwdqQHP2csPLeVnygjpsw6wefsCgcI=;
        b=RYy4ORsjYOqEEOcxUwvDzReZU7laCdF5LHJUMLwMdvfg3HvZE7LG1Ysa2DeCsUOTEB
         istPcm95nFWImpWG7eiJH27bhjijxmqH0A4htoEY0OPrRJNrRLcLqvJzmoc3BoyGEJGO
         fISq/uMO0gJpA2x3d5TTKTppKVOn+a7jaIsK2hkvGYEM9S06jTtQbFI/MPXMYR4CG7X0
         ZA0AaC8Zt5mrIi+AwblcLKi+yFOIQAnS3JJG97Y9U1uL1NmN4KRpqD17u0XpuWkYSCGS
         8niI2cgsR3yW/0fLH4cTvqMguYZzM41KenA4QXyuJS8by4T0X6fBepuKCQ4RCJQQHSH6
         7mkQ==
X-Gm-Message-State: AOAM5328bg+xWJuX4//mKk4/wDzfXdAtdeba2rNGfnbTZfS4gqK5pJRA
        awi67DdMlkA9Znio4ywnyKaHQQ==
X-Google-Smtp-Source: ABdhPJxHONZ3f2Yc2WSNu+jkr5b+vJB/GJkHJsbhf2730GFrUfxaNbwYpNK9G38hBoG4pMTeWyCn0w==
X-Received: by 2002:a17:90a:470a:b0:1c9:a9b4:f88c with SMTP id h10-20020a17090a470a00b001c9a9b4f88cmr5064699pjg.185.1648461163359;
        Mon, 28 Mar 2022 02:52:43 -0700 (PDT)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id g4-20020a633744000000b00381efba48b0sm12255117pgn.44.2022.03.28.02.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 02:52:42 -0700 (PDT)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH v8 3/4] riscv: dts: rename the node name of dma
Date:   Mon, 28 Mar 2022 17:52:24 +0800
Message-Id: <edd72c0cca1ebceddc032ff6ec2284e3f48c5ad3.1648461096.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1648461096.git.zong.li@sifive.com>
References: <cover.1648461096.git.zong.li@sifive.com>
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

Rename the node name by the generic DMA naming

Signed-off-by: Zong Li <zong.li@sifive.com>
CC: Vinod Koul <vkoul@kernel.org>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 6a3011180846..6eebe34c2851 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -167,7 +167,7 @@ uart0: serial@10010000 {
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
-		dma: dma@3000000 {
+		dma: dma-controller@3000000 {
 			compatible = "sifive,fu540-c000-pdma", "sifive,pdma0";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
-- 
2.35.1

