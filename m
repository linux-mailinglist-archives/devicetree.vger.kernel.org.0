Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5AD64EF8F
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 17:41:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiLPQlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 11:41:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231933AbiLPQjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 11:39:36 -0500
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02DAA2F664
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:39:22 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id o66so960824oia.6
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:39:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CdeW2gkswOLWXSESFJNO4bCK90PLGmoeuScKV8jkGd8=;
        b=WK4wP3d7grtDT6lW9d3RKDyUXSXM3brcREn7WCIwH/7tjxKlD+w1jPLQubsIcEQ1Ny
         IbtABTJiwIpjAJCv3LTQ0rZq0KXPCe7etw7cYalyjxZqb3fPapjhVUC8u/oLQxLcjf90
         yw5YXYJdehWbjoYMaYhdOcpacpCDutg74zAGLmlhC8fRCOzdOdahE3hKWUaEiobEPN+P
         CIvdk1FMEwJT1bAsqo183WzkrM8tQOBI8Y+GbQvMRCIGrSQIg4Je1RJSnAIrw9sr8Xjy
         UQeHwiqisE+KZ+mzhtjNNqdGH7ZicCHvnkIurPeKF8HPFePwrZAadKgR3bLtrRC4IweK
         aLQg==
X-Gm-Message-State: ANoB5pkvA3HVHsVV0SO7EUc0Zy3hcuOuWxrX2xb6R2FlGz4E9Du+yw6u
        ymeyVg+pd87kDrrql7U+1dzAfWLZCQ==
X-Google-Smtp-Source: AA0mqf4dQYstkDsx8+ZYOJlQ88oAKanB6d+CJIZR4Ymm/4NDjmKzeRkMvgEC27BZP0NXvNPBKpI6VA==
X-Received: by 2002:a05:6808:2022:b0:35e:5451:4310 with SMTP id q34-20020a056808202200b0035e54514310mr28900562oiw.49.1671208761267;
        Fri, 16 Dec 2022 08:39:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 62-20020a9d0644000000b0066e67925addsm1026809otn.26.2022.12.16.08.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:39:20 -0800 (PST)
Received: (nullmailer pid 2868860 invoked by uid 1000);
        Fri, 16 Dec 2022 16:39:19 -0000
Date:   Fri, 16 Dec 2022 10:39:19 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to
 json-schema
Message-ID: <20221216163919.GA2863056-robh@kernel.org>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk>
 <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 15, 2022 at 01:10:44PM +0100, Geert Uytterhoeven wrote:
> Hi Mark,
> 
> On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:
> > On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
> > > On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
> > > > +maintainers:
> > > > +  - Damien Horsley <Damien.Horsley@imgtec.com>
> >
> > > For v2, I had planned
> >
> > >     -+  - Damien Horsley <Damien.Horsley@imgtec.com>
> > >     ++  - Jaroslav Kysela <perex@perex.cz>
> > >     ++  - Takashi Iwai <tiwai@suse.com>
> >
> > > as Damien's address bounces.
> >
> > I wouldn't do that, I gather the maintainers for DT bindings are
> > supposed to be people who know and care about the specific binding in
> > particular.
> 
> Sure.  But how can they (still) care, if we cannot reach them?
> There's no email message from Damien to be found during the past
> 7 years.

Then put someone that would care if the binding is deleted. As this is 
used on Renesas board(s), I can think of a few candidates.

Rob
