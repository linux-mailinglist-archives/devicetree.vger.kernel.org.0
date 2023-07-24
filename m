Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F94675F303
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 12:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232657AbjGXKYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 06:24:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232712AbjGXKYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 06:24:19 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB1710F0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:18:57 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DD7FF3F131
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1690193933;
        bh=i7A8jsy5bjd658F51kmk681vUucQn5By1xUctbfoQnA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=Hc/IqLBWGg359UwAtxUmvonY460yIRbscinue5hprFkUKDVbY/ahKCiW9NzZjPMG8
         Nhu8jsluqK5kHwmZoA4+8A5IpttCW/AVga1Vi2+kiZj4nCq3xLg2ReAA8jumMnTmFe
         IK3I1K5vUE79vbVn5kCW1p7KlzZN8wd0/IJh663aNuXYUPzS9c2KYQceXiwXUvQAhS
         oOdnv4oSDfV2HqMX0polVPg81HuFhT4jwHfn1+TEM3bjR3a+haY2Ylb3aSrvSjW/9X
         rxq4GBzkR0iqMgStCfnudHO/0pexNIRPdeXF1LOomSrfOQogVyVsOczexsyFRuLcOk
         vH8ae+GsHhMng==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-403aa344d39so47478131cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:18:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690193931; x=1690798731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7A8jsy5bjd658F51kmk681vUucQn5By1xUctbfoQnA=;
        b=g1Cq6v/UU46pylfRZgcmYa3jbHqUYSSZvaq+H8fM0uKfy4QCL6wDNgDGChJiiHPzRu
         B1PsuiX1S42FWxR2IwLJwBnpO4L5e6XUnBDLJclrebOACWVeAMU8e/vGo20SOXbFhgVW
         4Qq1pAXQa1nWTGFvVyc+D7j/7y7GfKqm/A2n8oQsotvWVJwlMCW14xUESc3MEiDy00zY
         zlUUVA0XPoAIXzTOqld/uXyqPCEpnwRqM8zcKDXdnmBWuH6vBWFbFM9m88pu3em9uZ8O
         NKR97NxAnnQuivzevepkZ9JlKpIgLWq08fBLTdorL5ZqOTVNO0INcQ9LpiKJNM/UgQPZ
         MkfQ==
X-Gm-Message-State: ABy/qLamwfKDDSt5nUOMVEat9bGOn+tdsD9l52v96ijsiriGympnf4sr
        L4Kg0zTGI29cXspGOOUFxooIInPMAbIK+z+mnDLKbf5cvCpfb54b/WpRePoXqKCpXWR8ucHuWEL
        Xx1UnRpTmZXRu/b2UkEv2bSln3RytUt4+UdjUvA/pOD+e4gRqf/+FYhA=
X-Received: by 2002:ac8:580c:0:b0:403:f45d:6baa with SMTP id g12-20020ac8580c000000b00403f45d6baamr9776104qtg.32.1690193931206;
        Mon, 24 Jul 2023 03:18:51 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGNR81oXfMqrMuftQQOE/8ml/RL4Ur4LTIdWCNiWrDwKJMVhPrcw9L62D8b6YWnG4eCTd+U8Pk2eJDAc12nrmo=
X-Received: by 2002:ac8:580c:0:b0:403:f45d:6baa with SMTP id
 g12-20020ac8580c000000b00403f45d6baamr9776084qtg.32.1690193930924; Mon, 24
 Jul 2023 03:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230702203429.237615-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20230702203429.237615-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20230702203429.237615-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 24 Jul 2023 12:18:35 +0200
Message-ID: <CAJM55Z_udpELaTdszqwGbOUyOQ3D4ROqmmQ1=_i6Qb8E8pJd1w@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] riscv: mm: dma-noncoherent: nonstandard cache
 operations support
To:     Prabhakar <prabhakar.csengg@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Conor Dooley <conor.dooley@microchip.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Guo Ren <guoren@kernel.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Samuel Holland <samuel@sholland.org>,
        linux-riscv@lists.infradead.org,
        Christoph Hellwig <hch@infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2 Jul 2023 at 22:36, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Introduce support for nonstandard noncoherent systems in the RISC-V
> architecture. It enables function pointer support to handle cache
> management in such systems.
>
> This patch adds a new configuration option called
> "RISCV_NONSTANDARD_CACHE_OPS." This option is a boolean flag that
> depends on "RISCV_DMA_NONCOHERENT" and enables the function pointer
> support for cache management in nonstandard noncoherent systems.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Tested-by: Conor Dooley <conor.dooley@microchip.com> # tyre-kicking on a d1
> ---
> v9 -> v10
> * Added __ro_after_init compiler attribute for noncoherent_cache_ops
> * Renamed clean -> wback
> * Renamed inval -> inv
> * Renamed flush -> wback_inv
>
> v8 -> v9
> * New patch
> ---
>  arch/riscv/Kconfig                       |  7 ++++
>  arch/riscv/include/asm/dma-noncoherent.h | 28 +++++++++++++++
>  arch/riscv/mm/dma-noncoherent.c          | 43 ++++++++++++++++++++++++
>  arch/riscv/mm/pmem.c                     | 13 +++++++
>  4 files changed, 91 insertions(+)
>  create mode 100644 arch/riscv/include/asm/dma-noncoherent.h
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index d9e451ac862a..42c86b13c5e1 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -265,6 +265,13 @@ config RISCV_DMA_NONCOHERENT
>         select ARCH_HAS_SYNC_DMA_FOR_DEVICE
>         select DMA_DIRECT_REMAP
>
> +config RISCV_NONSTANDARD_CACHE_OPS
> +       bool
> +       depends on RISCV_DMA_NONCOHERENT
> +       help
> +         This enables function pointer support for non-standard noncoherent
> +         systems to handle cache management.
> +
>  config AS_HAS_INSN
>         def_bool $(as-instr,.insn r 51$(comma) 0$(comma) 0$(comma) t0$(comma) t0$(comma) zero)
>
> diff --git a/arch/riscv/include/asm/dma-noncoherent.h b/arch/riscv/include/asm/dma-noncoherent.h
> new file mode 100644
> index 000000000000..969cf1f1363a
> --- /dev/null
> +++ b/arch/riscv/include/asm/dma-noncoherent.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2023 Renesas Electronics Corp.
> + */
> +
> +#ifndef __ASM_DMA_NONCOHERENT_H
> +#define __ASM_DMA_NONCOHERENT_H
> +
> +#include <linux/dma-direct.h>
> +
> +/*
> + * struct riscv_cache_ops - Structure for CMO function pointers
> + *
> + * @wback: Function pointer for cache writeback
> + * @inv: Function pointer for invalidating cache
> + * @wback_inv: Function pointer for flushing the cache (writeback + invalidating)
> + */
> +struct riscv_cache_ops {
> +       void (*wback)(phys_addr_t paddr, unsigned long size);
> +       void (*inv)(phys_addr_t paddr, unsigned long size);
> +       void (*wback_inv)(phys_addr_t paddr, unsigned long size);

Hi Prabhakar

Just a quick question. After Arnd's patchset the
arch_dma_cache{inv,wback,wback_inv} functions take a phys_addr_t and
size_t, but here you want these callbacks to take a phys_addr_t and
unsigned long instead. Why not keep them using size_t?

> +};
> +
> +extern struct riscv_cache_ops noncoherent_cache_ops;
> +
> +void riscv_noncoherent_register_cache_ops(const struct riscv_cache_ops *ops);
> +
> +#endif /* __ASM_DMA_NONCOHERENT_H */
> diff --git a/arch/riscv/mm/dma-noncoherent.c b/arch/riscv/mm/dma-noncoherent.c
> index b9a9f57e02be..4c2e3f1cdfe6 100644
> --- a/arch/riscv/mm/dma-noncoherent.c
> +++ b/arch/riscv/mm/dma-noncoherent.c
> @@ -9,13 +9,26 @@
>  #include <linux/dma-map-ops.h>
>  #include <linux/mm.h>
>  #include <asm/cacheflush.h>
> +#include <asm/dma-noncoherent.h>
>
>  static bool noncoherent_supported;
>
> +struct riscv_cache_ops noncoherent_cache_ops __ro_after_init = {
> +       .wback = NULL,
> +       .inv = NULL,
> +       .wback_inv = NULL,
> +};
> +
>  static inline void arch_dma_cache_wback(phys_addr_t paddr, size_t size)
>  {
>         void *vaddr = phys_to_virt(paddr);
>
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.wback)) {
> +               noncoherent_cache_ops.wback(paddr, size);
> +               return;
> +       }
> +#endif
>         ALT_CMO_OP(clean, vaddr, size, riscv_cbom_block_size);
>  }
>
> @@ -23,6 +36,13 @@ static inline void arch_dma_cache_inv(phys_addr_t paddr, size_t size)
>  {
>         void *vaddr = phys_to_virt(paddr);
>
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.inv)) {
> +               noncoherent_cache_ops.inv(paddr, size);
> +               return;
> +       }
> +#endif
> +
>         ALT_CMO_OP(inval, vaddr, size, riscv_cbom_block_size);
>  }
>
> @@ -30,6 +50,13 @@ static inline void arch_dma_cache_wback_inv(phys_addr_t paddr, size_t size)
>  {
>         void *vaddr = phys_to_virt(paddr);
>
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.wback_inv)) {
> +               noncoherent_cache_ops.wback_inv(paddr, size);
> +               return;
> +       }
> +#endif
> +
>         ALT_CMO_OP(flush, vaddr, size, riscv_cbom_block_size);
>  }
>
> @@ -50,6 +77,13 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
>  {
>         void *flush_addr = page_address(page);
>
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.wback_inv)) {
> +               noncoherent_cache_ops.wback_inv(page_to_phys(page), size);
> +               return;
> +       }
> +#endif
> +
>         ALT_CMO_OP(flush, flush_addr, size, riscv_cbom_block_size);
>  }
>
> @@ -75,3 +109,12 @@ void riscv_noncoherent_supported(void)
>              "Non-coherent DMA support enabled without a block size\n");
>         noncoherent_supported = true;
>  }
> +
> +void riscv_noncoherent_register_cache_ops(const struct riscv_cache_ops *ops)
> +{
> +       if (!ops)
> +               return;
> +
> +       noncoherent_cache_ops = *ops;
> +}
> +EXPORT_SYMBOL_GPL(riscv_noncoherent_register_cache_ops);
> diff --git a/arch/riscv/mm/pmem.c b/arch/riscv/mm/pmem.c
> index 089df92ae876..c5fc5ec96f6d 100644
> --- a/arch/riscv/mm/pmem.c
> +++ b/arch/riscv/mm/pmem.c
> @@ -7,15 +7,28 @@
>  #include <linux/libnvdimm.h>
>
>  #include <asm/cacheflush.h>
> +#include <asm/dma-noncoherent.h>
>
>  void arch_wb_cache_pmem(void *addr, size_t size)
>  {
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.wback)) {
> +               noncoherent_cache_ops.wback(virt_to_phys(addr), size);
> +               return;
> +       }
> +#endif
>         ALT_CMO_OP(clean, addr, size, riscv_cbom_block_size);
>  }
>  EXPORT_SYMBOL_GPL(arch_wb_cache_pmem);
>
>  void arch_invalidate_pmem(void *addr, size_t size)
>  {
> +#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
> +       if (unlikely(noncoherent_cache_ops.inv)) {
> +               noncoherent_cache_ops.inv(virt_to_phys(addr), size);
> +               return;
> +       }
> +#endif
>         ALT_CMO_OP(inval, addr, size, riscv_cbom_block_size);
>  }
>  EXPORT_SYMBOL_GPL(arch_invalidate_pmem);
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
