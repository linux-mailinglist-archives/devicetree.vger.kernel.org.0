Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC8979EEDE
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 18:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbjIMQlD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 12:41:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231267AbjIMQj6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 12:39:58 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870151BE2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:35 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c364fb8a4cso63974145ad.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 09:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694623175; x=1695227975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Zby5+/epktKP7RzS2B2FPnhW8r4eiR79ZVht5gtpaE=;
        b=S1ITv2QV5opFwq8eLjCM9BZs+zTGEQaUMITo0Gz+hqFDoq7GbWiHsyXxQrtzWM0Ftx
         gTQxcxO/rfuILP+IAYuYXxYbYBsLIAEc/qfkpb5OK2Bp2NQp4bc7rJotpaU6m8LvciwE
         DrffXUdwuiX+VnsoIQQ9zt5Sybb7fQyojdmDeFjsGZ2pcx3kZ7cQBOzNf+A2ZjlRMZYZ
         +dLc+KdOL4r3H/n/MovRFJPQDq3dpxO5+qqh0LjVda+ec0KaYAZYfzeV98dPFnjLor4u
         40YA4wm6xInXlmO3RrOCkQAeStHRMpfX7GMkJ2+5/HS3/9eVF7GoLWwxzdbBnDOrstAc
         0/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694623175; x=1695227975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Zby5+/epktKP7RzS2B2FPnhW8r4eiR79ZVht5gtpaE=;
        b=Fga8zXbeDIWrPcFMOHAqb2A2nU42ZyZQRfHGsZfYpZoUHg0t+sKq3QFVsLVGOp7fQS
         k7zt0dinxOTSaVgEIJPlYBpc6lQ7B/pAUjOfvHK2jliTPaUFXEuH1IfOOrJfPWDFAYWH
         wQqutHgm+TFwUIPstZ/vQQT+GEvJG/3C7giuzYOSD0PTxOFxztVa83LLrsmdn+14Tec8
         nqWWPYgJx/ZeaDkYaI1bdXkiyhpvhrJFpfIhwJTa65xpFIKKNY0J8UiZ1MsvJh2a0ZxW
         s9kV+OYNzMKTWVjuKSJRALwu8yQltH1j8ceB4fZL3iEFDcHBm9bm24RsZ2vGN8iEW0fU
         3w2w==
X-Gm-Message-State: AOJu0YxBP36160OY0iVbyCZCqkJnIegojyYo74f+TU2J6TJcL2cKKcbf
        1TIfZ+puR4SrbGHyLdI3Heyn0Q==
X-Google-Smtp-Source: AGHT+IE+Du3wPvNeFNAy1mivF0yBnb12TBRANhZ3bSo3f8HVCcVn2kfKLuwT7ptWG0e6c8766ubRJQ==
X-Received: by 2002:a17:902:e883:b0:1bc:203f:3b3c with SMTP id w3-20020a170902e88300b001bc203f3b3cmr4306877plg.24.1694623174896;
        Wed, 13 Sep 2023 09:39:34 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id je15-20020a170903264f00b001b243a20f26sm10577756plb.273.2023.09.13.09.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 09:39:34 -0700 (PDT)
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
Subject: [PATCH v5 1/7] RISC-V: Detect Smstateen extension
Date:   Wed, 13 Sep 2023 22:08:59 +0530
Message-Id: <20230913163905.480819-2-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230913163905.480819-1-mchitale@ventanamicro.com>
References: <20230913163905.480819-1-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index b7b58258f6c7..0f520f7d058a 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -58,6 +58,7 @@
 #define RISCV_ISA_EXT_ZICSR		40
 #define RISCV_ISA_EXT_ZIFENCEI		41
 #define RISCV_ISA_EXT_ZIHPM		42
+#define RISCV_ISA_EXT_SMSTATEEN		43
 
 #define RISCV_ISA_EXT_MAX		64
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 1cfbba65d11a..3755a8c2a9de 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -175,6 +175,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbs, RISCV_ISA_EXT_ZBS),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
-- 
2.34.1

