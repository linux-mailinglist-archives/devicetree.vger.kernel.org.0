Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94213763077
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232050AbjGZIu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:50:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232651AbjGZIuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:32 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D3161B7
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:08 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1b9d80e33fbso37433085ad.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361048; x=1690965848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O32qj0iS0CQ128y9LZa/4+ORdT9w9cMnSwkHBE7Wcdc=;
        b=BwAoUmgm2wTc+HtECOxsDTZZecU8XqE5Lj/ftd1WiZN8KOacImkkRn02sHX4nPT/Ir
         RdjUoPGoKdrTcNDuH/rqbWWiv5kTtrj27XMsX0YZyVX+E8S6RSqZOiZMA9G6ute6LzYu
         A6PUN/hKGe55DGYlhVMW18W2Gs4+FlAMn1CVU+y2cjGF7ecCMW7X76EQnJaFOjqyuuQz
         X1GR7owALu1erNetnr8Qc4ErP1J+0EJc8V8z2c9lykKRxjIaEoPQ2h2tczCR90E5M4++
         F/gYOKhV3Lx7YeGNCwX9FLOkQlU4Hn2F1QuWCHOgdb0c1wmP+cLPXOxbu7Xh6zvLLkOn
         8ghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361048; x=1690965848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O32qj0iS0CQ128y9LZa/4+ORdT9w9cMnSwkHBE7Wcdc=;
        b=k7NqBP3lDxXA5ZpU9tlLQX+oF9jvZ/fzlbQieAZo3Nqs0rYxjIl3kKFtVNLLqO5cvA
         rg2uXxkjVEOw/ZNxewWj9Vw85dQv2TU0eDT+93upzcPZRSF5L0l0E4VvG8LerZSYdpq1
         HvbDuWVBGgJVHhX9oNUclk8oPtuRg4f5bR3luqa+0kOD+dUSUpqrg7jCJmpVcGRdE1wd
         thJZgknMVcch7mRZUL9FAO2pQGHmLuI6Ixyd0LrU7l2KeAuqEbAIUa+gYFsq0/pgQ7cC
         878ZWwiKGbUAOa7vY/1t0xAY6Dhx8pT66dncbhdegS6RMlprobSvCEC9wTOLu8JR0qIz
         90hQ==
X-Gm-Message-State: ABy/qLYFztqhNIpbuBAuRUCTcFtzuWKV7HnmAuNTZTryzCKCo+HIga0g
        rd1nPLofgKFyCDWnJXnmjZwUUA==
X-Google-Smtp-Source: APBJJlF1UcZfD4GtZQbExiDlryyarP7U0RVaiWEcRPCc9PBWbKK440mq/9FDPD6l/cW9TbDZY/oxaw==
X-Received: by 2002:a17:902:a40f:b0:1b8:28f6:20e6 with SMTP id p15-20020a170902a40f00b001b828f620e6mr1074573plq.34.1690361047695;
        Wed, 26 Jul 2023 01:44:07 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:07 -0700 (PDT)
From:   Mayuresh Chitale <mchitale@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v4 1/7] RISC-V: Detect Smstateen extension
Date:   Wed, 26 Jul 2023 14:13:46 +0530
Message-Id: <20230726084352.2136377-2-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726084352.2136377-1-mchitale@ventanamicro.com>
References: <20230726084352.2136377-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend the ISA string parsing to detect the Smstateen extension. If the
extension is enabled then access to certain 'state' such as AIA CSRs in
VS mode is controlled by *stateen0 registers.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpu.c        | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index f041bfa7f6a0..fad1fd1fcd05 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -53,6 +53,7 @@
 #define RISCV_ISA_EXT_ZICSR		40
 #define RISCV_ISA_EXT_ZIFENCEI		41
 #define RISCV_ISA_EXT_ZIHPM		42
+#define RISCV_ISA_EXT_SMSTATEEN		43
 
 #define RISCV_ISA_EXT_MAX		64
 #define RISCV_ISA_EXT_NAME_LEN_MAX	32
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index a2fc952318e9..fb0df651bc48 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -217,6 +217,7 @@ static struct riscv_isa_ext_data isa_ext_arr[] = {
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index a8f66c015229..c3742a765f8b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -301,6 +301,7 @@ void __init riscv_fill_hwcap(void)
 			} else {
 				/* sorted alphabetically */
 				SET_ISA_EXT_MAP("smaia", RISCV_ISA_EXT_SMAIA);
+				SET_ISA_EXT_MAP("smstateen", RISCV_ISA_EXT_SMSTATEEN);
 				SET_ISA_EXT_MAP("ssaia", RISCV_ISA_EXT_SSAIA);
 				SET_ISA_EXT_MAP("sscofpmf", RISCV_ISA_EXT_SSCOFPMF);
 				SET_ISA_EXT_MAP("sstc", RISCV_ISA_EXT_SSTC);
-- 
2.34.1

