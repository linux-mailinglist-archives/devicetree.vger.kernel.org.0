Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97E8E3B7E0D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 09:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232831AbhF3Hb7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 03:31:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232812AbhF3Hb6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 03:31:58 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25A46C061767
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:29:29 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id u20so1865601ljo.12
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WOz5FXFqlIUEejwuKtAkxrx7VDAh1RhiLyn80MGNpio=;
        b=Q0pzAtxbYpihfjoXE9FYAu2jSQauzQI5qhDX6gnA4OlPb2HGu/0vIiSb2f/0ycA1XD
         vgnsu2OkLCXNblx1anPjFEPbI6rD7ZbYveXHcu0uEAqBaU84GgphiKQzFa5Py63lyJto
         PhqD+iIJnnLSHXtRO9pvJO4socDpTbeyL6f4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WOz5FXFqlIUEejwuKtAkxrx7VDAh1RhiLyn80MGNpio=;
        b=s1NBCTrNqYXVM2JJacXUaRvTyJgKu/xGZje8RmfCVj/l84tr5tJU7lY9qPzlCeDDeA
         Bi9hxDEK8m0WI2nB+gThGeqXVTo/0CYNZvsquc8vKH4dVIVp7Fjm9tBeob0JDPVPp03b
         CBzaJn6F+Y52t0XUrLSra7dMaYkaEC06LsPzIwxZTuBPyWbtt571LmAZXKxVmMZ3ISXo
         KJ2vfLXzL/TpaQT8W66M5YQ2Urcg7v30enqUykcuf/wtLceXzs8wCg7aJVAGonr8rPZn
         kgomgf82qLa7LW5vKdMiw6yycjVkpUZdheyMixvtEDGUXAxgwKzT8M3+o2U0j9dcwcUS
         yHGA==
X-Gm-Message-State: AOAM533PYaFDzv6EFSkBVhJ2Q7gtO77L4Vyi7Bszg3sOKmIw8Zjl+Rrq
        kEkd+QYccSk10MSQbWd2CbyBekz7o9LuoJedXy++1Q==
X-Google-Smtp-Source: ABdhPJwYLSlGhsJsYqCeO7APTJb4qDm1dEtuszdzm+gIcVQiuh5EK3GdQGHHjxusv9UuYfUd7ZYs3NX98WcUnIJSOTg=
X-Received: by 2002:a2e:a583:: with SMTP id m3mr6793596ljp.305.1625038167569;
 Wed, 30 Jun 2021 00:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210630035443.2144958-1-hsinyi@chromium.org> <CAGXv+5ERomKaid2wQ5Sz9CB-q+DVLMzWq08b+rkkh5=3WnG5Vg@mail.gmail.com>
In-Reply-To: <CAGXv+5ERomKaid2wQ5Sz9CB-q+DVLMzWq08b+rkkh5=3WnG5Vg@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 30 Jun 2021 15:29:16 +0800
Message-ID: <CAGXv+5GE_ksZseTWKLpwrZvQkLx64TvATYw_dGKzOCU1Jd0hKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: kukui: use generic pin configs for
 i2c pins
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        zhiyong.tao@mediatek.com, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 3:27 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Wed, Jun 30, 2021 at 11:55 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > mt8183 i2c pins don't support PUPD register, so change to use generic
> > pin configs instead of let it fail and fallback.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

You might also want:

Fixes: cd894e274b74 ("arm64: dts: mt8183: Add krane-sku176 board")

> On a side note, the `mediatek,pull-up-adv` property probably should be
> merged into `bias-pull-up` with an argument.
