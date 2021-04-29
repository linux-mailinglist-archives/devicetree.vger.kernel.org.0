Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0017E36F104
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 22:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233461AbhD2U2S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 16:28:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhD2U2S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 16:28:18 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3AE4C06138B
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:27:29 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id n22so10580132qtk.9
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yJAed2YO1H2xLAJa2u/q4gvEcUMt+Fsnzg19rquZ0v4=;
        b=UvoKhxS9VHGC7coP+guOYOOgI/mbe2AD6xR50f8frzpEkglvQV74jMfQ5aY3p6idf+
         fMMM9jG0R3scNY69GVp/WzqytzFay86ZyMP9umI5IwWr5Cv8/27lqrueMPKvI4AO9VEk
         XqQPt58na7jf6uobRhfrfCiZbdfNcjStBFJRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yJAed2YO1H2xLAJa2u/q4gvEcUMt+Fsnzg19rquZ0v4=;
        b=PHHLYvjR3wvpmoXucwizSW1rArrvuVa8CPa1iwVq6Hw0aEFdbuUyLTC9p+Dq9VRZNh
         6dSWMggIkq/PM9+ol1nsmrikRM+sT+3ug8ZjcSFt5qZRbXSuPxwSjwEH1Du0CuiTIT/v
         JS6piSroOMlElqtWKf8bYkoMg/tx1bCce2uSfSSFfz/LIL8Ydd8xU0bUSdoLCtQiclFK
         moM372zWIDauNYaM2T33VVRnh6kGYnn0kCvSJ1i0hvX26lkoz4hwNjQYQiAokaTVQphc
         6WNtvYbcGmH385evg3o+cYBeCQOF01XZ+lJE4/uGUkoXN1l/a/F3sdHtMp6250/78Agn
         vgsQ==
X-Gm-Message-State: AOAM530ouy9ygEJQtRXxzhmgED3ydZvkM8zbsJS/Z3DZZNZmX439bhzd
        00vdRR2Uaq2otrUU+BLuGr4qkI1yCp5toA==
X-Google-Smtp-Source: ABdhPJy9Q7jNP191X1XRM2gP8S6ENUXd+Cg44fgP1JvaGaOqnT3NlJEkKZEua9TH6t7poEpNnjcZCg==
X-Received: by 2002:ac8:669a:: with SMTP id d26mr1216369qtp.173.1619728048775;
        Thu, 29 Apr 2021 13:27:28 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id a187sm3006354qkd.69.2021.04.29.13.27.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 13:27:28 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id v39so304503ybd.4
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:27:28 -0700 (PDT)
X-Received: by 2002:a25:58d5:: with SMTP id m204mr2202753ybb.32.1619728048052;
 Thu, 29 Apr 2021 13:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210405234713.3190693-1-linus.walleij@linaro.org> <CACRpkdZVDN2tGLiVT2sZKAT7PKYi-Opk2Gzop3DAj5Lm0OVdzw@mail.gmail.com>
In-Reply-To: <CACRpkdZVDN2tGLiVT2sZKAT7PKYi-Opk2Gzop3DAj5Lm0OVdzw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Apr 2021 13:27:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wwmv5qk6oeW63eoaPvj6KfYVS0_vvP7AFkqify0mPTbg@mail.gmail.com>
Message-ID: <CAD=FV=Wwmv5qk6oeW63eoaPvj6KfYVS0_vvP7AFkqify0mPTbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Samsung LMS397KF04
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 29, 2021 at 7:34 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Apr 6, 2021 at 1:47 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > This adds device tree bindings for the Samsung LMS397KF04
> > RGB DPI display panel.
> >
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Someone on DRM misc up to review and/or apply these two
> patches?
>
> Doug? I bet you have some patch(es) you can toss back at me to
> review in return.

I know next to nothing about MIPI panels, but I gave it my best shot.
Please take my comments with a grain of salt since I'm still a bit
noobie.

I think I already probably owed you a review anyway for previous
reviews you did for me. I do have my big 20-part series out there and
I certainly won't object to more review but most of the patches are
close to having enough review at the moment. For some of the simple
(dare I say "trivial"?) patches Bjorn was nice enough to provide
review. For the panel patches I got an extra review from Sean Paul. I
think there are only one or two patches in the series that have no
review at the moment because I had to spin them for Bjorn's feedback
and he hasn't gotten back to it yet.

-Doug
