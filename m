Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD9BC35B46D
	for <lists+devicetree@lfdr.de>; Sun, 11 Apr 2021 15:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235487AbhDKNAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Apr 2021 09:00:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235095AbhDKNAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Apr 2021 09:00:22 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7C31C06138B
        for <devicetree@vger.kernel.org>; Sun, 11 Apr 2021 06:00:05 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id k73so5622313ybf.3
        for <devicetree@vger.kernel.org>; Sun, 11 Apr 2021 06:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1D/NZaQrODriWdgxS69yUjmJHum4ME8GOKo/lbq9TW8=;
        b=cQtAvEYn9OCsL1LW5CtDebiXiJDG1PVTKA9AwlWGDvaor3jmb3843CZq5Basm78XG7
         G52PXeJWQ4pVtfws/W15yR/gjIxW/mgOQyrIdYlVzOAs4lee8dsV6hoJQ7RkgAYmqUum
         OkmtLYXFF5wvSRihO/wYBr2jzgjN0TfLUupmOSJcWVsrUUaoMxzIXHGE2bGFAX1OF6Zd
         vJLE3pmyNTae4Hj1gUG2DgzEy5eEU3KZnNGLnq21Xok0ElsDR31F8sxDEGDkNbufKQkC
         /vgn0kR6vV7++OmQlTqHn4o4dUfNeNtI7bG78hwRMI65I5arH47M6tWZKWuuoVTwVnUa
         Sqyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1D/NZaQrODriWdgxS69yUjmJHum4ME8GOKo/lbq9TW8=;
        b=ljfF1cfNSItVb7mCEYsQzZJ5ONBBscuFW5E9TL5An69hm/xXi/I+qaE/ck+HKIzcZa
         xki4/B9PM81fhXlzyvLFA4uNNfSPmdgeYkQWIPnomu+/jnxdyLdfUVtasxkIUGJpTR5E
         +sNqxILjZxGTo8ZzI+SO4A+TrrzH2BjJ944mty9NPeI15G0Vw4Rx9zD5ljMSwdF9R1Cl
         2+hOO40bEpt86fB3sZhUrTspFv72qn8mBl7NLkVHiV+JREpIdlwZLHsiF0HC2fWHltns
         ijFJ7QQpz2GbcajQWkVuqCZUNwVp7Gxkzu7pDOvqyG97E9uFtxJ1KOiEu44wdTe+Wdnb
         ygUA==
X-Gm-Message-State: AOAM5301qmAsEROPXTqse/C20c/eGzgKFhFVS48Gv6FNAr2tm4hRCLO1
        LpSlOw2iwTCasUu97kksIIWA14CRjCloBzLdHTGPpQ==
X-Google-Smtp-Source: ABdhPJye5Ty8OxuNQMJRe6h1haYpe3oaYdKnacC4pzD9MpxefH1BO3fhBxS3hdokzIfZsMAw12tUuj+ql0FQ05mrvGI=
X-Received: by 2002:a25:d152:: with SMTP id i79mr6159519ybg.469.1618146004958;
 Sun, 11 Apr 2021 06:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <df145e77bd124721f28cbc58fb3c58c138f13d86.1617365710.git.geert+renesas@glider.be>
In-Reply-To: <df145e77bd124721f28cbc58fb3c58c138f13d86.1617365710.git.geert+renesas@glider.be>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Sun, 11 Apr 2021 14:59:53 +0200
Message-ID: <CAMpxmJWNK+30EkHoYo40XdNuLqyRS+sRMy9RvC9T40N58S8wMg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: fairchild,74hc595: Convert to json-schema
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 2, 2021 at 2:20 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Convert the Generic 8-bit shift register Device Tree binding
> documentation to json-schema.
>
> Rename from gpio-74x164 to fairchild,74hc595, as the former refers to
> the Linux driver, and not to a hardware name.
> Add the missing hog description.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Patch applied, thanks!

Bartosz
