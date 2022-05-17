Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C30F52ABD0
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 21:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352615AbiEQTUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 15:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352579AbiEQTUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 15:20:00 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A703B424B1
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 12:19:59 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-2ef5380669cso1231177b3.9
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 12:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2eoz2FUrFUdjGA8OgTVmDbdUGsT/gwE/rSjYW1YpgfY=;
        b=ihKzkeBc+Xb/IoVLp0fS7Sr0sxJjfhS1Yqo/VO13B+NX8DQrnuSiCBe9gpENlnq01r
         ebTJJP3C0S0avc8TXWvc01/zvZ+tw/+jgS+5d1VY5zDY06zNOqru2fXQB/ItakDrQ3ow
         cne2MBsJ8hEm/+vnBcY2LiW+eDmS55w+G7kSUwkDfuOZIpsvJnKs3dgrdsrO1CJhTKdt
         wER5VlGEGFR3K2VU0nTgQ3rtlR/EcIsNeu2lJeDOKnvMxO3X0Vvc+WZJJyzAOO9lK73f
         LTyvMHRtNq7EsyvwSLf0yuIiMNguhyDeI+NwpWwKslbnOs4wH+DfNICmm/g3jHORiZCB
         VaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2eoz2FUrFUdjGA8OgTVmDbdUGsT/gwE/rSjYW1YpgfY=;
        b=UvwEH4a139npwInCpozkVW7Fb+IPcguXNwscZVXFf5W/0UC0lphS7pUvO94YXN8Nbm
         NMC4wijUM0rbbLbeYI7E0HSSxVvo+9SDN6j8FKgYMBIZ1O9julgZyriuX53Y9fmDCVKh
         BSRbm5bHFRuFg/UVV8fG5i8HwocR2mm5qiobfwAoiFfxbc6NL2iwBmPJvgqEY3A84+Wu
         X9nYX1X8RV76EkiC/E+dt2qUxk1mUznFyLlpgYEjkDNl7iyYVdj5Dl7QALHxBWMutFl6
         Bz93lKCBUoKyOk1UOXNKTAN14/U2Yk+UGID/AlwGdkFww8DKbka1Ep7wqdn0KLLdDyjs
         4NaQ==
X-Gm-Message-State: AOAM531MDN4hwkDBTscSmOqBboU7CMDAle8Ct2veRdrQsDnBGf4rzQ41
        jYmBvAmVZ3Hxqzx5nllLEi3gQyoowd77Ku/FmbBlow==
X-Google-Smtp-Source: ABdhPJy3AGEf/jdtpQoDRNYkU8ty9svrivAgusrhZV72ZWDTtuhp26qWGxVrqU1OZm5SU1BIJUJ5zWr+riqgYean1io=
X-Received: by 2002:a81:6904:0:b0:2fe:e670:318a with SMTP id
 e4-20020a816904000000b002fee670318amr14914838ywc.329.1652815198932; Tue, 17
 May 2022 12:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220517101410.3493781-1-andre.przywara@arm.com>
 <20220517153444.GA1057027-robh@kernel.org> <CAFEAcA8sE8Rj0GmF71ox4BdDr0UcaS4QwiLUVUUFH5oj+hDhfA@mail.gmail.com>
 <CAL_JsqLRvEn2E7cpTzQJRCJ=aeLjUtKhDimWat=nPtm3QP+cfA@mail.gmail.com>
In-Reply-To: <CAL_JsqLRvEn2E7cpTzQJRCJ=aeLjUtKhDimWat=nPtm3QP+cfA@mail.gmail.com>
From:   Peter Maydell <peter.maydell@linaro.org>
Date:   Tue, 17 May 2022 20:19:47 +0100
Message-ID: <CAFEAcA_DRoJmnFdyEEcSvCxtPYignZFqQFnHyWkcpyijCBSrCg@mail.gmail.com>
Subject: Re: [PATCH] of/fdt: Ignore disabled memory nodes
To:     Rob Herring <robh@kernel.org>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Ross Burton <ross.burton@arm.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 17 May 2022 at 18:48, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 17, 2022 at 11:54 AM Peter Maydell <peter.maydell@linaro.org> wrote:
> >
> > On Tue, 17 May 2022 at 16:34, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, May 17, 2022 at 11:14:10AM +0100, Andre Przywara wrote:
> > > > When we boot a machine using a devicetree, the generic DT code goes
> > > > through all nodes with a 'device_type = "memory"' property, and collects
> > > > all memory banks mentioned there. However it does not check for the
> > > > status property, so any nodes which are explicitly "disabled" will still
> > > > be added as a memblock.
> > > > This ends up badly for QEMU, when booting with secure firmware on
> > > > arm/arm64 machines, because QEMU adds a node describing secure-only
> > > > memory:
> > > > ===================
> > > >       secram@e000000 {
> > >
> > > BTW, 'memory' is the correct node name.
> >
> > We already have a 'memory' node, which is for the NS
> > memory. This one's for the secure-only RAM block,
> > which is why I gave it a name that hopefully helps in
> > spotting that when a human is reading the DT.
>
> You can do: secram: memory@e000000 {
>
> Where 'secram' is only a source level label until overlays come into
> the picture.

We generate the DTB with libfdt, so source-only information
isn't something we can put in, I think. (The quoted DT fragment
in this patch's commit message is the result of decompiling
the runtime generated DT binary blob with dtc.)

> > I'm not really sure to what extent node names in device trees are
> > "this is just an identifying textual label" and to what extent
> > they are "this is really ABI and you need to follow the standard",
> > though -- nothing in practice seems to care what they are,
> > suggesting the "textual label" theory, but some bits of tooling
> > complain if you do things like forget the address value or use the
> > same address for two different nodes, suggesting the "really ABI"
> > theory.
>
> Node names are supposed to follow the class of device and there's a
> list of established names in the spec.
>
> Sometimes it's ABI and sometimes not. Much of it is just good hygiene.
> memory nodes are also special because 'device_type' is used to
> identify them, but device_type is generally deprecated for FDT as its
> meaning in OpenFirmware doesn't apply (it defines what callable
> methods exist). We could use the nodename (without unit address)
> instead, but that would fail in some cases as other names have been
> used.

This seems kind of odd to me as a design, compared to
"have the node have a property that says what it is
and let the name of the node just be, well, its name"
(especially since 'device_type' and 'compatible' look an
awful lot like "this is the property that tells you what this
node actually is".)
Are we just stuck with what we have for historical reasons ?

-- PMM
