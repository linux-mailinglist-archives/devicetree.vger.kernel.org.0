Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 732BB40407A
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 23:19:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243973AbhIHVUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 17:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240885AbhIHVUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 17:20:10 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5853C061575
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 14:19:01 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id x7so3174104pfa.8
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 14:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+zj8C2mmfJJ638Qd3bWay3eU4cSnuwWClo1NJvPy09M=;
        b=f+YQT8Zhcy0WJVMXuqJy2SGXi599VEQcwuateIHU89hho6VH88YCmFtNPQL7F+BwZy
         EbGX1Hd6esS8YLn7GMl5tjV7129L2lj3bnXT5O1GQCN4kS6ooyEADilIHmtURZTu9IJ5
         h8DVzEDyJOpMpGR1KNeUuiee1NF/E/avz1xtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+zj8C2mmfJJ638Qd3bWay3eU4cSnuwWClo1NJvPy09M=;
        b=Po2jupLYf8cgVmBrYTYVzl9FEBHeGQ7+XF9u1rcVdGY/hRanjR6Aqxt8rVOFnmA7Ez
         18eIzjrD3e67F9HK0hri5oy5J+w//xqxdjyG7N95uryKHTbbuyCrTBMc/9Cq3ZmVToOr
         BhSCyWIYPRSdNl/Y9j5EZx9OKBHbB+7e68rQVvY9EUIVuDZvKadOOd9v9AOUnxQiMy3P
         Td8vWpg1hDsx6PMQ/kD1h/7KeMnZQF5wvSIrEXdZBjG3fkHoXB9meBXjdIgJcWu88Z00
         XJp9fuasMlzwI1Z1QUSCRvYymovwpzGdIZcwaMtW9Vwymn/6djXYqcvFysXymXUlzI7T
         OesQ==
X-Gm-Message-State: AOAM532u8dtBozzCSU04TxOZu/U9h240kWJcXx8GP4y+cxaiyOwr6fBE
        BmhyD0Vz4DjVuLAmwPcOJw8FzT1RhVzyAg==
X-Google-Smtp-Source: ABdhPJwfNKs8nmAFmG0Xu18/jkrkT8Vf5DJLIkmP6Tss+8fEwEEd1XpVLtaUxz4KiVA/MCLaQLwdoA==
X-Received: by 2002:a62:7c02:0:b0:3f8:f3c3:1b32 with SMTP id x2-20020a627c02000000b003f8f3c31b32mr138850pfc.62.1631135941229;
        Wed, 08 Sep 2021 14:19:01 -0700 (PDT)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com. [209.85.210.179])
        by smtp.gmail.com with ESMTPSA id gf9sm33833pjb.33.2021.09.08.14.19.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 14:19:00 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id s29so3191799pfw.5
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 14:19:00 -0700 (PDT)
X-Received: by 2002:a92:c8c3:: with SMTP id c3mr171707ilq.165.1631135460113;
 Wed, 08 Sep 2021 14:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210901201934.1084250-1-dianders@chromium.org>
 <20210901131531.v3.10.I77d7a48df0a6585ef2cc2ff140fbe8f236a9a9f7@changeid> <YTUQhnt0GxYxqg/i@ravnborg.org>
In-Reply-To: <YTUQhnt0GxYxqg/i@ravnborg.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 8 Sep 2021 14:10:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-bxUOyLpe+iM_6HNNyoxi6skzWK417_VE9qGy_oSWwQ@mail.gmail.com>
Message-ID: <CAD=FV=U-bxUOyLpe+iM_6HNNyoxi6skzWK417_VE9qGy_oSWwQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] drm/panel-simple: Non-eDP panels don't need
 "HPD" handling
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus W <linus.walleij@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Steev Klimaszewski <steev@kali.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Sep 5, 2021 at 11:46 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> On Wed, Sep 01, 2021 at 01:19:28PM -0700, Douglas Anderson wrote:
> > All of the "HPD" handling added to panel-simple recently was for eDP
> > panels. Remove it from panel-simple now that panel-simple-edp handles
> > eDP panels. The "prepare_to_enable" delay only makes sense in the
> > context of HPD, so remove it too. No non-eDP panels used it anyway.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> Maybe merge this with the patch that moved all the functionality
> from panel-simple to panel-edp?

Unless you feel strongly about it, I'm going to keep it separate still
in the next version. To try to make diffing easier, I tried hard to
make the minimal changes in the "split the driver in two" patch.

-Doug
