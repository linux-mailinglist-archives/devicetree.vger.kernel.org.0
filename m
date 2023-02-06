Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 281D568CA94
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 00:33:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjBFXc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 18:32:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjBFXc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 18:32:58 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39FDB61B2
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 15:32:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9E20061048
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 23:32:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 032A3C4339C
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 23:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675726376;
        bh=B87OmJhfM03AXLvrrH1WipYoi0NKWfIf0T6+FT96STs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Nda8WHtoxhe55pc5nU8zCSEkQYnoTaSP7m8gTQ8fFhGyxvQTsDyBM55bIw/6jFY9S
         EnZH19FRsQMOjDYYMj7LWF3asR9wKqYgSWkVgGR6ENB1c7zh6Of2Ta36ESqzCDSkGg
         QRsGTVogX+Ck/YQVfc1VKmVMaVZJW2zjHvfzq36FBf9WnQ7MCK9OWCz+ekULOWpo1l
         6tc4vnErW8q1I7AjYNHV5SwgU3XDbadhQpYyLL6RmiZmyWeHY7TcdlNETepRWnMsgB
         LD12YeJfrViG1ORbDQu7UC7xKQmuUzJ4SGRgZF/URvaaft0LvB5Hwu2H6vm5jt7knq
         avAH1et8NmP3w==
Received: by mail-vs1-f42.google.com with SMTP id k4so14486115vsc.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 15:32:55 -0800 (PST)
X-Gm-Message-State: AO0yUKX1QCDWIHdMceMWmLXvYqhw9Q3zV6Ec8Y3hGuTbjQkGfjssAyAQ
        qlcsJ3GpAAcT9EVd8wCGN/QxQ1SsSdoWEbOh3Q==
X-Google-Smtp-Source: AK7set9mlxh9luDd+aBMjQrz+AZtDkKnNWxmy6FEndEEpRUiPutsOSZDE/IhCLQz3nb6Jwrd0P+e8cAnhOxa2F/5s6s=
X-Received: by 2002:a67:ef89:0:b0:3b5:1fe4:f1c2 with SMTP id
 r9-20020a67ef89000000b003b51fe4f1c2mr310595vsp.0.1675726374841; Mon, 06 Feb
 2023 15:32:54 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
 <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com> <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
In-Reply-To: <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 6 Feb 2023 17:32:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
Message-ID: <CAL_JsqLW3GkXtr0oD28XB3MNK36Vjjzb10MhWFh85-MfN2oc3Q@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Simon Glass <sjg@chromium.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+boot-architecture

On Mon, Feb 6, 2023 at 3:25 PM Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote:
> > >
> > > Hi Peter,
> > >
> > > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com> wrote:
> > > >
> > > > Hi Simon,
> > > >
> > > > Does it make sense to devise something that is compatible with the
> > > > kernel's pstore [1] mechanism?
> > >
> > > Possibly...can you please be a little more specific?
> >
> > Peter is talking about the same thing I suggested on IRC.
> >
> > pstore == ramoops
>
> Oh, I only looked at the DT binding as I thought that was what you
> were talking about on irc.

The binding is called ramoops as it's for the RAM backend for pstore.

My suggestion was either using/extending ramoops or following its
design as a reserved memory region. All you would need to extend the
ramoops binding is a new property to define the size of your data.

> For pstore, isn't the point that Linux wants to save stuff to allow
> debugging or collection on reboot? What does that have to do with
> console logs from firmware? That seems like a different thing. Or are
> you suggesting that we add a pstore driver into U-Boot? It is quite a
> lot of code, including compression, etc. It might be easier for Linux
> to write the data into pstore when it starts up?

Originally ramoops was just what you described. It has grown to
multiple backends and types of records (hence the rename to pstore).
If you just add a new subsection within the pstore region, then I
think the existing kernel infrastructure will support reading it from
userspace. Maybe new types have to be explicitly supported, IDK.

U-boot being able to read pstore wouldn't be a terrible feature to
have anyways if your boot crashes before anything else is up to get
the output. Note I'd guess the ram backend doesn't do compression as
supporting slightly corrupted ram is a feature which wouldn't work.


I think any new DT binding is premature and pstore/ramoops was just a
suggestion to consider. This needs wider consideration of how to
handle all the various (boot) firmware logs. I've added the
boot-architecture list for a bit more visibility.

Rob
