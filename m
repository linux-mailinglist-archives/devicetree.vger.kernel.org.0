Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBAB6134FA1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 23:52:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727352AbgAHWwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 17:52:44 -0500
Received: from mail-qk1-f193.google.com ([209.85.222.193]:46631 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726548AbgAHWwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 17:52:44 -0500
Received: by mail-qk1-f193.google.com with SMTP id r14so4218239qke.13
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 14:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bQ8sePp1UB/buB3CQpsdDQjSw45clnU/8Z5dyE7MCUQ=;
        b=XY5GOnFn0zgYevPRNgkVz3RQithuZHY98uxSsiNEuf6vWLkXUGm9VbUWdjyqnbrO0p
         hSlRJ/xH3cUk/dTtQws1Y2BllgiV24bBnUj3yqD6jDFghwhecYRGqhwHtvzQlLjYIres
         pmL7s49IWRxqVAkNWYGTMoSy/oHAsP79XvpSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bQ8sePp1UB/buB3CQpsdDQjSw45clnU/8Z5dyE7MCUQ=;
        b=ow5EJnEp3wGCA+sHFbJWOYDlhhPndO/zxl7ZfDdlyaWcrkg2oh29UXyXtQTZrpLOMU
         MICy6rSsOdFFy7sEZJN0CJ2teXisNccs3wp0ncSfNhn18W+ruTynmCAbR9CiNP4HpzHv
         nHtUQUiACjo+l66PJXMJ4quRPPwMX8pMAInA81wKMTRXVhHi6OGyxSUdBzwh8RMACFPx
         4X8I2JA89Q+PWQNlmUEB7eskckPyIvLJ1vJamF5C8hXGpJc5ZfT0CL95iWzhwYIAgpcW
         IxSq2XVY20s0xaB+r4R9rOFkv30BDxZnYz2Summ+vj9GHqraKtNGULISDVRH6x3egs7x
         /Rfw==
X-Gm-Message-State: APjAAAWNxn6lP4uUc6Yc8pxSs/MYJ4fVo6aUCX7edGfjvjKrea1ywyrP
        5v//OoeqtaewYJFR6uWzRFxHGHBEEoH2L60dN5CfyA==
X-Google-Smtp-Source: APXvYqw2JjwDeqMh2CT5SlyR30QLXuZPvZ+1N9eFdrRhTkkWcwjICSQnRUvYtFyz4OeBrSGR4GBFkA8sANeEtDRg/YU=
X-Received: by 2002:a37:6551:: with SMTP id z78mr7090523qkb.144.1578523963679;
 Wed, 08 Jan 2020 14:52:43 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org> <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
In-Reply-To: <20200108132302.GA3817@sirena.org.uk>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Thu, 9 Jan 2020 06:52:32 +0800
Message-ID: <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 8, 2020 at 9:23 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:
>
> > Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
> > regulator for their SRAM, let's add support for that.
>
> > +     pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
> > +     if (IS_ERR(pfdev->regulator_sram)) {
>
> This supply is required for the devices that need it so I'd therefore
> expect the driver to request the supply non-optionally based on the
> compatible string rather than just hoping that a missing regulator isn't
> important.

That'd be a bit awkward to match, though... Currently all bifrost
share the same compatible "arm,mali-bifrost", and it'd seem
weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
idea if any other Mali implementation will require a second regulator,
but with the MT8183 we do need it, see below.

> Though I do have to wonder given the lack of any active
> management of the supply if this is *really* part of the GPU or if it's
> more of a SoC thing, it's not clear what exactly adding this code is
> achieving.

Well if devfreq was working (see patch 7
https://patchwork.kernel.org/patch/11322851/ for a partial
implementation), it would adjust both mali and sram regulators, see
the OPP table in patch 2
(https://patchwork.kernel.org/patch/11322825/): SRAM voltage needs to
be increased for frequencies >=698Mhz.

Now if you have some better idea how to implement this, I'm all ears!

Thanks.
