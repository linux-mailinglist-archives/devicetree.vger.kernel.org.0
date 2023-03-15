Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE626BA646
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 05:38:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230518AbjCOEij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 00:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjCOEii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 00:38:38 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA3C41F5DD
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:38:36 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id ce7so10984935pfb.9
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112; t=1678855116;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ot/Kqm87pKKITp9FgIINg6STXrgBNEYzCbiPYciv9Rw=;
        b=XN2KYGCBc8qLHIbu9/3/gA8h9qX44MaM3+Nnv+6yFYnDr93MqybeQmMUI8kQsfTSPy
         ths3vvKvV9w43FmTNTewhXxjFZrrWCfEEAe/7XIXbyvymadSLlEwmwTUymuoaSi86X8n
         zFlRLaa2HEWTQ/Jin+O6vyf1IwKzkmoUgPgc/vixAE4ml0h3d/j9Fl3lJDyMoFA+205M
         DCA7eCwJ/07WXJB+yx8PPI9/FrYWbbgv4m0tZQemhAtA1SXvjHtn7AGRG4Q2mH73bO1J
         S0lXAIOqC5cZfc02PfEY9Ndk7N5Qe7iOSwu83GGI4AooLHkw7ERZ1RZM/V5zL6IXTJnt
         tNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678855116;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ot/Kqm87pKKITp9FgIINg6STXrgBNEYzCbiPYciv9Rw=;
        b=fGzqDhpGpJLxYXWPUvEd00qzHp+TE8EBgpdnamRBkjJBp4p8vjxBRcy8Cao7LuHujb
         ayaS8g6PVq1lhGH6aOYEAnyLo+5P2BQAtED3gnzSA+2yG73gvWcz67F7yD6UDkzrzwC1
         rfOoGbGmKDXGoZrS1HSRwooNvV0egeC4hBbcOsDGFry0W8NronJorAmh7CcSzPvc+XCw
         DoDtFlhBTiO9yriuP54fWdJo3NziTdRRyNwdnzIHPGZFDQxH3+xYEJqXKhvohwZqM/+i
         Gr9tksIBu++wA71DFjv4J+zeUeDNISpboWSIIbExxen3AAnSwA0kJn3a0gaGjOpNl5b2
         lbwA==
X-Gm-Message-State: AO0yUKVMwgCD+hiYpTD1zznmIcM7w07LB5vyQY/9OWsH3Cno5punIee9
        tspz9BZrtHnN7N150yZcqBedKA==
X-Google-Smtp-Source: AK7set+VHTtmboYpV9L3aDih/5qO5NmZnKx50j6qqhcn1b8irqDBR5N97JQ06Ze9oE7rDOQLm9dM1g==
X-Received: by 2002:a62:648e:0:b0:625:c241:5690 with SMTP id y136-20020a62648e000000b00625c2415690mr89474pfb.13.1678855116072;
        Tue, 14 Mar 2023 21:38:36 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id x28-20020aa793bc000000b00593baab06dcsm2412363pff.198.2023.03.14.21.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 21:38:35 -0700 (PDT)
Date:   Tue, 14 Mar 2023 21:38:35 -0700 (PDT)
X-Google-Original-Date: Tue, 14 Mar 2023 21:37:40 PDT (-0700)
Subject:     Re: [PATCH v6 8/8] RISC-V: KVM: Expose Zicboz to the guest
In-Reply-To: <20230224162631.405473-9-ajones@ventanamicro.com>
CC:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        sudip.mukherjee@codethink.co.uk, ben.dooks@codethink.co.uk,
        Atish Patra <atishp@rivosinc.com>, aou@eecs.berkeley.edu,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        jszhang@kernel.org, heiko@sntech.de, anup@brainfault.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     ajones@ventanamicro.com, apatel@ventanamicro.com
Message-ID: <mhng-f27eaa3e-34e3-4843-abdb-4b17cbe24ddb@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Feb 2023 08:26:31 PST (-0800), ajones@ventanamicro.com wrote:
> Guests may use the cbo.zero instruction when the CPU has the Zicboz
> extension and the hypervisor sets henvcfg.CBZE.
>
> Add Zicboz support for KVM guests which may be enabled and
> disabled from KVM userspace using the ISA extension ONE_REG API.
>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Sorry, I guess I wasn't looking closely enough.  It's just a review, not 
an ack.

Anup: is it OK if this goes along with the others?

> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu.c             | 4 ++++
>  2 files changed, 5 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index c1a1bb0fa91c..e44c1e90eaa7 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -106,6 +106,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>  	KVM_RISCV_ISA_EXT_SVINVAL,
>  	KVM_RISCV_ISA_EXT_ZIHINTPAUSE,
>  	KVM_RISCV_ISA_EXT_ZICBOM,
> +	KVM_RISCV_ISA_EXT_ZICBOZ,
>  	KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index e5126cefbc87..198ee86cad38 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -63,6 +63,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
>  	KVM_ISA_EXT_ARR(SVPBMT),
>  	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
>  	KVM_ISA_EXT_ARR(ZICBOM),
> +	KVM_ISA_EXT_ARR(ZICBOZ),
>  };
>
>  static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ext)
> @@ -865,6 +866,9 @@ static void kvm_riscv_vcpu_update_config(const unsigned long *isa)
>  	if (riscv_isa_extension_available(isa, ZICBOM))
>  		henvcfg |= (ENVCFG_CBIE | ENVCFG_CBCFE);
>
> +	if (riscv_isa_extension_available(isa, ZICBOZ))
> +		henvcfg |= ENVCFG_CBZE;
> +
>  	csr_write(CSR_HENVCFG, henvcfg);
>  #ifdef CONFIG_32BIT
>  	csr_write(CSR_HENVCFGH, henvcfg >> 32);
