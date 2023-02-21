Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A92B69E815
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229922AbjBUTJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbjBUTJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:34 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AA512D15D
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:30 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ck15so22613450edb.0
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=XxAMGoWv73/z3O/e/TZW7W5m5IwiXjtoyA8bp8jFz2NakB5O/GfUjsIl0WUiN4hiHj
         hT08h5nj9m91jxSsVJsUj0snKdPrmvVIaSWuTXH69EzEDhIdn01F3CIv0gB+Di+ujQSI
         ykJramzQDCwLJsz7xkD4kE9DynwJPGqICZ5eklWmscYOhJJHW2Rzeka87dKEsNDmmn4b
         S7GszEz7Rb3BA3LJKpQSrOeWS447OCGp1Kts6pk5VkMTv7FpB77YxEDAnyVyVGW2VNuH
         NnjQ85WrQjzepoicZrIYWxDwtFTJTcIu4ckqoGJmq/z6qCMMzP7eEmTnITiFyeE5tVt1
         ASAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQSbWzdXITTUFGVPTFXHGgENmDgXWQs7cxb8n6vTRIg=;
        b=x78yWNIGKpiYOiT6j/by7WJIby5Uxj7fkV2WQSwcn2nfHr4ttU1BJeVEM9pVztUGi3
         TqtjpG5AIxFFv0Xn0LCFJ3YYUPBRTZ2C+2MIsHaeQ5lBT3z0Lhz/Gre7+2C4XPspWPI5
         EVRJo8pEatmWJrnM7BhrgO2f4qYsAMUD8teRuQIZe4vU9WrDNGnMsBRiXG0FfmWiDbLA
         OF8qlEqD96C6SMAQG+SoE3Tvx2UQB35/DTbJ/1TbSeQwwy+ev7Lw4CLmB01ylEGzYbb4
         +4Uylb7eR67dqRhA2I5+bcA1+Sjp0UrRdlBYiwugp0n1dnw0fm3ool6fX+cguEW9vORK
         z7Mg==
X-Gm-Message-State: AO0yUKUvxAkmI7OQ0Wn8j64SuOFW3n1OQEfCoJ2DWgqzgNIGKgq2r9u1
        /TC8tCPq/Q8XM/SHhiRvijZb3L3551CIpRF0
X-Google-Smtp-Source: AK7set+QxS6Nf/kPSQ9yU93mzJ3Mgta9VHeTQonMkPjJqw/qXdCPEq+ZiHN80rpKxC+OtcbK+or3wA==
X-Received: by 2002:a17:907:a42a:b0:8b1:730b:a296 with SMTP id sg42-20020a170907a42a00b008b1730ba296mr23303956ejc.15.1677006569859;
        Tue, 21 Feb 2023 11:09:29 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id ck20-20020a170906c45400b008c95f0ce32esm3967120ejb.3.2023.02.21.11.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:29 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        Anup Patel <anup@brainfault.org>
Subject: [PATCH v5 8/8] RISC-V: KVM: Expose Zicboz to the guest
Date:   Tue, 21 Feb 2023 20:09:16 +0100
Message-Id: <20230221190916.572454-9-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
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

