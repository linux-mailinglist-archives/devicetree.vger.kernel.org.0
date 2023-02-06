Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3FDC68CAD4
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 00:56:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjBFX4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 18:56:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBFX4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 18:56:37 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02E472F7A5
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 15:56:36 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id e22so9653331ejb.1
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 15:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZXfWxusL+1erNu5Hi5f8zENivZdm6No5cfij43+v5J0=;
        b=RCIhNQVkyEOVsI7zuCm4+vCVuMi2uPMkfu7J7jSKo5kS+Udwpi9jYJQdCnWtUt8Ta7
         BGBvfbVRxncHp0E30/Ce6BntavshZHtUcYlaX3Et3VT8LtDcydtF/2UBn1cJCrPWk7p0
         SiRwjhuLsJ2rDqMekYs4VdEex4VWQwKEYoJ88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZXfWxusL+1erNu5Hi5f8zENivZdm6No5cfij43+v5J0=;
        b=CQ86L1NYY+c0ss9jn6UGhMiAEIV4OPSP8MFebFJAY1jZn/QGDDvFDEM3PDTTFKf2Au
         /D4C7ABeqmZF6oxTpTrRYAPlnzvEU82r4pcDI6+WUKOB4fTMfAkLkUQF6TZpp/xhsNyq
         7WIxUxJbZaqDVxoT6+V2SOZ7ltXptoik3wTbNwLNMmw5IG/SVfXjeYZgDahcQQCxcvKg
         QPM0sHAICaAyy1kYgENpMk9cl/b03Ne9CulzJDqdL36AvU3s7UvaX0Z6bZQz39dUzMQP
         CZXtUTuG/ZY8B3jXB/XVV9mcFKZfIJZk6bVlOSPoltjX0cKqwqy0FTXgvQjWamO7MjD8
         axOA==
X-Gm-Message-State: AO0yUKUNO+diC5Dml0NFDRsSIW99267O7ltKJuF2WYEo6zwBPCEB9MDU
        9JbfHQq2RJ//oeG50YohfRI7KlNUR7CmZIcl/T/6MUuYoNVJEH8DNdo=
X-Google-Smtp-Source: AK7set/NaHSSAc70x60b/+oX/P2HNQS5z1wS9SNTPGmweIJEUfPns95YNRjY5M5oVr5gSlMDiH03DfBKLJinL4mILdM=
X-Received: by 2002:a17:906:6a94:b0:896:43bd:7915 with SMTP id
 p20-20020a1709066a9400b0089643bd7915mr355065ejr.93.1675727794321; Mon, 06 Feb
 2023 15:56:34 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
 <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com> <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
In-Reply-To: <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Mon, 6 Feb 2023 16:56:22 -0700
Message-ID: <CAPnjgZ17UDAH4+=vUHzSkLfJJ6zoSX6r=LBiPW0Cdq4MbCfmTQ@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Rob Herring <robh@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, 6 Feb 2023 at 16:32, Rob Herring <robh@kernel.org> wrote:
>
> +boot-architecture
>
> On Mon, Feb 6, 2023 at 3:25 PM Simon Glass <sjg@chromium.org> wrote:
> >
> > Hi Rob,
> >
> > On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote:
> > > >
> > > > Hi Peter,
> > > >
> > > > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com> wrote:
> > > > >
> > > > > Hi Simon,
> > > > >
> > > > > Does it make sense to devise something that is compatible with the
> > > > > kernel's pstore [1] mechanism?
> > > >
> > > > Possibly...can you please be a little more specific?
> > >
> > > Peter is talking about the same thing I suggested on IRC.
> > >
> > > pstore == ramoops
> >
> > Oh, I only looked at the DT binding as I thought that was what you
> > were talking about on irc.
>
> The binding is called ramoops as it's for the RAM backend for pstore.
>
> My suggestion was either using/extending ramoops or following its
> design as a reserved memory region. All you would need to extend the
> ramoops binding is a new property to define the size of your data.

OK I see.

>
> > For pstore, isn't the point that Linux wants to save stuff to allow
> > debugging or collection on reboot? What does that have to do with
> > console logs from firmware? That seems like a different thing. Or are
> > you suggesting that we add a pstore driver into U-Boot? It is quite a
> > lot of code, including compression, etc. It might be easier for Linux
> > to write the data into pstore when it starts up?
>
> Originally ramoops was just what you described. It has grown to
> multiple backends and types of records (hence the rename to pstore).
> If you just add a new subsection within the pstore region, then I
> think the existing kernel infrastructure will support reading it from
> userspace. Maybe new types have to be explicitly supported, IDK.
>
> U-boot being able to read pstore wouldn't be a terrible feature to
> have anyways if your boot crashes before anything else is up to get
> the output. Note I'd guess the ram backend doesn't do compression as
> supporting slightly corrupted ram is a feature which wouldn't work.

I actually meant U-Boot writing to pstore...as that is the only way
that the console data could be provided to the kernel, as I understand
it.

Another question is how U-Boot could write thie information if the
pstore backend is not RAM?
>
>
> I think any new DT binding is premature and pstore/ramoops was just a
> suggestion to consider. This needs wider consideration of how to
> handle all the various (boot) firmware logs. I've added the
> boot-architecture list for a bit more visibility.

OK.

Regards,
SImon
