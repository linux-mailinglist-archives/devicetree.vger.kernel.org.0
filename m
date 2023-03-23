Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFC806C6BA2
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 15:55:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbjCWOzo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 10:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231395AbjCWOzn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 10:55:43 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A93891B335
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 07:55:42 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id by13so19136722vsb.3
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 07:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1679583342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+oTlLkGu4XBg7D9GQLxh6VnC+XUJIJTBF8fUhsoTP8=;
        b=LTBfqwlf/M9rJPjcbZEXH/wbqe1ZOqjIzjST3UXornybx+R7J7pGQpUrAHtHTzDGvu
         cL7EpEXBe23GlAZa7FOxq38BNNXRVgmUXNdIQBCuStekUCBhCTybk3WfGhWfZTKSChWD
         JnbCIa60L1xcSOqFe1o8B9d3fnK5bQT7zYWnp6T2+O+g66fM53F/t0PL2q+FzqlKML8O
         fTgKD2u4V0j+0KxM4ylNAg8sWdHs65ZORGm4UfB01kqzI9HXoSclY2mcKnpT1xLnQFlM
         nXCDrYU7AiJ4IL73YeAi0M4yLsQmhK2hvdB662T2PEHkxhthJAZ+8H9Iy13bi3HAzPEL
         IAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679583342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+oTlLkGu4XBg7D9GQLxh6VnC+XUJIJTBF8fUhsoTP8=;
        b=z3qwvgsm8qjzxXijUZBAE7eZzVz7ACV5Y9vumPinOBmLBcuGy2u3zruH4N9Q3q2rwi
         Zlys9dDnwMxKfSg0Sv23tIS5/ZIY9tGYKeAoUDxNUBMpmN+lwIBLGSIyHfJ+VT+lYVab
         59Jrh32PdtXyaoZairrCs11e/4pqhTgutvxFgDr5hrAqmGsF8aRk8yAOMzCaZd2/RQbf
         Cv0naFORtvQTLj1DQn/zBhg5aXYxpnzY0oTdgWbW+AQFuTmN8mkVSA1x8agecrwH6BkJ
         Sl6woD5geWTEjev0M+7qXfHiYDZ8btg0DwK2ZCquy6wGPqs31Y41oYBERBvShsu/27jB
         sSsA==
X-Gm-Message-State: AO0yUKUsrbLevlplWaX5ayToIzgxbHPaJfO/Oe4Iwkaju5D49XtsxpZP
        d5EsaZAGNNv8VEl8btDe8UEfV4Gm6nBD6Sif+er+Vw==
X-Google-Smtp-Source: AK7set9i+OocmGY8L3enlKAK0g0CHDPShP25dec9yB6zEMC739pzT/6c96zssGZJJoRlEi9hIXGwiBLNEQySgGEkvRo=
X-Received: by 2002:a67:d71d:0:b0:425:dd21:acc8 with SMTP id
 p29-20020a67d71d000000b00425dd21acc8mr2013668vsj.7.1679583341611; Thu, 23 Mar
 2023 07:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230316131711.1284451-1-alexghiti@rivosinc.com>
 <CAK9=C2XJtSG2d_nsyDv7kU1v7Jj0chdevqrMc0MpJswukcEABA@mail.gmail.com> <CAHVXubhhxpzHDM-n91V_rceY5t_VqLvrwZj3RP_tNL2=F9mqjQ@mail.gmail.com>
In-Reply-To: <CAHVXubhhxpzHDM-n91V_rceY5t_VqLvrwZj3RP_tNL2=F9mqjQ@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Thu, 23 Mar 2023 20:25:29 +0530
Message-ID: <CAK9=C2WVOpSqtt8r1U4hnzSZ=cc1PocpukgQjNyahP2XuPhozw@mail.gmail.com>
Subject: Re: [PATCH v8 0/4] riscv: Use PUD/P4D/PGD pages for the linear mapping
To:     Alexandre Ghiti <alexghiti@rivosinc.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mike Rapoport <rppt@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Anup Patel <anup@brainfault.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 23, 2023 at 6:24=E2=80=AFPM Alexandre Ghiti <alexghiti@rivosinc=
.com> wrote:
>
> Hi Anup,
>
> On Thu, Mar 23, 2023 at 1:18=E2=80=AFPM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > Hi Alex,
> >
> > On Thu, Mar 16, 2023 at 6:48=E2=80=AFPM Alexandre Ghiti <alexghiti@rivo=
sinc.com> wrote:
> > >
> > > This patchset intends to improve tlb utilization by using hugepages f=
or
> > > the linear mapping.
> > >
> > > As reported by Anup in v6, when STRICT_KERNEL_RWX is enabled, we must
> > > take care of isolating the kernel text and rodata so that they are no=
t
> > > mapped with a PUD mapping which would then assign wrong permissions t=
o
> > > the whole region: it is achieved by introducing a new memblock API.
> > >
> > > Another patch makes use of this new API in arm64 which used some sort=
 of
> > > hack to solve this issue: it was built/boot tested successfully.
> > >
> > > base-commit-tag: v6.3-rc1
> > >
> > > v8:
> > > - Fix rv32, as reported by Anup
> > > - Do not modify memblock_isolate_range and fixes comment, as suggeste=
d by Mike
> > > - Use the new memblock API for crash kernel too in arm64, as suggeste=
d by Andrew
> > > - Fix arm64 double mapping (which to me did not work in v7), but ends=
 up not
> > >   being pretty at all, will wait for comments from arm64 reviewers, b=
ut
> > >   this patch can easily be dropped if they do not want it.
> > >
> > > v7:
> > > - Fix Anup bug report by introducing memblock_isolate_memory which
> > >   allows us to split the memblock mappings and then avoid to map the
> > >   the PUD which contains the kernel as read only
> > > - Add a patch to arm64 to use this newly introduced API
> > >
> > > v6:
> > > - quiet LLVM warning by casting phys_ram_base into an unsigned long
> > >
> > > v5:
> > > - Fix nommu builds by getting rid of riscv_pfn_base in patch 1, thank=
s
> > >   Conor
> > > - Add RB from Andrew
> > >
> > > v4:
> > > - Rebase on top of v6.2-rc3, as noted by Conor
> > > - Add Acked-by Rob
> > >
> > > v3:
> > > - Change the comment about initrd_start VA conversion so that it fits
> > >   ARM64 and RISCV64 (and others in the future if needed), as suggeste=
d
> > >   by Rob
> > >
> > > v2:
> > > - Add a comment on why RISCV64 does not need to set initrd_start/end =
that
> > >   early in the boot process, as asked by Rob
> > >
> > > Alexandre Ghiti (4):
> > >   riscv: Get rid of riscv_pfn_base variable
> > >   mm: Introduce memblock_isolate_memory
> > >   arm64: Make use of memblock_isolate_memory for the linear mapping
> > >   riscv: Use PUD/P4D/PGD pages for the linear mapping
> >
> > Kernel boot fine on RV64 but there is a failure which is still not
> > addressed. You can see this failure as following message in
> > kernel boot log:
> >     0.000000] Failed to add a System RAM resource at 80200000
>
> Hmmm I don't get that in any of my test configs, would you mind
> sharing yours and your qemu command line?

Try alexghiti_test branch at
https://github.com/avpatel/linux.git

I am building the kernel using defconfig and my rootfs is
based on busybox.

My QEMU command is:
qemu-system-riscv64 -M virt -m 512M -nographic -bios
opensbi/build/platform/generic/firmware/fw_dynamic.bin -kernel
./build-riscv64/arch/riscv/boot/Image -append "root=3D/dev/ram rw
console=3DttyS0 earlycon" -initrd ./rootfs_riscv64.img -smp 4

Regards,
Anup

>
> Thanks
>
> >
> > Regards,
> > Anup
> >
> > >
> > >  arch/arm64/mm/mmu.c           | 25 +++++++++++------
> > >  arch/riscv/include/asm/page.h | 19 +++++++++++--
> > >  arch/riscv/mm/init.c          | 53 ++++++++++++++++++++++++++++-----=
--
> > >  arch/riscv/mm/physaddr.c      | 16 +++++++++++
> > >  drivers/of/fdt.c              | 11 ++++----
> > >  include/linux/memblock.h      |  1 +
> > >  mm/memblock.c                 | 20 +++++++++++++
> > >  7 files changed, 119 insertions(+), 26 deletions(-)
> > >
> > > --
> > > 2.37.2
> > >
