Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F236E28FAAC
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 23:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731021AbgJOV3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 17:29:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726365AbgJOV3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 17:29:45 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20A1C061755
        for <devicetree@vger.kernel.org>; Thu, 15 Oct 2020 14:29:44 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id x7so183075eje.8
        for <devicetree@vger.kernel.org>; Thu, 15 Oct 2020 14:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=shNugDWCSFxMFaQhudWs8qBWQPZ07aTny77+Ie1FHlk=;
        b=WsvessV78yuDktprTp/4iqa3Adv1XtNl2N/v19ZJnZoqVtqW3R89jenV6efR955q/r
         w/t7xoaoNh7s+6TICZL6hGqJEjkuoQuGozFyTv0FDKf47JoY98kaBG86Az0J9yrlcxxG
         WWCFFWYtDAiJztGSud9FB31svTcPtnbTB6Mhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=shNugDWCSFxMFaQhudWs8qBWQPZ07aTny77+Ie1FHlk=;
        b=uKq1ED4a6O7UJefSk1Z2Xd+o4X7G/M6e0D0O0t5AxA2F6Vmn7lnWrl9oVCS7XGWuZf
         QbkvpmUUQH2A3wqjQy7w8GxkvU6kdbq/rlnvVC6KmtjkJK6tg+RTgvbsPH7XZzdfoN6G
         xaXZaLMYNkDMIYdR1+ZpU8CMEisa1cxVv8NXBIPpB+xPh9efRCAAcTj730AuLP9G7FKu
         K8kOjRFKdMiwk5uIy8iAM/+hncwKMbkNWTpQtTWDjGuR/8QOMwEKjpPgJkmajcdyjhhe
         d9gJASGZTBWnGxYdU5kSOAU1e3ZY8xekTFQQ/G9ach5WdZJrxAO8Me/S7Gmz7owhRJ87
         UB6w==
X-Gm-Message-State: AOAM53390QgH/jsB9LLnApAJoCjrQvGPfon6iPBv9J52vxG3d5mIUVgY
        KamS8EMgt4yygSnuHCDxpbba3mvzCfTAUA==
X-Google-Smtp-Source: ABdhPJy28sl7CJrzbiecFn0WB1kKy3nCQQrMg6idilPk379jcACEw2zxT23JeN9/9jAq74DWlA1FJw==
X-Received: by 2002:a17:906:4b19:: with SMTP id y25mr321436eju.393.1602797383403;
        Thu, 15 Oct 2020 14:29:43 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id v21sm98973edt.80.2020.10.15.14.29.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 14:29:42 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id x1so247555eds.1
        for <devicetree@vger.kernel.org>; Thu, 15 Oct 2020 14:29:42 -0700 (PDT)
X-Received: by 2002:a50:e40b:: with SMTP id d11mr491296edm.198.1602797381996;
 Thu, 15 Oct 2020 14:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20201013080103.410133-1-amstan@chromium.org> <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
 <20201014141946.mkrvpkrttucffkhj@holly.lan>
In-Reply-To: <20201014141946.mkrvpkrttucffkhj@holly.lan>
From:   Alexandru M Stan <amstan@chromium.org>
Date:   Thu, 15 Oct 2020 14:29:05 -0700
X-Gmail-Original-Message-ID: <CAHNYxRx3J7XUE-hWa8-6_bOePsw1oeY9uuuehy=yCxN2RyqsjQ@mail.gmail.com>
Message-ID: <CAHNYxRx3J7XUE-hWa8-6_bOePsw1oeY9uuuehy=yCxN2RyqsjQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: veyron: Remove 0 point from brightness-levels
To:     Daniel Thompson <daniel.thompson@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 7:19 AM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Tue, Oct 13, 2020 at 01:01:02AM -0700, Alexandru Stan wrote:
> > After the "PWM backlight interpolation adjustments" patches, the
> > backlight interpolation works a little differently. The way these
> > dts files were working before was relying on a bug (IMHO).
> >
> > Remove the 0-3 range since otherwise we would have a 252 long
> > interpolation that would slowly go between 0 and 3, looking really bad
> > in userspace.
> >
> > We don't need the 0% point, userspace seems to handle this just fine
> > because it uses the bl_power property to turn off the display.
> >
> > Signed-off-by: Alexandru Stan <amstan@chromium.org>
>
> Acked-by: Daniel Thompson <daniel.thompson@linaro.org>

Thank you!

>
> Note also shouldn't this be patch 1 of the set. AFAICT it makes sense
> whether or not the interpolation algorithm is changed.

Yeah, I guess it could be. Sorry I didn't think of it that way before,
I'm used to landing things in a group.

In particular on veyron I assume it will almost be a noop without
having my driver patch (especially with the findings of 0% not being
that important).

Feel free to land this independently.

>
>
> Daniel.

Alexandru Stan (amstan)
