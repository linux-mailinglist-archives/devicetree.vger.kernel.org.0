Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A54F494A67
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 10:10:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240273AbiATJK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 04:10:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbiATJKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jan 2022 04:10:25 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E242C061574
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 01:10:25 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id w15-20020a4a9d0f000000b002c5cfa80e84so1596034ooj.5
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 01:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+IAqNpU/lnPqWK3TEofTL9vxuilP6qFdfM1IXRzrKls=;
        b=YlaKAt0l+QJSIqgI5xDd9Hf6MUCwIUZeatvp69K+1vmj9ubvz7CPImHTo4qvV7PO4i
         FTz9q1B4D1wzQUJ9zvMiM8ojdbIeF4GYstbSq/JBu0w9lR0SQmp+vQaNVSSrfWXw3gcv
         R9m8/teaBTJP2xFpKKfkuNwOTkYuNo/sMNk187AQF9DMDp/AIBTM0bvRtzUFpj55Lazl
         dSiRSOl02rMwVx2jDIzopZvN5bbh0dlQ0ggITtCZHSu9A6hpMHZG+SsP1RoporVunWs0
         kexAz3ub3liRlTcFMV+993rpPanD5k1sPEryJdr+2g2TRsAx3cvJpdLzOfKgfI05sF4T
         lWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+IAqNpU/lnPqWK3TEofTL9vxuilP6qFdfM1IXRzrKls=;
        b=8BAQN1z8tEILmlXKVPAMqkaAnJzLVkKtohL4Vfb9v62qM13TnGNhWwH07PzqwSLQ8M
         wsmeTg18Yecf9n+Jkvg5Bx6CjkIulXKcQGZ2EyqKn6lBuPLiJQLFV4xHY60VQnpkkHvi
         tRejtoDPIaipwvBcj0aHUOdoZI5Z9Il3YYmQBTE46RiWp7Zd18ebXyv7EeE+uEUkYTf6
         QRtKnqR4gb9J6W0Uw2TvT9OyYVy9KuGGnY18JkyHfcPukU7y9Mal8fkw7G55ZoC7P8td
         nsr9brN+3dzyBi8I0MtjYaA3kaH02LnP7hHjg4o5Lkhx+KqnpAD+MBVw8Ixd9vWRWnfg
         3o2w==
X-Gm-Message-State: AOAM530AW2qq9upQapF0ywxSxiTWl9CBigf1gOOhEpqCs9sRTz/5WOrr
        iTfik/QebRNBInh1aGVow+wvoQ==
X-Google-Smtp-Source: ABdhPJxKhWmSu87uvisFKjzrDNqX8ZXpJ7jVCqt36JTa0SHzHga8/EWNXXbcQbTi7VTRLPePVXAjJw==
X-Received: by 2002:a4a:4994:: with SMTP id z142mr25066046ooa.78.1642669824764;
        Thu, 20 Jan 2022 01:10:24 -0800 (PST)
Received: from rivos-atish.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id i12sm944766oot.25.2022.01.20.01.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 01:10:24 -0800 (PST)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Anup Patel <anup@brainfault.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/6] RISC-V: Do not print the SBI version during HSM extension boot print
Date:   Thu, 20 Jan 2022 01:09:14 -0800
Message-Id: <20220120090918.2646626-3-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220120090918.2646626-1-atishp@rivosinc.com>
References: <20220120090918.2646626-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HSM extension information log also prints the SBI version v0.2. This
is misleading as the underlying firmware SBI version may be different
from v0.2.

Remove the unncessary printing of SBI version.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/cpu_ops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index 1985884fe829..3f5a38b03044 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -38,7 +38,7 @@ void __init cpu_set_ops(int cpuid)
 #if IS_ENABLED(CONFIG_RISCV_SBI)
 	if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
 		if (!cpuid)
-			pr_info("SBI v0.2 HSM extension detected\n");
+			pr_info("SBI HSM extension detected\n");
 		cpu_ops[cpuid] = &cpu_ops_sbi;
 	} else
 #endif
-- 
2.30.2

