Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FA2862174B
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 15:48:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233704AbiKHOsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 09:48:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233938AbiKHOs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 09:48:28 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3399E58BC3
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 06:48:08 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id kt23so39178290ejc.7
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 06:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=udlUQxbpymKCwohxFY8X9JBSfOjmetBU5zbQOm9wbdg=;
        b=flNVoZG0dQayUX3DheVklirArChf7wKr16/xVvQxkvag0tVM5K9IwITBbykd7tROsH
         fTL90PtV9yxmU3v0EDxiW4LmInWBtlAD2Gz1AeXSvyXwb/m1ScBQ1Kj4VPMrhsUtqCRp
         8uGw1qzKnNqzT3B62BdTmwZwQm9ID5XDxOPhYGbJqz+P3frFIg/TSeCCq/KpfhDQFygO
         fUAvZgvalmOlTjuBhF6fenKHF5SyLjE2/EE1eyubAwxTyzxd4LhaltcuSBXswa8BDCqH
         3w+rbdtmvtqlj4k+id3pCqyMTapYSycxr3ffl3bk2lKZMn08xhsV8uPWPZ2eeJss53up
         AQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=udlUQxbpymKCwohxFY8X9JBSfOjmetBU5zbQOm9wbdg=;
        b=jumSAGDXm+CnwVNmL/VsLIldIEbgfbUtxfetexJQcaChYoke0dhmx/KGqmGydm1gyx
         Tk8mLGAiX6lUGJEyrkcGehg4VuNrv0B5f4nXa7yre4Cp77bOAtXAKP3bViT7sYBKNX3R
         FiitYeEZUmGCITZv+Upz27cSaJceRc3tEOO8QkBdtZy4hGGi5s9ipZomKtN+MtRAaY2l
         gfo6Je6AFIHZOchWBMKrJG7yAOOitDUXqXIsgqKEHs1wBu2eIBUka4FQYiuMWM+he9SF
         SAVqvjrkVffCkFvVZdOc95wtd5SUc3Vb9IdIcZzWgVaY0wbCQmTpHWp/3/SvCJ2CajOS
         xcjA==
X-Gm-Message-State: ACrzQf0/Uljg3lYhsV9dpIZfPWlK3pQ4Q7o//A/sj0wgBvoYIBxjfn2b
        xp/gv6wNRXVbt0R31cy9ne1Ed4UPBQ3/5ZrzM9S7vw==
X-Google-Smtp-Source: AMsMyM6wPLp+JJnawhuS9S6jZpX6mhnsHwb+BX87E31yK1EBAt+OPX86JS7UErDrFwQ1Vj7NhSGbHK0eVyErspJyIwA=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr54380391ejw.203.1667918886588; Tue, 08
 Nov 2022 06:48:06 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
 <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com> <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com>
In-Reply-To: <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 15:47:54 +0100
Message-ID: <CACRpkdaZnGgJ3egXEtoH0gTmR0m_-9Q+iGZr2eOx2JVHYgXCXA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 8, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> On Tue, 8 Nov 2022 at 19:31, Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > > Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> > > dot matrix LCD with 800RGBx1280 dots at maximum.
> > >
> > > Add support for it.
> > >
> > > Cc: dri-devel@lists.freedesktop.org
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v3:
> > > - updatd to WXGA
> > > - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY
> >
> > My comments on v2 have not been addressed, for example I asked to
> > remove the delay from sequences and just use an explicit delay and
> > to then use the existing sequence sending macro.
>
> True, I responded on the same day [1], since I didn't get the reply I
> have posted by assuming my comment is valid. Would you please check
> and respond?
>
> [1] https://lore.kernel.org/all/CA+VMnFz0w-6O=wt3iuJo1BhQgPZ2XbpX6JdDz6vg_JW9nHTR2A@mail.gmail.com/

OK I see, sorry for not reading close.

The driver just supports one single variant.

What you are doing is preparing the ground for more variants
that may or may not exist. This creates the antipattern "big upfront design"
i.e. abstractions added for things that do not yet exist.

I think it is better to strip it down to just open coding the delay after
the init sequence. When the next variant appears, if ever, they can
add abstraction. Maybe they need the same delay in the same
place? Who knows...

Yours,
Linus Walleij
