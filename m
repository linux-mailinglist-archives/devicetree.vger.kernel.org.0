Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF0D96A1FA2
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:27:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjBXQ07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbjBXQ0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:47 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD436A7B1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:43 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id az36so40786wmb.1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=WYvJAh+G6x6Vlax3zUgVMCE5aXia8pEEMHFNGJZMetpJPvr3AFrx1UrS6bgxuRlFYl
         fKHzZw7I1iDnhJfcYXRJMf2tEm+ZJ9hg9Y9xvmFG0rEb3OHivpXDTV/Pv03X1YkRFJQg
         cbhwwMKK2Os8sLmFRb9cWh9yW0rtwGZ1XOO6VV2JHqQJcZXesoRzsQ/jkNjoZhsX5hFc
         an+IAXJ+TN2el+6ea9OJWLW1AkRFD/P6PCHlro7SkO1WYB5j4XTQXRdS2f1dodDMbojn
         oPldkG8xv0UfVfz/WGB0PliCkOlM8q8dpFBruuPPq2KUYDZovFmzoaf1b6hAYSUzqwoz
         y1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=1sz6Vkx4CaoblNqJCjAloNEYs8UxkXBzq8rZbhILSaaBJBvPutXbiV5HSXD1CQ4nvy
         Dwbdthg2lJUTrOYnpVAlq1SOqJE4eVoSThP3Rwky+kfgQcQY+m9gKHCmXcN85Yl14JBQ
         HA0J1M3NykfOyoVvMh8CjB8n/fB6gQ3XQUSJ/BCk9HUuQAClhc4kAjrmAJ2YI/0zL270
         bM3YbfUTulG3BocpPP6VyMkPVhh/hz2TK/jR2Yc8d94Z5pWN+p1Q0IRWdrg5qvTeM46Q
         b0rQ8FqN4LcgEf66323zj7vPXRfDzP70KDWQwFvqYl6ZGckzpapsW3cn2nKT556hjriT
         j1PQ==
X-Gm-Message-State: AO0yUKW3FjqIIuyJOi39Hg0vY8ZJBzRLSWLy84IjhVd+K2Jb/vxOuErR
        IjT6mTeUe2mcy/hyeA9P/OU8Lw==
X-Google-Smtp-Source: AK7set+B4L+KEhB/KyLIkSH6PHaVRqL2xDGuGkTQosj7QgMJ6o2wSVbxw27nLBgEAAEMmRkOdbvzag==
X-Received: by 2002:a05:600c:354c:b0:3df:9858:c03a with SMTP id i12-20020a05600c354c00b003df9858c03amr178485wmq.15.1677256002565;
        Fri, 24 Feb 2023 08:26:42 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id j22-20020a5d4536000000b002c5a07e940csm13820864wra.33.2023.02.24.08.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:42 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Conor Dooley ' <conor.dooley@microchip.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Sudip Mukherjee ' <sudip.mukherjee@codethink.co.uk>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v6 8/8] RISC-V: KVM: Expose Zicboz to the guest
Date:   Fri, 24 Feb 2023 17:26:31 +0100
Message-Id: <20230224162631.405473-9-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
References: <20230224162631.405473-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Guests may use the cbo.zero instruction when the CPU has the Zicboz
extension and the hypervisor sets henvcfg.CBZE.

Add Zicboz support for KVM guests which may be enabled and
disabled from KVM userspace using the ISA extension ONE_REG API.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu.c             | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index c1a1bb0fa91c..e44c1e90eaa7 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -106,6 +106,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_SVINVAL,
 	KVM_RISCV_ISA_EXT_ZIHINTPAUSE,
 	KVM_RISCV_ISA_EXT_ZICBOM,
+	KVM_RISCV_ISA_EXT_ZICBOZ,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index e5126cefbc87..198ee86cad38 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -63,6 +63,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVPBMT),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 	KVM_ISA_EXT_ARR(ZICBOM),
+	KVM_ISA_EXT_ARR(ZICBOZ),
 };
 
 static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ext)
@@ -865,6 +866,9 @@ static void kvm_riscv_vcpu_update_config(const unsigned long *isa)
 	if (riscv_isa_extension_available(isa, ZICBOM))
 		henvcfg |= (ENVCFG_CBIE | ENVCFG_CBCFE);
 
+	if (riscv_isa_extension_available(isa, ZICBOZ))
+		henvcfg |= ENVCFG_CBZE;
+
 	csr_write(CSR_HENVCFG, henvcfg);
 #ifdef CONFIG_32BIT
 	csr_write(CSR_HENVCFGH, henvcfg >> 32);
-- 
2.39.1

