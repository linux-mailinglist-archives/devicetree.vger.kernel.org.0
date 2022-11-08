Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 609FB621765
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 15:53:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233826AbiKHOxE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 09:53:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233410AbiKHOxD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 09:53:03 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1133ADA7
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 06:53:03 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-370547b8ca0so136192727b3.0
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 06:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZeruRM6pLf0L2avHjfnGbDq+RAbm6eC6yZuwoRzHAnA=;
        b=iuA6PP+T9uVV7ZG4XlLfplyArIAnLIDkoJqaQysMhRw8M/5NtjlVpvsWpULdCxJsZH
         qkkAKhezpwR6cdXuteUIoNSwD6zX2GN65l6CTQUqDw5A3e3kDeyG2IVB0QfnBVrSm2Np
         jVmYvTfq4DtXeM8qAo5gCXZjZaF5NehUyRX5F/tS8eT7lmCB8dUt6QhqtnLLrxj/BRfV
         8B86BhDVWPN2RKjcw2gFCxdabk4WJRHtDYmIOg1xBVx7+egvQXLwXPhrPL0wvasRYjiu
         3tgLSId9Tcw6yQ3dEiMN7UQnRDThfu1V7fVGXWK3WC+bkhhOiDfq+AKWZ/41VJqki0ur
         lpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZeruRM6pLf0L2avHjfnGbDq+RAbm6eC6yZuwoRzHAnA=;
        b=gU3epaqYdlqL2bd3xRBwaz09h0tM0rNUb4gjgx6f98+LZREQoxGgR8frHTqhPdRBWw
         oim5jdQ+HSk5o4aOj6FhwOibHlbEFkWjk9JeW0hEUywQHkrj+jh8SUcma2g7Ci4AsklG
         p4M9a/i6aUiM+ritMtur7878Z9xCDNjvHZwwY4k85kB8jNp193NsvUHMVGdDikok+ZpY
         OlBNlxnQN8hJaiVBd0yxctUedIJ3DI0XiZcXLonFMgFmJw7YJR2bIBauALf1fvWOvdXY
         zXOrAs8RWK44qATwRpg0OhvKbURoBVlwAiwUY2mc74koLYtaO0QXfvKJ9T921ZZ32wKP
         ri3Q==
X-Gm-Message-State: ACrzQf2D+z6kWQNkm6TuFVVSux7NyAEIc5HPR/IR2cS/hwySOolKOSNE
        ym4ugKdf7YaHMGncAdZXq9wK7FVV5wkjyAwsOMP3cnriza/DyqTMcR6SWQ==
X-Google-Smtp-Source: AMsMyM7umw9tL2RgbOU7i+wbmGkatqn7q9n9iSKlRNYjy/7igub4VkhEoChiS0zAcmHPAVfN8dn6fPdtAk0N+fxIX/M=
X-Received: by 2002:a81:468b:0:b0:364:8aa:8196 with SMTP id
 t133-20020a81468b000000b0036408aa8196mr53986180ywa.468.1667919182275; Tue, 08
 Nov 2022 06:53:02 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
 <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
 <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com> <CACRpkdaZnGgJ3egXEtoH0gTmR0m_-9Q+iGZr2eOx2JVHYgXCXA@mail.gmail.com>
In-Reply-To: <CACRpkdaZnGgJ3egXEtoH0gTmR0m_-9Q+iGZr2eOx2JVHYgXCXA@mail.gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 8 Nov 2022 20:22:51 +0530
Message-ID: <CA+VMnFz1h0MfwxiQeFCdvMJWQ9uKWvwstJvKnpDTKjaVHN3pYw@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Nov 2022 at 20:18, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Nov 8, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > On Tue, 8 Nov 2022 at 19:31, Linus Walleij <linus.walleij@linaro.org> wrote:
> > >
> > > On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > >
> > > > Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> > > > dot matrix LCD with 800RGBx1280 dots at maximum.
> > > >
> > > > Add support for it.
> > > >
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > ---
> > > > Changes for v3:
> > > > - updatd to WXGA
> > > > - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY
> > >
> > > My comments on v2 have not been addressed, for example I asked to
> > > remove the delay from sequences and just use an explicit delay and
> > > to then use the existing sequence sending macro.
> >
> > True, I responded on the same day [1], since I didn't get the reply I
> > have posted by assuming my comment is valid. Would you please check
> > and respond?
> >
> > [1] https://lore.kernel.org/all/CA+VMnFz0w-6O=wt3iuJo1BhQgPZ2XbpX6JdDz6vg_JW9nHTR2A@mail.gmail.com/
>
> OK I see, sorry for not reading close.
>
> The driver just supports one single variant.
>
> What you are doing is preparing the ground for more variants
> that may or may not exist. This creates the antipattern "big upfront design"
> i.e. abstractions added for things that do not yet exist.
>
> I think it is better to strip it down to just open coding the delay after
> the init sequence. When the next variant appears, if ever, they can
> add abstraction. Maybe they need the same delay in the same
> place? Who knows...

I understand your point, but delays are strictly mentioned by the
panel vendor init sequence, cz101b4001 do you think adding in the
generic or common code is still valid since we have code added for
cz101b4001 specifically via driver data?

Thanks,
Jagan.
