Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 983E74D8E57
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 21:39:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239783AbiCNUkd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 16:40:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245123AbiCNUk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 16:40:27 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 182E93DDFD
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 13:39:16 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id 11so14241404qtt.9
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 13:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QgTLmxemvA5RpsS5hzlojOt5X/Q6y2vW3smx//7FUG4=;
        b=rI9ilCQoXDMPcdI5e3KE3tCaj9unCd0W8gFkj5TgK6hEXQM9EZu7PxpKTNyVmyhQP9
         pF1m+CpG/jYZ1Y5+QZ6CxGvHBQUW89QaBG0NVbWClNZL0lWMHYVb5Pcgsa4TAj0DdIK1
         M944/EYrj2VcJyt8FI3ZXqLQO4sNHcQX4h9ncniMhBqABXDWTxOpCqfzzlxcvg9IQFvJ
         TJkCKknbIvZeOKYF5RYNHgl1j8GsUBXjD0FYHTs0Zcl70XQ4zeTQMQ77dHNtocI1hDYJ
         oI4HaEgWRi6bS4Higi1553ea+9a983kbhmD+JIDWVQPiK5AqLcKquTGQ7n40+pk2fpXR
         9okQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QgTLmxemvA5RpsS5hzlojOt5X/Q6y2vW3smx//7FUG4=;
        b=mBRV4gNAWavFYFyg9e9y+4dZrWm2GR3H4+I3MRpFsjpwLt01wk3LZ2qEW4heZahfhG
         lRTjhyXzzQ1M/T1KHCBwWi+K4qTbNP8SSfoxy1INc86Cq2sYVj6ghs8yuuu+q3Hx5ICQ
         QT6pEwtYiGiRkoFQhll9I766JzbqM84JpKG78xa2Vfgag+22wipF0SEXSbjC3kkArMVZ
         GMdt5sowQWSj10C88/yAhrzpXmnnVOHMxKXmyOfAvcnwT3OIlBwxrV5fUSE+0E3fHss3
         GLzF501R8qFPxjbiqN5d/9sRlWHX4ybobDshC7HB2NhLGs2M1k1Rt8v07P+2mI1mfZ7a
         f1Nw==
X-Gm-Message-State: AOAM531StWb+XLvQiRs5QfcNzk19v07vjFH+TvOl/XtlzuH9g3Lci4UV
        eSdDhDSCeVde7lfVUulvKUcTPw==
X-Google-Smtp-Source: ABdhPJw1s7/vVSEVbUrVNI0fNhrAihJJU4IfO00/Y3Ucz5pZvUI8ck5ViW9gRATQA9a0QOhDHWZeyw==
X-Received: by 2002:a05:622a:64a:b0:2e1:d8b4:c6a1 with SMTP id a10-20020a05622a064a00b002e1d8b4c6a1mr2944523qtb.0.1647290355232;
        Mon, 14 Mar 2022 13:39:15 -0700 (PDT)
Received: from rivos-atish.ba.rivosinc.com (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id j188-20020a3755c5000000b0067d1c76a09fsm8597023qkb.74.2022.03.14.13.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 13:39:14 -0700 (PDT)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 5/6] RISC-V: Do no continue isa string parsing without correct XLEN
Date:   Mon, 14 Mar 2022 13:38:44 -0700
Message-Id: <20220314203845.832648-6-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220314203845.832648-1-atishp@rivosinc.com>
References: <20220314203845.832648-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The isa string should begin with either rv64 or rv32. Otherwise, it is
an incorrect isa string. Currently, the string parsing continues even if
it doesnot begin with current XLEN.

Fix this by checking if it found "rv64" or "rv32" in the beginning.

Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/kernel/cpufeature.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3455fdfd680e..a43c08af5f4b 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -84,6 +84,7 @@ void __init riscv_fill_hwcap(void)
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
 		DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
+		const char *temp;
 
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -93,6 +94,7 @@ void __init riscv_fill_hwcap(void)
 			continue;
 		}
 
+		temp = isa;
 #if IS_ENABLED(CONFIG_32BIT)
 		if (!strncmp(isa, "rv32", 4))
 			isa += 4;
@@ -100,6 +102,9 @@ void __init riscv_fill_hwcap(void)
 		if (!strncmp(isa, "rv64", 4))
 			isa += 4;
 #endif
+		/* The riscv,isa DT property must start with rv64 or rv32 */
+		if (temp == isa)
+			continue;
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
 		for (; *isa; ++isa) {
 			const char *ext = isa++;
-- 
2.30.2

