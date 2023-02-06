Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 531E668C890
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 22:25:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbjBFVZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 16:25:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjBFVZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 16:25:34 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7AEFEF83
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 13:25:33 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id qw12so38167958ejc.2
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 13:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tz3gVKH8rJvcF6BmMCdF+lcNqaX1UmQLZXIRSzMafcs=;
        b=czQoDGLzZjDA5geO4UxIOvH2BaKIuWskoX7vmiQkhwM8Od/Ap1qqlQiD2+PDf5KWZr
         ykBY+JvdYwQaHKhRVcprZ0VEO5WOgdlFn+6i2yaH1QmsqLnp8Zake/lsius91XUIWW2S
         0Ky/KDCFwaSoAHV8UzfiREFnGaPbXQPasFLUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tz3gVKH8rJvcF6BmMCdF+lcNqaX1UmQLZXIRSzMafcs=;
        b=ZPGSTFYtc2cnLSnyl1Bj9HVCLZQTw9A1UHaHKlvVWXrORwoqK5qRO+TT4m0HTEmDCt
         XbttcWiU0LAsmVSYHMGd72vaIIL9Xxh0s49Q4iEtSYY8+E35ec5NK68hKES0YC+k8IbJ
         TVSQMoTGaBzIIbxUHfc9A/+7yWuuLWFFq4+tTiZt9l0vourLNYPQBgkUrNJ0HYoeOBSA
         KNiA1F8hpj5Ogh8qxN+VTWWzwarskoTqArzEl+xHjEoMmLzOovTk/7HvKqDqwbR8o+4Y
         IAXEOTJPKq2xRyxCzW/o3p0GKruEPavNTZetV2CaFoINxP6QHaEBlEnX2DpxeL73vUq3
         Ql7Q==
X-Gm-Message-State: AO0yUKUVOqBO2AvLfY4G4jHM8I6WIXf1aWm+zCdKFqVtMZUs7Ejnr6N4
        muG6g/cAmn0HbSi3FmAEJtHDRkWvfCFDcevWv8pZKjQuFbTgGJ2Y
X-Google-Smtp-Source: AK7set+QZdsGkpeIGVjn7rKYeyWwmPfCIt7TV5I0VToDRjyuo/ttfJWd9m4RwQriFhXnxjH5/miqeMdPQqzfTpk8/Qg=
X-Received: by 2002:a17:906:6a94:b0:896:43bd:7915 with SMTP id
 p20-20020a1709066a9400b0089643bd7915mr253487ejr.93.1675718732134; Mon, 06 Feb
 2023 13:25:32 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com> <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Mon, 6 Feb 2023 14:25:20 -0700
Message-ID: <CAPnjgZ3c0Tmtfzgv74vWovme0mVoF3N1hfoCnz61Hyzc-QE8vQ@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Rob Herring <robh@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
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

On Mon, 6 Feb 2023 at 10:15, Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote:
> >
> > Hi Peter,
> >
> > On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com> wrote:
> > >
> > > Hi Simon,
> > >
> > > Does it make sense to devise something that is compatible with the
> > > kernel's pstore [1] mechanism?
> >
> > Possibly...can you please be a little more specific?
>
> Peter is talking about the same thing I suggested on IRC.
>
> pstore == ramoops

Oh, I only looked at the DT binding as I thought that was what you
were talking about on irc.

For pstore, isn't the point that Linux wants to save stuff to allow
debugging or collection on reboot? What does that have to do with
console logs from firmware? That seems like a different thing. Or are
you suggesting that we add a pstore driver into U-Boot? It is quite a
lot of code, including compression, etc. It might be easier for Linux
to write the data into pstore when it starts up?

I'm really just looking for more specific ideas as to what you are suggesting.

Regards,
Simon
