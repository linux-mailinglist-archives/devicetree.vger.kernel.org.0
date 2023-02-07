Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F84668E031
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 19:39:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbjBGSjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 13:39:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjBGSjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 13:39:21 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3821167E
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 10:39:19 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id x9so9257712eds.12
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 10:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V8ML9kxip+QistUp4BixIgH3TL6Y8BJvppK1MvaBSPw=;
        b=BcQB2jHXJQmvJnElaiMi7BEJXD1wrkVWoapgkVHEUxxo/4Ab5+MMkkFf+vuiGAaSzD
         W8mTsZvIdQC22lPuPRNQYtFt3b6xZ05NJsvA7hIUBlbPdOMffMjWlRQkh/sOPodin1rG
         ao3L/N3PJJmHiCVP4RBfNehcMyTMmU5yP3/EM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V8ML9kxip+QistUp4BixIgH3TL6Y8BJvppK1MvaBSPw=;
        b=g3wkGVga0ch74d4qLHf2X7xCBoms4tfFRz6uwyIfU3eabQDktcjO/A6ATek8jjfV3G
         MXnxcDkZ+efYlmSv8Fx53k4uLrUuchVNxn+U9rLSE0qLM8K1YSPpmH4L8ecP8YfYw6ba
         1RgfWjVKUr3TOQV2yPfw+h24NeBhdKKEfPNLUbUmcswCd+hEtb+6wKpXRDjy9faClti1
         61XC5+v9vfGTPPs+ld6WshLC4tWhDoMUYQPyxfSdCmQ+R73Sd+ZRFZAwmplccm9qVT6n
         z/jH2QKQ4G3BZamEnye6Aa59emfw818JeWOdwYx/kUdrWWEX918n7I4/0fi10K8/hg30
         MpPA==
X-Gm-Message-State: AO0yUKWwekYCyl2h6cVvH3LjLgT685Fn0TIHt7MO3/fo7l1ywZT/GgZt
        XXH/MXj5bsAgGIo2P2fSf3JtL/G+xDF7lh3dcxJb+g==
X-Google-Smtp-Source: AK7set+K0Srm7r8CKgBGoCVeXwoxND/u2WmcputK6YDS/D12v4M5MtGO483D5wIv0pHZLMPsHp8vs7ZHzDUNLwNJzUo=
X-Received: by 2002:a50:cd17:0:b0:4aa:7df2:f380 with SMTP id
 z23-20020a50cd17000000b004aa7df2f380mr893994edi.4.1675795157563; Tue, 07 Feb
 2023 10:39:17 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
 <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
 <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
 <24dba2278350ea222251be80f6aade104c2319ce.camel@pengutronix.de>
 <CAPnjgZ3MU+_=BibC_VmC4FRBre4+43psX0DzJmOBA2okqoVD0w@mail.gmail.com> <bc6d46732b36aad3d9da9fc537c0feeb73adaf0a.camel@pengutronix.de>
In-Reply-To: <bc6d46732b36aad3d9da9fc537c0feeb73adaf0a.camel@pengutronix.de>
From:   Simon Glass <sjg@chromium.org>
Date:   Tue, 7 Feb 2023 11:39:06 -0700
Message-ID: <CAPnjgZ0oxE44-LYYtFb6+nyws+bPZYskwz21U3fweQAK0trXJw@mail.gmail.com>
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

On Tue, 7 Feb 2023 at 08:39, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
>
> On Tue, 2023-02-07 at 06:38 -0700, Simon Glass wrote:
> > Hi Jan,
> >
> > On Tue, 7 Feb 2023 at 04:56, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> > >
> > > On Mon, 2023-02-06 at 17:32 -0600, Rob Herring wrote:
> > > > +boot-architecture
> > > >
> > > > On Mon, Feb 6, 2023 at 3:25 PM Simon Glass <sjg@chromium.org> wrote=
:
> > > > >
> > > > > Hi Rob,
> > > > >
> > > > > On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
> > > > > >
> > > > > > On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> w=
rote:
> > > > > > >
> > > > > > > Hi Peter,
> > > > > > >
> > > > > > > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail=
.com>
> > > > > > > wrote:
> > > > > > > >
> > > > > > > > Hi Simon,
> > > > > > > >
> > > > > > > > Does it make sense to devise something that is compatible w=
ith the
> > > > > > > > kernel's pstore [1] mechanism?
> > > > > > >
> > > > > > > Possibly...can you please be a little more specific?
> > > > > >
> > > > > > Peter is talking about the same thing I suggested on IRC.
> > > > > >
> > > > > > pstore =3D=3D ramoops
> > > > >
> > > > > Oh, I only looked at the DT binding as I thought that was what yo=
u
> > > > > were talking about on irc.
> > > >
> > > > The binding is called ramoops as it's for the RAM backend for pstor=
e.
> > > >
> > > > My suggestion was either using/extending ramoops or following its
> > > > design as a reserved memory region. All you would need to extend th=
e
> > > > ramoops binding is a new property to define the size of your data.
> > > >
> > > > > For pstore, isn't the point that Linux wants to save stuff to all=
ow
> > > > > debugging or collection on reboot? What does that have to do with
> > > > > console logs from firmware? That seems like a different thing. Or=
 are
> > > > > you suggesting that we add a pstore driver into U-Boot? It is qui=
te a
> > > > > lot of code, including compression, etc. It might be easier for L=
inux
> > > > > to write the data into pstore when it starts up?
> > > >
> > > > Originally ramoops was just what you described. It has grown to
> > > > multiple backends and types of records (hence the rename to pstore)=
.
> > > > If you just add a new subsection within the pstore region, then I
> > > > think the existing kernel infrastructure will support reading it fr=
om
> > > > userspace. Maybe new types have to be explicitly supported, IDK.
> > > >
> > > > U-boot being able to read pstore wouldn't be a terrible feature to
> > > > have anyways if your boot crashes before anything else is up to get
> > > > the output. Note I'd guess the ram backend doesn't do compression a=
s
> > > > supporting slightly corrupted ram is a feature which wouldn't work.
> > >
> > > This is basically how it works in Barebox. It can display the pstore
> > > contents
> > > after a kernel crash and also (optionally) log to the pstore/ramooms =
console
> > > log. Slight RAM corruption can be handled by using error correcting c=
odes.
> > >
> > > It's not perfect, of course, but still very useful.
> >
> > Thanks for the pointer. I had a look at this. How do you deal with
> > updating a filesystem that might be corrupt? Is that even a good idea,
> > if the purpose of it is to collect data from a kernel crash?
>
> This uses only the ramoops "backend" in pstore, so no filesystems are inv=
olved.
> If I remember correctly, ramoops in the kernel just discards any data tha=
t is
> too corrupted to process. Barebox should behave the same, as the code was=
 ported
> from the kernel.

Yes...actually I found that U-Boot has pstore too, but it does not
support writing the console into it. I suppose it would be easy
enough, but it seems that U-Boot's pstore is not as advanced.

>
> > We are working on a firmware 'Transfer List' which is a simple data
> > structure to communicate through the different firmware phases. Since
> > U-Boot is the last one, in this case, I suppose it could do the
> > ramoops thing and add files for each of the firmware phases.
>
> For passing logs "forward" to the next step in the boot chain, this shoul=
d work
> as well and could be more explicit than the ramoops console. One benefit =
would
> be that keeping the logs from each step separate, right?

Yes. But we can't use this to pass it to the kernel.

>
> ramoops has additional mechanisms to deal with the possible corruption ca=
used by
> the crash or reset cycle, which shouldn't be needed in to "forward" direc=
tion.

But if there is corruption there, what does U-Boot do?

1. Clear the ramoops and write its console info (that will be annoying
for people trying to debug kernel crashes)
2. Leave it alone and not write the console info (then it is non-functional=
)
3. Or is it possible to write even when some things are corrupted?

>
> > What about logging support? It would be nice to have a format that
> > understands logging level, category, filename/function, etc.
>
> ramoops console is just unstructured text, Linux and Barebox just write
> characters to it. More structure might be nice some cases, but the necess=
ary
> coordination between different projects could be a high barrier. ;)

Indeed it is, but that is the point of the binding :-)

>
> Perhaps a simple list of text blocks would be enough, though.

Do you mean a list of nul-terminated strings? What format are you thinking =
of?

>
> > > Regards,
> > > Jan
> > >
> > > > I think any new DT binding is premature and pstore/ramoops was just=
 a
> > > > suggestion to consider. This needs wider consideration of how to
> > > > handle all the various (boot) firmware logs. I've added the
> > > > boot-architecture list for a bit more visibility.
> >
> > If this needs a call, I have not seen one for quite a while. It seems
> > to get cancelled at the last minute. I would be happy to attend one to
> > discuss this topic. But if people have ideas here, please weigh in.
>
> Looking at the proposed schema, I'd prefer to drop the boot-phase and pro=
ject
> patterns and use the lists as suggestions only. The order of /chosen/logs=
/log@N
> should be enough to make sense of those.

Yes I suppose so, but I would really like to have a clear view of what
booted and which project it came from. Do you think it is an undue
burden?

>
> Also to keep it simple, perhaps support the memory reference only, and dr=
op the
> in-DTB string?

Yes, that can work. We can always add it later...copying the text into
the DT does add overhead so it would be better to avoid it where
possible.

Regards,
Simon
