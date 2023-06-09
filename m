Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CAB2729378
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240982AbjFIImk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240981AbjFIIm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:42:28 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 315512D48
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:42:17 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-ba8374001abso1500596276.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686300136; x=1688892136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnKn0rN/J8ew2J1uOQmCV4crX90hgrQd2S/Jl0BhSqo=;
        b=iyc9b5Tsz3m4uzu5QPHIyp9hWWD36AzNCXx/5UBBpfg9DadL9negG9HHy3NlycPesZ
         /Wo21X2LwaewBG800sNtMpDsWnd9RHE5CTJAr9tnxxK2IgMYOOry2gN08C8pVlC1dXSY
         Ia+oZP1ViwNwfae+MGsYl5z9xr/XmYtG27acryqkgj1ypRLK1zFuEc+s35/lwKW/UHrh
         ZVWaSV49EvcE5G10LtzPkVVkzC06he9AgJIKP6KGj7WsAHAKD0UZssbyjC9/C+lXN6QU
         adnQzlvVRUTShMPZF0KBF0C7h1hkXTgY7VPL3vBcesa551r2trBx/3m9l7VrP2Pt5o7m
         rjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686300136; x=1688892136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dnKn0rN/J8ew2J1uOQmCV4crX90hgrQd2S/Jl0BhSqo=;
        b=Oynof/9hzL3VY1i+bYgFXfGivODu+qwsX3XTsZrFS0GY/T5Hx+FY6Sr6e0lEAviRS4
         +ph8YZsybd36e7HWK3Hx3ZnCbQoDn8XzwitUnzC5nZD7jGR2ZwO18e1OdNgYSSGG2eWV
         0BmIf+X8QwdG2mg75cC664ov5C53lpvwcducrlJcTIWFR3B3HaOzAqVDVRnNmVgXjSFr
         IAFKIWzRPxOpeZIcWKj+x/WGMUpZIdsG3hAg6T7JxrW5gu8DmUUee8bDo7ixDekM3Eir
         xud1d6ZhSr3BbKAApu0T8cDjuVlaSGJKeXJ3+OZdPiTPplqzd1JzqT7fcZA5M5l9LSyL
         CPcA==
X-Gm-Message-State: AC+VfDzI7Sxh4AvDVTt9xp2ySFbUop/eA8SH0q3sIZwTc20meGGUSxyg
        VFcqBjxV0oN+ZqJCHlbWPMMqVyCUnoBQor53CMOOVw==
X-Google-Smtp-Source: ACHHUZ7Byu9UvPDCLN2XVF0VzUGFdLxJdMr8387K+TFb0Gnun++r2ecCEyUuinII/bbTCI+ARRnQMTs2ueYhdZ6exSo=
X-Received: by 2002:a25:cb46:0:b0:ba7:ddd2:9909 with SMTP id
 b67-20020a25cb46000000b00ba7ddd29909mr573747ybg.33.1686300136439; Fri, 09 Jun
 2023 01:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230602115201.415718-1-matthias.schiffer@ew.tq-group.com>
 <6a0abd6bba2f8f940e695dfa9fd0c5f8ee19064f.camel@ew.tq-group.com>
 <CACRpkdb=2fogk3bEa4fkPVYQivnvLh1F1TnBj7og43ak+F8gPw@mail.gmail.com> <3241150.44csPzL39Z@steina-w>
In-Reply-To: <3241150.44csPzL39Z@steina-w>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Jun 2023 10:42:04 +0200
Message-ID: <CACRpkda2yQefuUMn6Ot8Ns6nNgfC25i9nwmzwxOy5fUg=A44hQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] spi: dt-bindings: introduce linux,use-rt-queue flag
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@ew.tq-group.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 9, 2023 at 10:15=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:

> > A agree with Mark that a command line option isn't that bad. It's somet=
hing
> > that pertains to just the Linux kernel after all? And you can put that
> > command line option in the default device tree, in chosen, if you want.
>
> I don't like the idea of a command line enabling realtime scheduling for =
all
> instances of the SPI controller driver or even all SPI controllers. Actua=
lly
> this might be worse if a non-rt SPI bus is considered for RT scheduling.
> IMHO this should be configurable per SPI controller,

OK that's a fair point.

I don't think command line arguments are necessarily global by
nature, AFAIK it's fine to invent something like pl022.4.rt_sched=3D1
where 4 is the instance number. Parsing it is just code.

> e.g. a sysfs attribute.

But it needs to be set before userspace is up :/

I fully sympathize with this problem, because I have faced
similar problems myself.

My fallback solution for this driver would be to keep using the
old DT property (which was merged when reviewing was
not as strict) if that works, or use undocumented DT properties,
it's not the end of the world but does leave the bad taste of
a work not finished.

Yours,
Linus Walleij
