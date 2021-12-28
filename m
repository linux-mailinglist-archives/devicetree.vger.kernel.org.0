Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F70B480DB8
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 23:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237675AbhL1WbH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 17:31:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237670AbhL1WbG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Dec 2021 17:31:06 -0500
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11E12C061401
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 14:31:06 -0800 (PST)
Received: by mail-qv1-xf29.google.com with SMTP id q4so17590922qvh.9
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 14:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JWDZG+O5QMw6Gx6H+DMlU7as2a1pC5H4fQ/YCHQ2l+Y=;
        b=U/S1I+cSe4mLRbGLbnq4cgulAqcxT4UxPOeKVkGJIoCCB4Ox6b7ZqNFQ+mBduOHFso
         t4rMObEyAMJP2eHp98k1yahLu6fxxuwUYzyoiHOhxkCTQ18/9uqbi/pGd65ZcsTKVF8Y
         cWnVa+D3BOjNqJf9FtbztZaJhuE0jFQeKTSn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JWDZG+O5QMw6Gx6H+DMlU7as2a1pC5H4fQ/YCHQ2l+Y=;
        b=ftGssnQbxQU1EWSzBxkkKqe0mgSXHKojQkWELjEXc1fdm256oYDuVEY6y+yJCmNnOt
         Qespw1VYEf/U5pw1tckpcxc7ixk7SC7/cpdO0A2Pe6WDQxMfBMyKHmTR7oR+sFXQ12wi
         C2+zaGmcD7qb61g+KpLZTOHvMs6KDS8q3ius5mWlBQBkpD/lKorfpaTigqJfj2XHmOKy
         0qByCh7u/aN/MxWXZvokLRFsM1dnQYH9yZUAACUBb8cKklZaSakT8+mrGOct+lVlxaWC
         TlLEeweWtQSCgpwaLL3vX1bopkmz7T+BV97lsBl80O6jI/czXCDs00wz44nMdjrGz6T8
         4lvw==
X-Gm-Message-State: AOAM533f57EctRiqPuwn6RO+zm38qqA0xmShdaXaJfz5l8gDfoH4z8BK
        mNz8/1u813BFqXcTkd/VVIiD
X-Google-Smtp-Source: ABdhPJyUZ5+HZnMhHNyj8B9R04F7Fzf7ePbGliqWg3h7IItwupJdQhrZvoSq5lZqaUU1hC+U6l0B2A==
X-Received: by 2002:a05:6214:226d:: with SMTP id gs13mr20887535qvb.75.1640730665263;
        Tue, 28 Dec 2021 14:31:05 -0800 (PST)
Received: from fedora.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id i5sm2738407qti.27.2021.12.28.14.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 14:31:05 -0800 (PST)
From:   Atish Patra <atishp@atishpatra.org>
X-Google-Original-From: Atish Patra <atishp@rivosinc.com>
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
Subject: [PATCH v2 2/6] RISC-V: Do not print the SBI version during HSM extension boot print
Date:   Tue, 28 Dec 2021 14:30:53 -0800
Message-Id: <20211228223057.2772727-3-atishp@rivosinc.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228223057.2772727-1-atishp@rivosinc.com>
References: <20211228223057.2772727-1-atishp@rivosinc.com>
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
2.33.1

