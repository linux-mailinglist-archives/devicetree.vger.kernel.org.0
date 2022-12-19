Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BFDE6508B4
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 09:46:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231459AbiLSIqL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 03:46:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbiLSIqJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 03:46:09 -0500
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BD610B3
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:46:08 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id jr11so7678205qtb.7
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:46:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5gnBI7ljTsZHEcloGn7mSwXJgNh0f4lK7wKmyds4z/o=;
        b=OmOyrHG7WdHIBJyB01QnZVrFZtpolo6gKFvK/lIUKpP5e8cTLLIiVOei31Blq8qiWR
         fSOFIAn9xCZRw64S4/jA9PNB2dKKZ3i0FBkVnv71PU7gQztVtsysgIr8rk4033mZFjxT
         LQx/7KWV7ciciQBxjvd35MU5yDkN9KRTDTSjzZXO9QwGqo3264rM3Rp4/VGjLAYb3vKd
         /dTWOjcX8nQtve7rAT7dQbPsiX/6f0Ufl2gvjWHKUWRGb8isjrppA+Qf161NDHYE9pPi
         Us+Z3/QD0Wf3AnONeLQPyT1pq6dn66/2mlmVO29O5DqV4E+VoYY/tp7xDJQltYzDSdPH
         ZrKg==
X-Gm-Message-State: AFqh2kqrbSxKzwhWiuyTQV/bbP85+1WTBY6sYt8wfzwekGnGyMlmCmXK
        boJjgs0S3jfv8YW/XJrR94q3xMNbiexp9Q==
X-Google-Smtp-Source: AMrXdXs5vjDHDR2P9JPGwQw0sGCH9vLy4CakhjU8W/xyGKnxyk5yF5yO4eCI1+lQcHQ25nMXhyZvPA==
X-Received: by 2002:a05:622a:608e:b0:3a6:8ece:9eef with SMTP id hf14-20020a05622a608e00b003a68ece9eefmr10906164qtb.27.1671439567733;
        Mon, 19 Dec 2022 00:46:07 -0800 (PST)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id u7-20020a05620a430700b006fa31bf2f3dsm6737491qko.47.2022.12.19.00.46.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 00:46:06 -0800 (PST)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-43ea87d0797so90118287b3.5
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:46:06 -0800 (PST)
X-Received: by 2002:a05:690c:f8a:b0:3b4:8af5:48e with SMTP id
 df10-20020a05690c0f8a00b003b48af5048emr3708065ywb.383.1671439566266; Mon, 19
 Dec 2022 00:46:06 -0800 (PST)
MIME-Version: 1.0
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk> <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
 <20221216163919.GA2863056-robh@kernel.org> <CAMuHMdWEbVqD3z69-nJe9ST35_S4AZSJLrYqC3f=F+VONSPn0Q@mail.gmail.com>
In-Reply-To: <CAMuHMdWEbVqD3z69-nJe9ST35_S4AZSJLrYqC3f=F+VONSPn0Q@mail.gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 19 Dec 2022 09:45:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXNeJxzWoR6b+GOst9X49yK=vB574Lk1hmAS0WXDZrwPg@mail.gmail.com>
Message-ID: <CAMuHMdXNeJxzWoR6b+GOst9X49yK=vB574Lk1hmAS0WXDZrwPg@mail.gmail.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>,
        Peter Ujfalusi <peter.ujfalusi@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Oops, Peter is no longer at TI...

On Mon, Dec 19, 2022 at 9:43 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> CC Peter
>
> On Fri, Dec 16, 2022 at 5:39 PM Rob Herring <robh@kernel.org> wrote:
> > On Thu, Dec 15, 2022 at 01:10:44PM +0100, Geert Uytterhoeven wrote:
> > > On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:
> > > > On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
> > > > > On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
> > > > > > +maintainers:
> > > > > > +  - Damien Horsley <Damien.Horsley@imgtec.com>
> > > >
> > > > > For v2, I had planned
> > > >
> > > > >     -+  - Damien Horsley <Damien.Horsley@imgtec.com>
> > > > >     ++  - Jaroslav Kysela <perex@perex.cz>
> > > > >     ++  - Takashi Iwai <tiwai@suse.com>
> > > >
> > > > > as Damien's address bounces.
> > > >
> > > > I wouldn't do that, I gather the maintainers for DT bindings are
> > > > supposed to be people who know and care about the specific binding in
> > > > particular.
> > >
> > > Sure.  But how can they (still) care, if we cannot reach them?
> > > There's no email message from Damien to be found during the past
> > > 7 years.
> >
> > Then put someone that would care if the binding is deleted. As this is
> > used on Renesas board(s), I can think of a few candidates.
>
> Or perhaps someone from TI? ;-)
> This is a TI component, and also used on a TI K3 board...
>
> /me weaseling out...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
