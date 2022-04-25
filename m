Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2437B50E32D
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 16:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235548AbiDYOeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 10:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234166AbiDYOeN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 10:34:13 -0400
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCE2818E33
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:31:06 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id t11so3486828qto.11
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:31:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AQutAyrZWpmZU4yDPLFnJpPPFugXdqhIJFR321HxU64=;
        b=qy+SrbG/bs/1QyuH7G9rsHqxpntFsiIZQb0USxf02mPOsyjHyPpnW0/unLJ1C23RvC
         0BhHthIaTBaoiO/jm3UKxA5Cxdl6hOmLcEb5x8oeymSd3RxjcLtXlqP3Y5c4/wweKnq0
         DkLwKuhPFiXJvsyfWTd8jKh/bElol/+jCbo3WtVNOvB0q0xebosIrMDijuE7CWPDeU2v
         gv2/yCegyrRdQwmbo/5M90D2ERdpgnW0ikFKrp4CZQ9zKVuI+/pdoMHKF+hIXiDi+75B
         5Euhm9gQk/fyXT04HGLZIf1z1x2wzYdtS/CA1qrX513onVCPmpo8WVnChCDPJuUwbypS
         3pFQ==
X-Gm-Message-State: AOAM532UIDa+EJ2pUJjdRAOZO27EXLpa4+Xu2C/WRrIv3uxrcwnTqNwx
        glxEjxthqjFBvugsNTPynZTjs62DgtQf4g==
X-Google-Smtp-Source: ABdhPJwMzIMHoKISk7TpryCSUXFd/f8kdvwqZNfhoIGMf+KZ0eNt6OgvhQ3NDaUSS+WndEtZ3kEQqg==
X-Received: by 2002:a05:622a:1b86:b0:2f3:358e:1511 with SMTP id bp6-20020a05622a1b8600b002f3358e1511mr12107664qtb.10.1650897065490;
        Mon, 25 Apr 2022 07:31:05 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id t125-20020a372d83000000b0069c1df12422sm4924761qkh.84.2022.04.25.07.31.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 07:31:05 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id g28so8008123ybj.10
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:31:04 -0700 (PDT)
X-Received: by 2002:a25:9e89:0:b0:63c:ad37:a5de with SMTP id
 p9-20020a259e89000000b0063cad37a5demr16168790ybq.342.1650897064718; Mon, 25
 Apr 2022 07:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220422211055.9278-1-palmer@rivosinc.com> <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
 <CAK9=C2WTY8+-98XuxRYTaRe4aVJufaB5wr35KRoTKEttUM7JzQ@mail.gmail.com>
 <CAMuHMdV4aZ1U2CGjSOSvFsq-rHKq34wyS-TMvR=7kX68YQHFjQ@mail.gmail.com> <CAK9=C2X5qvWEwwMJK52+UFC8DJBDbZBPY0_iXVHdBA0Y5Ps19w@mail.gmail.com>
In-Reply-To: <CAK9=C2X5qvWEwwMJK52+UFC8DJBDbZBPY0_iXVHdBA0Y5Ps19w@mail.gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 25 Apr 2022 16:30:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVE9mpRStjo3+jy9k=6A7Fur1xPW6hMtx1Nbr=3NURZTQ@mail.gmail.com>
Message-ID: <CAMuHMdVE9mpRStjo3+jy9k=6A7Fur1xPW6hMtx1Nbr=3NURZTQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW
 supports sv57
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Anup,

On Mon, Apr 25, 2022 at 4:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
> On Mon, Apr 25, 2022 at 7:06 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Apr 25, 2022 at 3:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
> > > On Mon, Apr 25, 2022 at 6:12 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
> > > > > Similar to the previous patch, this allows a dt-selected downgrade to
> > > > > sv48 on systems that support sv57 in case users don't need the extra VA
> > > > > bits and want to save memory or improve performance.
> > > > >
> > > > > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> > > > > ---
> > > > > This is on top of the patches from Alex's set that I dropped.
> > > >
> > > > You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
> > > > when hw supports sv48 if !KASAN"?
> > > > 20211206104657.433304-14-alexandre.ghiti@canonical.com
> > > >
> > > > For both: "DT describes hardware, not software policy"?
> > >
> > > It is possible that HW is designed to support both Sv48 and Sv39 but
> > > there is some errata due to which Sv48 does not work correctly ?
> >
> > In that case, I assume the software has to disable Sv48 on its own?
> > Fixed hardware should use a different compatible value, so software
> > will know when the issue is fixed, and the feature can be used.
> > How else is DTB backwards-compatibility supposed to work?
>
> Usually, HW vendors will use different names for incrementally
> improving implementations so they will tend to create separate
> dts/dtsi files for newer implementations with some sharing via
> common dtsi files.

Even for a minor update of the SoC to fix some errata, where newer
boards just contain a newer revision of the silicon?

> > > We should allow users to downgrade the MMU mode, due to
> > > their own reasons. In fact, users can also disable an extension
> > > by not showing it in the DT ISA string.
> >
> > That sounds like a software policy, too.
> > What is wrong with a kernel command line option?
>
> The MMU modes are detected very early and even before the kernel
> command-line is parsed.

That can be fixed.

> > If you want it in your DTB, you can add it to chosen/bootargs.
>
> If HW vendor describe complete details in DT and disables few
> things in chosen/bootargs then it means there is some issue with
> those things disabled via chosen/bootargs.
>
> A HW vendor might never want to advertise broken extensions in
> their implementation so the ISA string and various HART features
> in DT will be set based on working functionality on real hardware.

That may be true in a perfect world.
Depending on the level of brokenness, the issue may not be detected
before devices are released into the world.  So you're better prepared
for such cases.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
