Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D24F690FE5
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 19:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbjBISFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 13:05:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbjBISFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 13:05:18 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF9968135
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 10:05:17 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id m2so8834598ejb.8
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 10:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehjPEiLaCRrj2J6OA15rXCkbaCj0vyNNVikNpoX7tu0=;
        b=Azu0sjdTYwDQpzArA19k2UtdYiZpWqu14yJdeHKyK/XpvBhkODWc25QwsCp7zIlkJo
         XYuoENhuSYdCtKSXP5eOTlUiclWY2fyJFCuZeUEG3ecviUWAq8VyOn9rbhd4JBxqqPry
         PlUfhv26mdCBgOlnNGf+t3d91BorzGvLZSq78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehjPEiLaCRrj2J6OA15rXCkbaCj0vyNNVikNpoX7tu0=;
        b=V5s4MKeF6EhS1Tl2kS31Kln3mZhEavv0OSTCsM9nzkmQs3Anf24vnwOP4HtGDxKrYd
         +buqng0RhDQwEmnqAz8Xm7VJcmiRvCcDnkdvWmiPumkc4JA75sJT/Y38slmDIHKYwFKU
         KoTMzmaryXbL+uEhHHMgWcNsyUQiuS++qkt9sTQtv1xzb2kIoozez85+fCKZDEfZAJyC
         ZzfT8lE3qpLVt16sQ33dXXd08Nf7NQ+p+KEtjQRZfxbQd7sQSgLFveNHopIYt/26fNWs
         R2Nag6NHKx4mIEX91urXi2CDgXN8N4ItF3ZH4+9PU/M0iOZ0p4vd7b5nENsgK3ISeC3Z
         vAoA==
X-Gm-Message-State: AO0yUKWOr+1ya3UGCVNz9P7wv4msW/lzhMDooUe5mmtOkhwr+3j414iI
        qKu3QG2xrqaFsziaIdb6k9A8yge9BSWRLZPIJlVvkw==
X-Google-Smtp-Source: AK7set+hXQBNbmTYJ+mJpDabut/vT91IDSq0ewTG0Kr2lbm959eK6T97tr/zhgxUYqEWISG9bw3OQIXfV1ekBuuTEcc=
X-Received: by 2002:a17:906:6a94:b0:896:43bd:7915 with SMTP id
 p20-20020a1709066a9400b0089643bd7915mr2762960ejr.93.1675965915401; Thu, 09
 Feb 2023 10:05:15 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
 <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
 <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
 <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
 <CAPnjgZ3MU+_=BibC_VmC4FRBre4+43psX0DzJmOBA2okqoVD0w@mail.gmail.com>
 <bc6d46732b36aad3d9da9fc537c0feeb73adaf0a.camel@pengutronix.de>
 <CAPnjgZ0oxE44-LYYtFb6+nyws+bPZYskwz21U3fweQAK0trXJw@mail.gmail.com> <db6baf0fe0a98476ada68f4a0a0acb4c642fa04e.camel@pengutronix.de>
In-Reply-To: <db6baf0fe0a98476ada68f4a0a0acb4c642fa04e.camel@pengutronix.de>
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 9 Feb 2023 11:05:03 -0700
Message-ID: <CAPnjgZ3=uB8Vbf83dXTZu9LhkL20nXDW+z1F309sFcWihc_10w@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc:     Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jan,

On Wed, 8 Feb 2023 at 01:15, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
>
> On Tue, 2023-02-07 at 11:39 -0700, Simon Glass wrote:
> > Hi Jan,
> >
> > On Tue, 7 Feb 2023 at 08:39, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> > >
> > > On Tue, 2023-02-07 at 06:38 -0700, Simon Glass wrote:
> > > > Hi Jan,
> > > >
> > > > On Tue, 7 Feb 2023 at 04:56, Jan L=C3=BCbbe <jlu@pengutronix.de> wr=
ote:
> > > >
> [snip]
> > > > Thanks for the pointer. I had a look at this. How do you deal with
> > > > updating a filesystem that might be corrupt? Is that even a good id=
ea,
> > > > if the purpose of it is to collect data from a kernel crash?
> > >
> > > This uses only the ramoops "backend" in pstore, so no filesystems are=
 involved.
> > > If I remember correctly, ramoops in the kernel just discards any data=
 that is
> > > too corrupted to process. Barebox should behave the same, as the code=
 was ported
> > > from the kernel.
> >
> > Yes...actually I found that U-Boot has pstore too, but it does not
> > support writing the console into it. I suppose it would be easy
> > enough, but it seems that U-Boot's pstore is not as advanced.
> > >
>
> > > > We are working on a firmware 'Transfer List' which is a simple data
> > > > structure to communicate through the different firmware phases. Sin=
ce
> > > > U-Boot is the last one, in this case, I suppose it could do the
> > > > ramoops thing and add files for each of the firmware phases.
> > >
> > > For passing logs "forward" to the next step in the boot chain, this s=
hould work
> > > as well and could be more explicit than the ramoops console. One bene=
fit would
> > > be that keeping the logs from each step separate, right?
> >
> > Yes. But we can't use this to pass it to the kernel.
> >
>
> Hmm, because we would need to reserve space for the text memory regions, =
which
> couldn't be used by the kernel later?

Because the transfer list does not get passed to the kernel. We don't
want to invent another way to pass info to Linux, since we already
have FDT, ACPI and cmdline. In fact I have a horrible suspicion that
someone added a structured cmdline a bit like an FDT but in text...

>
> > > ramoops has additional mechanisms to deal with the possible corruptio=
n caused by
> > > the crash or reset cycle, which shouldn't be needed in to "forward" d=
irection.
> >
> > But if there is corruption there, what does U-Boot do?
> >
> > 1. Clear the ramoops and write its console info (that will be annoying
> > for people trying to debug kernel crashes)
> > 2. Leave it alone and not write the console info (then it is non-functi=
onal)
> > 3. Or is it possible to write even when some things are corrupted?
>
> As the console is protected by ECC in blocks, you can have corrupted bloc=
ks in
> the middle and still continue logging at the end, if you want. The corrup=
ted
> block can then either be repaired when reading or need to be skipped.

OK I see.

>
> > > > What about logging support? It would be nice to have a format that
> > > > understands logging level, category, filename/function, etc.
> > >
> > > ramoops console is just unstructured text, Linux and Barebox just wri=
te
> > > characters to it. More structure might be nice some cases, but the ne=
cessary
> > > coordination between different projects could be a high barrier. ;)
> >
> > Indeed it is, but that is the point of the binding :-)
> >
> > >
> > > Perhaps a simple list of text blocks would be enough, though.
> >
> > Do you mean a list of nul-terminated strings? What format are you think=
ing of?
> > > >
>
> I think the format described in the binding should work well enough (ASCI=
I
> lines, with NUL termination). And it's readable on a terminal. :)

Yes I think that is important.

>
> > > > > Regards,
> > > > > Jan
> > > > >
> > > > > > I think any new DT binding is premature and pstore/ramoops was =
just a
> > > > > > suggestion to consider. This needs wider consideration of how t=
o
> > > > > > handle all the various (boot) firmware logs. I've added the
> > > > > > boot-architecture list for a bit more visibility.
> > > >
> > > > If this needs a call, I have not seen one for quite a while. It see=
ms
> > > > to get cancelled at the last minute. I would be happy to attend one=
 to
> > > > discuss this topic. But if people have ideas here, please weigh in.
> > >
> > > Looking at the proposed schema, I'd prefer to drop the boot-phase and=
 project
> > > patterns and use the lists as suggestions only. The order of /chosen/=
logs/log@N
> > > should be enough to make sense of those.
> >
> > Yes I suppose so, but I would really like to have a clear view of what
> > booted and which project it came from. Do you think it is an undue
> > burden?
> >
>
> I didn't mean to drop the properties, but to allow free-form text. Not al=
l
> firmware stacks use the same phases and not all bootloader project names =
start
> with "^U-Boot|TF-A". :)
>
> I don't think we'll see project name collisions, and the boot-phase name =
should
> be unique with in a project, so free-form should be fine.
>
> > > Also to keep it simple, perhaps support the memory reference only, an=
d drop the
> > > in-DTB string?
> >
> > Yes, that can work. We can always add it later...copying the text into
> > the DT does add overhead so it would be better to avoid it where
> > possible.
>
> Agreed.

Regards,
Simon
