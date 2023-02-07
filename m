Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 015F168D987
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 14:39:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231258AbjBGNjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 08:39:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231558AbjBGNjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 08:39:13 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D92A82528D
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 05:39:09 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id gr7so43183221ejb.5
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 05:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNPYU8Bwpj0B6fP2rtWu61weUSC2y6PU2F5j6Jj+uLc=;
        b=MHrwE7Q2Yir1IER2pBOXDHN0KKdqO4kNuk7CygNo3ruHTIJu+/l/bC9w6AaS6dvxIJ
         4PIhq6qNxozGhNAQK7Pos4D4ZgyuBRpn0v9hvJcKCrd+tYfEUz4EsnCGNmlD6Fj8j1Lu
         ub2Du4C0qWmzPb+DfPyTZOGtZ/3w420VjqfD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gNPYU8Bwpj0B6fP2rtWu61weUSC2y6PU2F5j6Jj+uLc=;
        b=q2MCETym86xXwqb1ZdhyuN4zBfXmtAPBeUt+12huPyO4f0hmGgWaOyK9Nk3vIPLSAk
         //BQPT2gTCD7/ynNOMszlxFtlGws3AehC7pr2kE7Wo7yoYgHtdWJlRnk2rsEhB65rSYt
         uxTnKIuxwxJjibzI4xkFE09JbMYjZS/+skY+dxf3Ec//HU1rl35ESqrB9cDFbIa2je4F
         3k022CYmd3lvxrnP1Ww7btdzhenzWnKjTa8FHnUw/p0nWRJV44bqMbqMdztE76/FILff
         iqlNn12+wmVVISCG0OqRdhHVlViMAZUBTP9CYPM+Qa5PV1YwGXBQofUmQ9R5JeosgA0D
         JNbg==
X-Gm-Message-State: AO0yUKVCDczVAWfXpUf9ab5OnTNcuaXaEw4UGi06uvAfJ/2xPOWQAxfZ
        /Kga1smwrN2Eb5dIA0OPJIdbUsHLt+4HIXlB98VXVm3PqZJK1UcneV4=
X-Google-Smtp-Source: AK7set/UgBotadegnRfIP+MKuU56N0jBfMxAAuSqm6Y5jlAjLQhUkrpIHK42e1+CNaR4IWm4ATLNERMihLG24mTclFo=
X-Received: by 2002:a17:906:6a94:b0:896:43bd:7915 with SMTP id
 p20-20020a1709066a9400b0089643bd7915mr881382ejr.93.1675777148182; Tue, 07 Feb
 2023 05:39:08 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
 <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
 <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com> <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
In-Reply-To: <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
From:   Simon Glass <sjg@chromium.org>
Date:   Tue, 7 Feb 2023 06:38:55 -0700
Message-ID: <CAPnjgZ3MU+_=BibC_VmC4FRBre4+43psX0DzJmOBA2okqoVD0w@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     jlu@pengutronix.de
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

On Tue, 7 Feb 2023 at 04:56, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
>
> On Mon, 2023-02-06 at 17:32 -0600, Rob Herring wrote:
> > +boot-architecture
> >
> > On Mon, Feb 6, 2023 at 3:25 PM Simon Glass <sjg@chromium.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
> > > >
> > > > On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote=
:
> > > > >
> > > > > Hi Peter,
> > > > >
> > > > > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com=
>
> > > > > wrote:
> > > > > >
> > > > > > Hi Simon,
> > > > > >
> > > > > > Does it make sense to devise something that is compatible with =
the
> > > > > > kernel's pstore [1] mechanism?
> > > > >
> > > > > Possibly...can you please be a little more specific?
> > > >
> > > > Peter is talking about the same thing I suggested on IRC.
> > > >
> > > > pstore =3D=3D ramoops
> > >
> > > Oh, I only looked at the DT binding as I thought that was what you
> > > were talking about on irc.
> >
> > The binding is called ramoops as it's for the RAM backend for pstore.
> >
> > My suggestion was either using/extending ramoops or following its
> > design as a reserved memory region. All you would need to extend the
> > ramoops binding is a new property to define the size of your data.
> >
> > > For pstore, isn't the point that Linux wants to save stuff to allow
> > > debugging or collection on reboot? What does that have to do with
> > > console logs from firmware? That seems like a different thing. Or are
> > > you suggesting that we add a pstore driver into U-Boot? It is quite a
> > > lot of code, including compression, etc. It might be easier for Linux
> > > to write the data into pstore when it starts up?
> >
> > Originally ramoops was just what you described. It has grown to
> > multiple backends and types of records (hence the rename to pstore).
> > If you just add a new subsection within the pstore region, then I
> > think the existing kernel infrastructure will support reading it from
> > userspace. Maybe new types have to be explicitly supported, IDK.
> >
> > U-boot being able to read pstore wouldn't be a terrible feature to
> > have anyways if your boot crashes before anything else is up to get
> > the output. Note I'd guess the ram backend doesn't do compression as
> > supporting slightly corrupted ram is a feature which wouldn't work.
>
> This is basically how it works in Barebox. It can display the pstore cont=
ents
> after a kernel crash and also (optionally) log to the pstore/ramooms cons=
ole
> log. Slight RAM corruption can be handled by using error correcting codes=
.
>
> It's not perfect, of course, but still very useful.

Thanks for the pointer. I had a look at this. How do you deal with
updating a filesystem that might be corrupt? Is that even a good idea,
if the purpose of it is to collect data from a kernel crash?

We are working on a firmware 'Transfer List' which is a simple data
structure to communicate through the different firmware phases. Since
U-Boot is the last one, in this case, I suppose it could do the
ramoops thing and add files for each of the firmware phases.

What about logging support? It would be nice to have a format that
understands logging level, category, filename/function, etc.

>
> Regards,
> Jan
>
> > I think any new DT binding is premature and pstore/ramoops was just a
> > suggestion to consider. This needs wider consideration of how to
> > handle all the various (boot) firmware logs. I've added the
> > boot-architecture list for a bit more visibility.

If this needs a call, I have not seen one for quite a while. It seems
to get cancelled at the last minute. I would be happy to attend one to
discuss this topic. But if people have ideas here, please weigh in.

Regards,
Simon
