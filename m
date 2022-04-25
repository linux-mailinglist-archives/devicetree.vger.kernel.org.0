Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E310D50E150
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238251AbiDYNRl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:17:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241312AbiDYNRh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:17:37 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DC0436306
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:14:33 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id p10so26099348lfa.12
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t0frPbcFivr/mUdiRu781o3Wa9Btm1C7EFtWPzSdw9g=;
        b=VRd7VbuT8nJJjq0/HdtUBnNE9nN/OzM26/5YnlSVWDEZYk4Y0e65UD+cIYpJCj+bCK
         z+1Kgg9b/vG4SnjxmKqyKjcnnGii53a4eFblsuDkmdBWP9lsTYK7tn/uGXrrQ2PbVyA0
         /HXWoj+0HtzRXTOH5jYKRKDgQ7TEg7yXaZdYEb8549qg5XaPYN9C6tJX7r/GM2ubg3bJ
         TjaRPwZYp+OO80JVwpQrEkUYyF3urhZ2aPR84Toe+u/ub2L/j+j2jbzNZX9TD6JGAiBs
         ScnFTU8jAhSOV1v5Tmz2mYiFje1SCu189CtwkRvKUOASNaAdppvILULuw6Ym0+KJxJVK
         K9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t0frPbcFivr/mUdiRu781o3Wa9Btm1C7EFtWPzSdw9g=;
        b=V43rMi2vL21Wt9RQjxg13v60xWL3HqcNzjVcnpdJb7zaT4vje7QKCiuAnSwHBr9Pc5
         5cGUrWbVFqc+azSrijnGz/v3tm1hzOGy6wl9jL3zYtODfCmpIAh3Pawg1t7bbdOgx33r
         TdsKdaqvoRYp5zgwKGDSgqTS9QRZiomdOuwVqz5chd/PuHmbB/r6owaELmp7uN+zQ7KJ
         2YDA8KufFtDHcUMHdxcAK1FUE/VKe6Wtnx4XfvBbqtAaEj9AXZ8k6ZNWu2AqhWKtL//u
         VbzwZsfWuvRLiGgoJiXDWV1cbtAMZOFZJJbV/CHsDj9U2q07nc7WIQlRgFGaxPHAoaPJ
         4DAA==
X-Gm-Message-State: AOAM531QLbBuptbbfEDntq88/US5HVrSLoXZpwevizKngx/39Y0RBZ0v
        9Z56bPdkbaI4vxl0aHOHFSHHxkVa5VK/EXXYTSvShGhb8I0aVA==
X-Google-Smtp-Source: ABdhPJwRfqdhVx3yV5wt4b627Kq+COlg3963BXQh8eRoMVyvXuCRX36cyRQuyTqc0V/Rn/e9S/uCIWgYCRxuPxA/II0=
X-Received: by 2002:ac2:5f84:0:b0:471:fd0f:a6e7 with SMTP id
 r4-20020ac25f84000000b00471fd0fa6e7mr6792261lfe.41.1650892471699; Mon, 25 Apr
 2022 06:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220422211055.9278-1-palmer@rivosinc.com> <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
In-Reply-To: <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Mon, 25 Apr 2022 18:44:20 +0530
Message-ID: <CAK9=C2WTY8+-98XuxRYTaRe4aVJufaB5wr35KRoTKEttUM7JzQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW
 supports sv57
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 25, 2022 at 6:12 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Palmer,.
>
> On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
> > Similar to the previous patch, this allows a dt-selected downgrade to
> > sv48 on systems that support sv57 in case users don't need the extra VA
> > bits and want to save memory or improve performance.
> >
> > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> > ---
> > This is on top of the patches from Alex's set that I dropped.
>
> You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
> when hw supports sv48 if !KASAN"?
> 20211206104657.433304-14-alexandre.ghiti@canonical.com
>
> For both: "DT describes hardware, not software policy"?

It is possible that HW is designed to support both Sv48 and Sv39 but
there is some errata due to which Sv48 does not work correctly ?

We should allow users to downgrade the MMU mode, due to
their own reasons. In fact, users can also disable an extension
by not showing it in the DT ISA string.

Regards,
Anup

>
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -740,6 +740,11 @@ static __init void set_satp_mode(uintptr_t dtb_pa)
> >                         if (!mmu_type)
> >                                 continue;
> >
> > +                       if (!strcmp(mmu_type, "riscv,sv48")) {
> > +                               disable_pgtable_l5();
> > +                               return;
> > +                       }
> > +
> >                         if (!strcmp(mmu_type, "riscv,sv39")) {
> >                                 disable_pgtable_l5();
> >                                 disable_pgtable_l4();
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
