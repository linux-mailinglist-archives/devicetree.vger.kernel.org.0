Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0687691AFC
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 10:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbjBJJNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 04:13:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbjBJJNN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 04:13:13 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B3737724
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 01:13:02 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 71578B82413
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 09:13:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22583C433A4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 09:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676020380;
        bh=LVzdYfeGwPTm9G+fnamH1Y+Cz6sFuRktwUg5yc4DoSA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=eLAsKHUqaMaGwlNLCgBOCvwyZGZSrz86/7Gk6QL2d00xY5Xa5M3ZQx/XqxDS1ghxt
         5V8rlfXhhpXqIIFoCOaWC7T43ivdVqEgsnHZfu+ZNz4m1GEGgzDwMENPIRNvEa7QkQ
         A5VczzDHV5/GMB+u1SAmOHQdv4XXz3RpBhRneQvAt3V7Q9vdOPoMbHPeKvl1qOuSHC
         BWqg4dJx7miUU6QLhCK7EhUikd3uU2vswZMjNa4qu7Al2KZ8ufjBPp6f4ytoONxTJW
         Lc4kXPa6e1DBszCoKj/sBg9F7so+FSEeIMoyZmmTv+GxDHbliXobiI8rVruL2qP9SN
         g0pTfsP2qA20Q==
Received: by mail-lf1-f50.google.com with SMTP id cf42so7335876lfb.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 01:13:00 -0800 (PST)
X-Gm-Message-State: AO0yUKVRvY1pIOD9tu0NFij507udzYXE/NL+NbTgTdHj+otNhbBHMwPT
        kAVDnn7WuT+fgA2LjPSmOyMLJZTX8pM3zBez4hI=
X-Google-Smtp-Source: AK7set9KQck/Ealw8C9Web+8SZRXe/i5hZ/l+CtaR+UbFz1/eItI7Ay1ZYYeOTefuM+PH4jjGI4f++ecB/tP0/sDdT8=
X-Received: by 2002:ac2:5102:0:b0:4da:ee90:4529 with SMTP id
 q2-20020ac25102000000b004daee904529mr2546965lfb.63.1676020378142; Fri, 10 Feb
 2023 01:12:58 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
 <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
 <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
 <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
 <CAPnjgZ3MU+_=BibC_VmC4FRBre4+43psX0DzJmOBA2okqoVD0w@mail.gmail.com>
 <bc6d46732b36aad3d9da9fc537c0feeb73adaf0a.camel@pengutronix.de>
 <CAPnjgZ0oxE44-LYYtFb6+nyws+bPZYskwz21U3fweQAK0trXJw@mail.gmail.com>
 <db6baf0fe0a98476ada68f4a0a0acb4c642fa04e.camel@pengutronix.de> <CAPnjgZ3=uB8Vbf83dXTZu9LhkL20nXDW+z1F309sFcWihc_10w@mail.gmail.com>
In-Reply-To: <CAPnjgZ3=uB8Vbf83dXTZu9LhkL20nXDW+z1F309sFcWihc_10w@mail.gmail.com>
From:   Ard Biesheuvel <ardb@kernel.org>
Date:   Fri, 10 Feb 2023 10:12:46 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEX9sEvf1NpKVbdXyEgTz_Fbshrg=t-p8w1GRO9jbo5CQ@mail.gmail.com>
Message-ID: <CAMj1kXEX9sEvf1NpKVbdXyEgTz_Fbshrg=t-p8w1GRO9jbo5CQ@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Simon Glass <sjg@chromium.org>
Cc:     =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>,
        Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Feb 2023 at 19:05, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Jan,
>
> On Wed, 8 Feb 2023 at 01:15, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> >
> > On Tue, 2023-02-07 at 11:39 -0700, Simon Glass wrote:
> > > Hi Jan,
> > >
> > > On Tue, 7 Feb 2023 at 08:39, Jan L=C3=BCbbe <jlu@pengutronix.de> wrot=
e:
> > > >
> > > > On Tue, 2023-02-07 at 06:38 -0700, Simon Glass wrote:
> > > > > Hi Jan,
> > > > >
> > > > > On Tue, 7 Feb 2023 at 04:56, Jan L=C3=BCbbe <jlu@pengutronix.de> =
wrote:
> > > > >
> > [snip]
> > > > > Thanks for the pointer. I had a look at this. How do you deal wit=
h
> > > > > updating a filesystem that might be corrupt? Is that even a good =
idea,
> > > > > if the purpose of it is to collect data from a kernel crash?
> > > >
> > > > This uses only the ramoops "backend" in pstore, so no filesystems a=
re involved.
> > > > If I remember correctly, ramoops in the kernel just discards any da=
ta that is
> > > > too corrupted to process. Barebox should behave the same, as the co=
de was ported
> > > > from the kernel.
> > >
> > > Yes...actually I found that U-Boot has pstore too, but it does not
> > > support writing the console into it. I suppose it would be easy
> > > enough, but it seems that U-Boot's pstore is not as advanced.
> > > >
> >
> > > > > We are working on a firmware 'Transfer List' which is a simple da=
ta
> > > > > structure to communicate through the different firmware phases. S=
ince
> > > > > U-Boot is the last one, in this case, I suppose it could do the
> > > > > ramoops thing and add files for each of the firmware phases.
> > > >
> > > > For passing logs "forward" to the next step in the boot chain, this=
 should work
> > > > as well and could be more explicit than the ramoops console. One be=
nefit would
> > > > be that keeping the logs from each step separate, right?
> > >
> > > Yes. But we can't use this to pass it to the kernel.
> > >
> >
> > Hmm, because we would need to reserve space for the text memory regions=
, which
> > couldn't be used by the kernel later?
>
> Because the transfer list does not get passed to the kernel. We don't
> want to invent another way to pass info to Linux, since we already
> have FDT, ACPI and cmdline. In fact I have a horrible suspicion that
> someone added a structured cmdline a bit like an FDT but in text...
>

Yes, the tracing folks in Linux cooked up 'bootconfig' without
involving a single person that was already active in boot
architecture, boot loaders, firmware, etc. I was quite shocked by that
as well.

It seems to be another hierarchical key/value pair store, used for
passing a large set of command line arguments which may otherwise
exceed the maximum length of the kernel command line. It is appended
to the initrd by the boot loader. Android have already started using
it as well.

--=20
Ard.
