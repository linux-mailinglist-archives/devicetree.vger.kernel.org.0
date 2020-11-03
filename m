Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 424952A4F9A
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 20:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729549AbgKCTDA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 14:03:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727688AbgKCTC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 14:02:59 -0500
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66E4BC0613D1
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 11:02:59 -0800 (PST)
Received: by mail-io1-xd42.google.com with SMTP id n12so7912972ioc.2
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 11:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jtAMmYu/vtZ7Po/bgeGbuB1WjXTOAIZ7G9Kh+0nnjEg=;
        b=cnjLzlof3WkkkRXlleGAb0gmtfoEWI9a+NHHysOgZPQGr3gcMPkYjbBFIRcc2X/5rx
         GTVKYiTG62LMp2mGXlrv+rOvjs8+UkiU/2exa+3Wmq548VVVtYyJyx7KVPtCtJkgF/PJ
         MKETOILQOekdJOwbHuv9R0oyaKIbbSGm2nu/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jtAMmYu/vtZ7Po/bgeGbuB1WjXTOAIZ7G9Kh+0nnjEg=;
        b=PfU8XbYejwpcGj3S2LzbIHOGVXNIzv6Q8XROx7bwqQ/TH2DXNbOalfKvWLU2aTtmzp
         +Egjt/nqrjTEk14mM86HJXPYfW226aNBG3B3UQOUC7bwJ7KtWAxD4ToiDlXh5M6FXLPE
         ARTs6w4/afDUR/1vkijWlQvVWuZclL5fNcU+ykbvFRb/v2OoN3zOm7R5v+wG5P6bH4gv
         ym4yTmRDfPrGAAt0+8B+D6ZIuQukdtvGk9Tl5aYPEorn7nkZvp/gOucsWhwu05VVklCV
         8MWc7b31YReTuzNhBJhtrGVYDoWnP1ArwWy+Qaci0FgwzWAxZNTEgE4NneV1dSYtednO
         fZsQ==
X-Gm-Message-State: AOAM532GP92AeHBB614TcfMi96+jImd7LEI1ooJ+Iczq8XRnhvuYUw3A
        WwtFj8vVEAwUTY94QgTB1lgdzf0aBh8aWO0nMAxUZm27jRxn
X-Google-Smtp-Source: ABdhPJyOIhTQQ4hlWFIb+00TD5h4rC1h2+ADQIBifhBDDykkmQERUZqR99jOE98JolQXNQZ1o/EBkJzgYxDpg/3nPa4=
X-Received: by 2002:a02:6a5b:: with SMTP id m27mr15343703jaf.58.1604430178788;
 Tue, 03 Nov 2020 11:02:58 -0800 (PST)
MIME-Version: 1.0
References: <20201028232759.1928479-1-atish.patra@wdc.com> <20201028232759.1928479-3-atish.patra@wdc.com>
 <CAAhSdy0pW8AFCDtFkEO_4zjg8Exp+XTb09AjhErdX9u-Jw3OuQ@mail.gmail.com>
 <CAEUhbmUm6EyP33FU1n4LhEk-xcBtR13-xS+Tpt76ug1HQv8CEg@mail.gmail.com>
 <e9bad05c-db34-ba2c-df5c-ff2f7f53e15b@microchip.com> <CAOnJCULkC65FgOakjPgoACdpiQFWTiEPCox3ayMWWZwVa91fVA@mail.gmail.com>
 <c137885d-374b-64ed-42a5-7e8efe004660@microchip.com>
In-Reply-To: <c137885d-374b-64ed-42a5-7e8efe004660@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 3 Nov 2020 11:02:47 -0800
Message-ID: <CAOnJCULbax3VnqjmWq8j4vxf=UrpOK9TMjwzXdZVP1iDnZ+GcA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] RISC-V: Initial DTS for Microchip ICICLE board
To:     Cyril.Jean@microchip.com
Cc:     Bin Meng <bmeng.cn@gmail.com>, Anup Patel <anup@brainfault.org>,
        devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <Daire.McNamara@microchip.com>,
        Anup Patel <anup.patel@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <atish.patra@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alistair Francis <alistair.francis@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Padmarao Begari <Padmarao.Begari@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 3, 2020 at 10:50 AM <Cyril.Jean@microchip.com> wrote:
>
> On 11/3/20 6:38 PM, Atish Patra wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > On Tue, Nov 3, 2020 at 10:19 AM <Cyril.Jean@microchip.com> wrote:
> >> On 11/3/20 10:00 AM, Bin Meng wrote:
> >>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >>>
> >>> On Fri, Oct 30, 2020 at 5:08 PM Anup Patel <anup@brainfault.org> wrote:
> >>>> On Thu, Oct 29, 2020 at 4:58 AM Atish Patra <atish.patra@wdc.com> wrote:
> >>>>> Add initial DTS for Microchip ICICLE board having only
> >>>>> essential devcies (clocks, sdhci, ethernet, serial, etc).
> >>>>>
> >>>>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> >>>>> ---
> >>>>>    arch/riscv/boot/dts/Makefile                  |   1 +
> >>>>>    arch/riscv/boot/dts/microchip/Makefile        |   2 +
> >>>>>    .../microchip/microchip-icicle-kit-a000.dts   | 313 ++++++++++++++++++
> >>>> I suggest we split this DTS into two parts:
> >>>> 1. SOC (microchip-polarfire.dtsi)
> >>>> 2. Board (microchip-icicle-kit-a000.dts)
> >>> I also doubt what is the correct board name. I suspect the -a000 comes
> >>> from the SiFive board name convention, but does not apply to the
> >>> Icicle Kit board.
> >>>
> >>> @Cyril, please confirm.
> >>>
> >> Correct. Sorry Padmarao, I missed that one.
> >>
> > Ok. I picked that one from U-Boot. What should be the correct board
> > name in that case ?
> >
> > microchip-pfsoc-icicle-kit ?
>
> My preference would go for microchip-mpfs-icicle-kit. I prefer "mpfs"
> over "pfsoc" as "mpfs" is the part number prefix for the PolarFire SoC
> device family.
>

Sure. I will update accordingly. Thanks for the quick feedback.

>
> Regards,
>
> Cyril.
>
>


-- 
Regards,
Atish
