Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4A96217A0
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 16:03:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233862AbiKHPDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 10:03:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233326AbiKHPDo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 10:03:44 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68FE1834F
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 07:03:42 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id bj12so39246279ejb.13
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 07:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6IlH9BC0C74rVUlY+iu0DEUzQTQWkY08zzm9NMjrL1s=;
        b=aeQmtdEAkiWv3p0gIeMmZsjTU+YG2i5PiQ/Q0DfIdfVbt5WtyD/RmfxC1CgkRWJOHI
         1MlfvduBdhxx47D1ZljapmsKZn3HVVapxNLonx6z9YeJMtS0ouTlONzIXlyLJ6FTGBY5
         DedZSYYjcJ4CQY5bn6MI7h6E/I1CAMRIXPYWs0NiA/mvVFZYJrr1QEOfacohHI7NC0dS
         jBmRhtnwSZ6ZQxKfwbOKzQYtWP+DtPfCzimrJqaRf2+1JtsdeVpLloxr0IcQ3T8EtFdT
         qYUSjetx9nBMxdz8oClpMRi0Zh5nnu4JrrT7ub4uAAqRoMnQcw8byhkTSmsQMqV4AIKK
         OAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IlH9BC0C74rVUlY+iu0DEUzQTQWkY08zzm9NMjrL1s=;
        b=QlbtxT3CQ/u/uD6l6ysu5N4vBBZjRLb6dyVFRHB7Eaa2bLZBMz4HwpR3XEjPxjL8N7
         ERVzOm6iu5KSadZx7hfW9W6XKn6/HjnZ6jWe2EOdcySwPcSliuM1OpxAU6zlVUOh2WOe
         2rgIkWzCo6lnAvqkWfDZaFJYeQOrNwhHmomFiUP6oalVJ4Hlqb11gjQICuYPdid8mYAZ
         qFAw7vhirUsuirESydaa7dF3aOjhcJzu2cIthpFNolhL0Ciakp/Cds7Af4hkkk5MzRgQ
         q7ro/MJ9WPJXGTwRqiyC5evcNCApHcmp5hQY7bFmVsjJ3urRY9zddUEI9Nknw1+6ADfb
         LIqA==
X-Gm-Message-State: ACrzQf3fPsTkh6XMyqzU3XcWwO/jnmYeTPjAudr6bF5oCp8eguJOVc7Z
        zpLJr69fvT6k1UT/X6kol0ocl4j37ocLSfdTTKMeBw==
X-Google-Smtp-Source: AMsMyM7vHItXzV2vO+7s4+yUSScRtHL+tHTT+rgp2U37h5bB62xy9l52Q60OQWs/1fUL0AmcE9k3PZY2LDDi5Im4yZg=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr54438091ejw.203.1667919821101; Tue, 08
 Nov 2022 07:03:41 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
 <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
 <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com>
 <CACRpkdaZnGgJ3egXEtoH0gTmR0m_-9Q+iGZr2eOx2JVHYgXCXA@mail.gmail.com> <CA+VMnFz1h0MfwxiQeFCdvMJWQ9uKWvwstJvKnpDTKjaVHN3pYw@mail.gmail.com>
In-Reply-To: <CA+VMnFz1h0MfwxiQeFCdvMJWQ9uKWvwstJvKnpDTKjaVHN3pYw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 16:03:29 +0100
Message-ID: <CACRpkdZGXeGc_vyAGw3zW4MyR+tp9jhvKJ4sf2tSS7L9B+oyOA@mail.gmail.com>
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

On Tue, Nov 8, 2022 at 3:53 PM Jagan Teki <jagan@edgeble.ai> wrote:
> On Tue, 8 Nov 2022 at 20:18, Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Tue, Nov 8, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > > On Tue, 8 Nov 2022 at 19:31, Linus Walleij <linus.walleij@linaro.org> wrote:
> > > >
> > > > On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > > >
> > > > > Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> > > > > dot matrix LCD with 800RGBx1280 dots at maximum.
> > > > >
> > > > > Add support for it.
> > > > >
> > > > > Cc: dri-devel@lists.freedesktop.org
> > > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > > ---
> > > > > Changes for v3:
> > > > > - updatd to WXGA
> > > > > - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY
> > > >
> > > > My comments on v2 have not been addressed, for example I asked to
> > > > remove the delay from sequences and just use an explicit delay and
> > > > to then use the existing sequence sending macro.
> > >
> > > True, I responded on the same day [1], since I didn't get the reply I
> > > have posted by assuming my comment is valid. Would you please check
> > > and respond?
> > >
> > > [1] https://lore.kernel.org/all/CA+VMnFz0w-6O=wt3iuJo1BhQgPZ2XbpX6JdDz6vg_JW9nHTR2A@mail.gmail.com/
> >
> > OK I see, sorry for not reading close.
> >
> > The driver just supports one single variant.
> >
> > What you are doing is preparing the ground for more variants
> > that may or may not exist. This creates the antipattern "big upfront design"
> > i.e. abstractions added for things that do not yet exist.
> >
> > I think it is better to strip it down to just open coding the delay after
> > the init sequence. When the next variant appears, if ever, they can
> > add abstraction. Maybe they need the same delay in the same
> > place? Who knows...
>
> I understand your point, but delays are strictly mentioned by the
> panel vendor init sequence, cz101b4001 do you think adding in the
> generic or common code is still valid since we have code added for
> cz101b4001 specifically via driver data?

I would instead of encoding a sequence into the driver data
encode a per-variant callback that sends the sequence (which
can then be just static array) and then ends with an explicit delay.

Yours,
Linus Walleij
