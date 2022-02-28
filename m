Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31C964C65D5
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:42:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234396AbiB1JnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:43:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234403AbiB1JnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:43:24 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8446302
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:42:46 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id l21-20020a056830239500b005afd2a7eaa2so6170553ots.9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZOaq/RArOsIMDEytI6Sz1pnZYzBz3vUl5NUCRG67IW0=;
        b=tCKMHUU8QAqKTHwdEi5K8/K7yjrn7fm6WB/AaoaEQI6tkUpy5tW0WXN0c+xY9Wi4eJ
         x/2DwjrGbGUG4RKEmxOeEP4UJzXT31aFaGSjO3VDmZ41dPnA9lA4DvyCwFiroyue0Wus
         MiQrRH9NTjxL2rZt9GcERXjF19Gsjh6UQp9jwYgjC9F/0Ph+2RIEYnGOFkDZYlmeZPcu
         ZXWbxA09SAsx3NXpdUNxEaQvxuMSGUWI062WthWWaQnnZ4bBVaGfgClQmNDOGu9U6Dh/
         GK7TtuNQPyPZV2nGKSASb82XI4sjsqO9G4g7dLQ3Xgp/+VRD49LbiOgfd+2V9amTc/kJ
         2SwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZOaq/RArOsIMDEytI6Sz1pnZYzBz3vUl5NUCRG67IW0=;
        b=U7N3RYiZS/K5ZRe2gjw9dK+11ABPpQPKxyeFLCqlpiJb+k3eKmfeNQp+lZOgMUdWaj
         lEzGb5F3pF/OzQP0dtHaZx56vAcq0Hm+qBe18h5EHlWnehFsnSv80Vo1zDVPFo3eFa0i
         0nK1tJ7WHXg2GXECbGzVP+r4SdV9HiFShhnwioA03WN/7JQr73uPBb206EOQd2y4OPnr
         tbxIPrR/a4DTraWHGfJ8bTR6HE0FikwIrtewHJPCFVT+MUqMeQX8fxLwzOZRSvBJWQCl
         BsOXXMk1vxVtYrTc7uJZJRzs+DLBcKclkHCYXft7WOK0z49g92q+9V8UAQkomJMK1kPk
         ZIMg==
X-Gm-Message-State: AOAM530Hkv8Ep8T5J+dD5AQ8ZpKyJT3mjKOUFHv1sjFiIpo41gztg+Lz
        Hh/1QpZKDfHOWFJQEYoekaPyKw==
X-Google-Smtp-Source: ABdhPJxEMD3OsXSa/J6FmMVubYEnSdaZt/5m8UwSnv4J/cr7HnlImwQ9KxEgWcFI2v0cqErwRyFD0Q==
X-Received: by 2002:a05:6830:1d92:b0:5af:4018:c8bf with SMTP id y18-20020a0568301d9200b005af4018c8bfmr8397412oti.349.1646041365638;
        Mon, 28 Feb 2022 01:42:45 -0800 (PST)
Received: from rivos-atish.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id bx10-20020a0568081b0a00b002d70da1ac54sm5936852oib.19.2022.02.28.01.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 01:42:45 -0800 (PST)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        kvm-riscv@lists.infradead.org, Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 2/6] RISC-V: Enable sstc extension parsing from DT
Date:   Mon, 28 Feb 2022 01:42:29 -0800
Message-Id: <20220228094234.3773153-3-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220228094234.3773153-1-atishp@rivosinc.com>
References: <20220228094234.3773153-1-atishp@rivosinc.com>
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

The ISA extension framework now allows parsing any multi-letter
ISA extension.

Enable that for sstc extension.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpu.c        | 1 +
 arch/riscv/kernel/cpufeature.c | 4 +++-
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 691fc9c8099b..7335e9138fb7 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -51,6 +51,7 @@ extern unsigned long elf_hwcap;
  * available logical extension id.
  */
 enum riscv_isa_ext_id {
+	RISCV_ISA_EXT_SSTC = RISCV_ISA_EXT_BASE,
 	RISCV_ISA_EXT_ID_MAX = RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 031ad15a059f..7568c7084a52 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -71,6 +71,7 @@ int riscv_of_parent_hartid(struct device_node *node)
 	}
 
 static struct riscv_isa_ext_data isa_ext_arr[] = {
+	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
 	__RISCV_ISA_EXT_DATA("", RISCV_ISA_EXT_MAX),
 };
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index f3a4b0619aa0..1d8a06575cea 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -192,8 +192,10 @@ void __init riscv_fill_hwcap(void)
 			if (!ext_long) {
 				this_hwcap |= isa2hwcap[(unsigned char)(*ext)];
 				set_bit(*ext - 'a', this_isa);
-			}
+			} else {
+				SET_ISA_EXT_MAP("sstc", RISCV_ISA_EXT_SSTC);
 #undef SET_ISA_EXT_MAP
+			}
 		}
 
 		/*
-- 
2.30.2

