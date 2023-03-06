Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E33656ACD0E
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 19:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230163AbjCFSwK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 13:52:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230119AbjCFSwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 13:52:09 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2206497F3
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 10:52:06 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id v16so9940072wrn.0
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 10:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112; t=1678128725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6Kcl5snT4dOT1Wk63DsCfYmCJln0IX3AMZ3xLgwxEE=;
        b=tmdUDj4teYRPGPVmMc0RPsl1zl5vsv3S8+GCXAW0/s1S267aiJlsDabus51wc2BaFf
         RQNpEKYrxga62mE8kwkh2pdz/ZqmbeLZIxQ4igs9EmQVEwMIMf5MI7QAsE6LzXfNK2+/
         1Tm87rGjzxKEctE1klwstJe+gysP9trhlFv3M0VrHQczZFLI/2jkB6860mPzHgkJ/cEC
         tONrDQC7H1ppljQ799985LTKaViqcIUzQlYWSOVcCC1IiEzbVnstvAF3EoMKxQfwD5dL
         1CnQe6Eclrp5BkhYMqh7YIGq9iqXmEVPkxMzWA/rXop/9gdoqAwcAjlMzRww4PqhttMF
         lwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678128725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6Kcl5snT4dOT1Wk63DsCfYmCJln0IX3AMZ3xLgwxEE=;
        b=KNgxAEoids3h65peN7NtjGr4l6l9CME1ygfU7VoMZbeAwt1MaOwId0KH4aDbFX0Y6x
         eouU6RoDJXvugG0xYsN1MeI6G648nHJpda2hy0ECL9/TeLn3Y2RR1qrOzlzArmSjrbLR
         k9oUCzCRIrdtnRkqSxi6oASrovxGDuF3NMd9Lg9jAteeA2t2ykYUJR14utjnDBEuh6h3
         5Y7ZtT1CVAn7BBJ8AQmpJL5CpAujw5uVKsh6Ss2VkzqXs9R3pqyD3OPXn6frwrnMyFD9
         TPLKInx9Lt9A0xB34Y4pwJSj+zgzy/2Lm/ueZr/EFkXqR19VQrBXEkoD/Ue7r6fo64eI
         AcmA==
X-Gm-Message-State: AO0yUKVcK2y/lj+MsLuKOkheMgcVnNPPfnQY5aNU+pksnphS/WX2vRJ/
        FcDtTIguE6WNA1GTbzjK8jEBCdqM/jYHkr2cIYZ21xreyj3btNYR
X-Google-Smtp-Source: AK7set8I+3jxDfAUEo7frBA3dq8huNi9KnbKovbnIOQ0/OQKEcAAicBWKJUD2c5b7PTUdIxHwYxf1SZVe1fSQaWvLtY=
X-Received: by 2002:a5d:5951:0:b0:2ce:7219:4d64 with SMTP id
 e17-20020a5d5951000000b002ce72194d64mr373680wri.11.1678128725393; Mon, 06 Mar
 2023 10:52:05 -0800 (PST)
MIME-Version: 1.0
References: <20230301082552.274331-1-alexghiti@rivosinc.com> <CAK9=C2XAOKbyrbOnDP1GzW1VyO-f-V-oEVcp+PhGHeHKFh4C6A@mail.gmail.com>
In-Reply-To: <CAK9=C2XAOKbyrbOnDP1GzW1VyO-f-V-oEVcp+PhGHeHKFh4C6A@mail.gmail.com>
From:   Alexandre Ghiti <alexghiti@rivosinc.com>
Date:   Mon, 6 Mar 2023 19:51:54 +0100
Message-ID: <CAHVXubj9sCEuANsVe0N7YRMg8OPx_eALZfy0vERKU9P6QUDM0Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] riscv: Use PUD/P4D/PGD pages for the linear mapping
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Anup,

On Mon, Mar 6, 2023 at 5:33=E2=80=AFPM Anup Patel <apatel@ventanamicro.com>=
 wrote:
>
> On Wed, Mar 1, 2023 at 1:56=E2=80=AFPM Alexandre Ghiti <alexghiti@rivosin=
c.com> wrote:
> >
> > This patchset intends to improve tlb utilization by using hugepages for
> > the linear mapping.
> >
> > base-commit-tag: v6.2-rc7
> >
> > v6:
> > - quiet LLVM warning by casting phys_ram_base into an unsigned long
> >
> > v5:
> > - Fix nommu builds by getting rid of riscv_pfn_base in patch 1, thanks
> >   Conor
> > - Add RB from Andrew
> >
> > v4:
> > - Rebase on top of v6.2-rc3, as noted by Conor
> > - Add Acked-by Rob
> >
> > v3:
> > - Change the comment about initrd_start VA conversion so that it fits
> >   ARM64 and RISCV64 (and others in the future if needed), as suggested
> >   by Rob
> >
> > v2:
> > - Add a comment on why RISCV64 does not need to set initrd_start/end th=
at
> >   early in the boot process, as asked by Rob
> >
> > Alexandre Ghiti (2):
> >   riscv: Get rid of riscv_pfn_base variable
> >   riscv: Use PUD/P4D/PGD pages for the linear mapping
>
> I tried this series but it is getting stuck after reaching user space.
>
> Does this series require some other dependent patches ?

No it should not. Let me take a look: what's your config and the base commi=
t?

>
> Regards,
> Anup
>
> >
> >  arch/riscv/include/asm/page.h | 19 +++++++++++++++++--
> >  arch/riscv/mm/init.c          | 28 ++++++++++++++++++----------
> >  arch/riscv/mm/physaddr.c      | 16 ++++++++++++++++
> >  drivers/of/fdt.c              | 11 ++++++-----
> >  4 files changed, 57 insertions(+), 17 deletions(-)
> >
> > --
> > 2.37.2
> >
