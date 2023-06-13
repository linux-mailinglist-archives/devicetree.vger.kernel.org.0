Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9C8872DBA2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 09:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232476AbjFMHzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 03:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238986AbjFMHzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 03:55:54 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B76DF10E2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 00:55:53 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-bcad7f7dabcso1530104276.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 00:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686642953; x=1689234953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqkMTpZSPTrtiBwrlg2HB9jORG0uNI2X+Q54yKxHyHA=;
        b=X1lH0zTSm/2trYaS1XeQ55Q9hA/9/r0gKILDhIP3BM1V9j/9FcNnlTg8C6eqes6MhY
         kEEujrjfs/bXMw2MXXaDIEhSffQ3ZxmyyehIWQMaGdQ83t9lijLU+cai3uaF5ZNQ3hJ1
         U4h+mNKlmJ4enUA0b9qIy8BcA850nZF9q8DNphIsqHIDVsbimRdE1m2LdXqy6pRLVSor
         CuNaeb3ZHWvaqWp2UlX8SxpNaeTb54BL1Y6A72HUI8F4MxEPteEgE7OxPWAGRl2KwREW
         FSjlxEtmon50dMqJgkzch8RTCiRJz+wMgeMWSkqDFbH4doZHuoKH0L9GHXdRo8TV+x0S
         4DDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686642953; x=1689234953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqkMTpZSPTrtiBwrlg2HB9jORG0uNI2X+Q54yKxHyHA=;
        b=gDY/Zphl9cZ7ZaCJX7hjV8S6UrPQUZvESan3r4PV+/3YxJ9olaMZxyId6WDZhOPsR5
         dxROJKkAD23j8/zozZ6hv8qj+AKhmzCy1U7ttKKHKzbDQzHFtsegZxFiibJK3qv9Qw82
         HsV5+XxTsEGBuUc3ZAED96e/JhjC8tQiPs52+v3xSbPC5QmnkWoUngLrDbUfNsCCzjoR
         ZCfgaCMMMvRSL9FrYBtQoTv3rx+eNazv/uufYSWry2DafEnfCPBBIsXA8GytdkTuPUQj
         Hknggw+h6M6SaUh8Q5o694mdoNnWUyzIgnc7LwdseuCXBd1U8JjCnNnWrc5a33N+P1rH
         j6aA==
X-Gm-Message-State: AC+VfDwcIpzmteWGGqRXRA1imwvuKIFHIdHcWvt+BZ9D4hKmaEHaqUFK
        BtA+BmkBmSlR+0rksMpztgG5G8AY8xK7l2lVw6lq4w==
X-Google-Smtp-Source: ACHHUZ7O4IuL4c5Qy6TEcv499ftciQaYRXdKcvbuS5ivN5I0ThoFAm05aH64SAu17/J52IMOAeGVAiqoO7kjJSXAUJs=
X-Received: by 2002:a0d:fd83:0:b0:56d:4014:dd20 with SMTP id
 n125-20020a0dfd83000000b0056d4014dd20mr982407ywf.30.1686642952928; Tue, 13
 Jun 2023 00:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230508142842.854564-1-apatel@ventanamicro.com>
 <20230508142842.854564-8-apatel@ventanamicro.com> <ZGIrOKIT8uHcNqbQ@nvidia.com>
In-Reply-To: <ZGIrOKIT8uHcNqbQ@nvidia.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Tue, 13 Jun 2023 13:25:41 +0530
Message-ID: <CAK9=C2V9o4FsFXAfRHLGSuJaDubwM_HSL7keTYeWb_vFDNLd7g@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] irqchip/riscv-imsic: Improve IOMMU DMA support
To:     Jason Gunthorpe <jgg@nvidia.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 6:23=E2=80=AFPM Jason Gunthorpe <jgg@nvidia.com> wr=
ote:
>
> On Mon, May 08, 2023 at 07:58:38PM +0530, Anup Patel wrote:
> > We have a separate RISC-V IMSIC MSI address for each CPU so changing
> > MSI (or IRQ) affinity results in re-programming of MSI address in
> > the PCIe (or platform) device.
> >
> > Currently, the iommu_dma_prepare_msi() is called only once at the
> > time of IRQ allocation so IOMMU DMA domain will only have mapping
> > for one MSI page. This means iommu_dma_compose_msi_msg() called
> > by imsic_irq_compose_msi_msg() will always use the same MSI page
> > irrespective to target CPU MSI address. In other words, changing
> > MSI (or IRQ) affinity for device using IOMMU DMA domain will not
> > work.
> >
> > To address above issue, we do the following:
> > 1) Map MSI pages for all CPUs in imsic_irq_domain_alloc()
> >    using iommu_dma_prepare_msi().
> > 2) Add a new iommu_dma_select_msi() API to select a specific
> >    MSI page from a set of already mapped MSI pages.
> > 3) Use iommu_dma_select_msi() to select a specific MSI page
> >    before calling iommu_dma_compose_msi_msg() in
> >    imsic_irq_compose_msi_msg().
>
> Is there an iommu driver somewhere in all this? I don't obviously see
> one?

Sorry for the delayed response.

The RISC-V IOMMU specification is frozen and will be ratified/released
anytime this month or next.
https://github.com/riscv-non-isa/riscv-iommu/releases/download/v1.0-rc6/ris=
cv-iommu.pdf

The RISC-V IOMMU driver will be send-out on LKML pretty soon
https://github.com/tjeznach/linux/tree/tjeznach/riscv-iommu
which can be tested on QEMU
https://github.com/tjeznach/qemu/tree/tjeznach/riscv-iommu

>
> There should be no reason to use the dma-iommu.c stuff just to make
> interrupts work, that is only necessary if there is an iommu, and the
> platform architecture requires the iommu to have the MSI region
> programmed into IOPTEs.
>
> And I'd be much happier if we could clean this design up before risc-v
> starts using it too :\
>

Sure, I will send-out v4 in the next few days.

Regards,
Anup
