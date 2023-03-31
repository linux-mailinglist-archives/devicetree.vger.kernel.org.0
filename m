Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68FFD6D27C8
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 20:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232604AbjCaS1e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 14:27:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231146AbjCaS1d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 14:27:33 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DC511D2DD
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 11:27:32 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id iw3so22073789plb.6
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 11:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112; t=1680287252;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p4FGWSIPST9m6YTXbscC7ErUtHPtpC6n3urFFBCXSuI=;
        b=74oWXDIlBPU68uwXVejlOmomkabmhkdTDR+caL1MADEQSdjPjVuZ1dMDPKYm3jiBJz
         f89c39he3eNwXJGk9iAPuh7PGV5QlqHep+5CsA9D0jjjZt/ijv8kbwl4tOExrz03/UFv
         TJucNRYuNMDcIDYmsQUJs/CFGXH3IbzJL6nsSD3YASqmB3b8uJDdwCFHneyfAiEfKd//
         k2DilaXoubfPSHiuqOLWcY+cLX1kMibk9FbQY45f4ttJJBOyxxPLTMSX06VX6i1X1rO9
         ZP/zJsdxyDYzQG+uqof4J08lbr0lWdOdvCUFGCrR6LtqcbjSN60FwFniWzA2bSx8zsUx
         00jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680287252;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p4FGWSIPST9m6YTXbscC7ErUtHPtpC6n3urFFBCXSuI=;
        b=8KeYHlM52Amnj6+XUxx9XwMIDMX3Qh4eRGn/mtzw2gnD7Npz+5hElaGXoOPKPm+O+T
         tVBghPEbyj9wWTAccbdICnRu8wYSR+hLKRiQwEreIVAqiKipKQOVLEKvcColANGAbwPn
         06GRD4iYbPfeys0dQcbgWWoJK2FRat4vjfzT7OhUNEUY8XWFeB1FSHwuo99iwkQdmzeK
         /ffuBg54tLZI0qAPqxMeM8M6L4y8WR3chV527HXXoE9d7617LQDLUGFYPSehCB2chDOS
         0BAOOyACJxCYjYz8YLutdtxEqhkNk4SoP90ia2QQmSrhRQDJ7yWnfhp53jskpMjdauUH
         g5dQ==
X-Gm-Message-State: AAQBX9dCEhEVyfiZPk0jIt9aaxTuZm0a1UzvURF07lKcR9AVWSQnA4KB
        avWjTsL03rhm7bm+nse7GkqJ2w==
X-Google-Smtp-Source: AKy350a/MDZEdFquMNruFsfiIdHNSmiDjW5khv2c+3EheVH0PNILA4FW8AGtniTzvagvyHWYVpCHPg==
X-Received: by 2002:a17:903:3093:b0:19d:1bc1:ce22 with SMTP id u19-20020a170903309300b0019d1bc1ce22mr23992076plc.5.1680287251852;
        Fri, 31 Mar 2023 11:27:31 -0700 (PDT)
Received: from evan.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id c20-20020a170902b69400b0019f1027f88bsm1826795pls.307.2023.03.31.11.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 11:27:31 -0700 (PDT)
From:   Evan Green <evan@rivosinc.com>
To:     linux-sunxi@lists.linux.dev
Cc:     conor.dooley@microchip.com, Evan Green <evan@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Chen-Yu Tsai <wens@csie.org>, Conor Dooley <conor@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Samuel Holland <samuel@sholland.org>,
        Trevor Woerner <twoerner@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [RFC PATCH] riscv: dts: nezha-d1: Add memory
Date:   Fri, 31 Mar 2023 11:27:27 -0700
Message-Id: <20230331182727.4062790-1-evan@rivosinc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add memory info for the D1 Nezha, which seems to be required for it to
boot with the stock firmware. Note that this hardcodes 1GB, which is
not technically correct as they also make models with different amounts
of RAM. Is the firmware supposed to populate this?

Signed-off-by: Evan Green <evan@rivosinc.com>

---

 arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts b/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
index 4ed33c1e7c9c..6aba68cf5541 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
@@ -32,6 +32,12 @@ / {
 	model = "Allwinner D1 Nezha";
 	compatible = "allwinner,d1-nezha", "allwinner,sun20i-d1";
 
+	// FIXME: this is temporary.
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x40000000>; /* 1 GB */
+	};
+
 	aliases {
 		ethernet0 = &emac;
 		ethernet1 = &xr829;
-- 
2.25.1

