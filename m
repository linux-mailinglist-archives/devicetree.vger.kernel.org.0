Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0151D4145C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234615AbhIVKIg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:08:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234496AbhIVKIf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:08:35 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E86EC061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:07:06 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id b65so7374525qkc.13
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ldwAzHK71icxaS5rR16QxFSnDnN4YhUOXCz2aEjnOT4=;
        b=4M33rL8z3OkMOcelDHZhw9uy2kk4RlvK0rdRDJ2fpQimHq5WR7aJ2100ktxc/UFQtK
         hCGc9kXvGckkeCieSz3D8EHn3r409ktSZyCGyikGbKu8NLoiGwHaabybzLdy6pnDDsDp
         JcS3rNEAp21bn1kDWzquehwJYQn28efmM5ErQcOooz2c133WAu6yaBgaKbAyzRCNSVCb
         RcPQ1jiEAgvOj3hfVz+nc79uLW2Pi9VSwRSaskXawoEC4rqoG2BCtAXYLMF0EGnkZKEv
         ynIawupsOc757kURsYaXL/NOXoOdaOJePGnP3CTfx8SwQYV5bMy33i2r5X9sLodTSdL4
         3/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ldwAzHK71icxaS5rR16QxFSnDnN4YhUOXCz2aEjnOT4=;
        b=cgoBxLXDD097An3rRWedeQbNKA90oq6AfoWxCQv7zjJHdy6V4ByerrOZV3exQSLs+I
         Xb9VfwoqfjrtAiUm4VWRRYz3Mfwr4EXdVmM7y9W+OFVlSgRCATY4MqC/5JasXXGdc++O
         d82Uv34x2DIbBO86EIrFwYF4OUhmc2J+qJUqyQZfyAEzxFzJ+Ye+atYO8bMR3+iWeEds
         m7s2JoM8d5Iwad/TWgLSfFhgnBnyFcvMRB3qBuoLGkZABJ7NjagMJ7ves66TEc4N1Vd7
         xrYdaTecMqe5PX8+3lBwC6nu4pdiry4ErZAVlPHHiTrrAFP2+FZoMAu15GDXlwEP7/4Q
         herQ==
X-Gm-Message-State: AOAM531OtNrCapnV+EuctsfIdOrQWqiDEAkFzXve5cYKmqLm4artkfif
        FdYWGuNCg4Imn9s8ARsHnZ5zEb+MFwttzZVFbKot7w==
X-Google-Smtp-Source: ABdhPJwdnSBU4vcm1TpBjGWt9uXXWL37muqZxa9DJnh+8nJN6e4TpZBy/9TsUZJCcwESpxQ6xfYVDnR16UcveMHpRs8=
X-Received: by 2002:a25:12c4:: with SMTP id 187mr7921344ybs.312.1632305225267;
 Wed, 22 Sep 2021 03:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210906083020.6038-1-a-m1@ti.com> <422f7ccd-348b-8023-37db-803339684054@ti.com>
In-Reply-To: <422f7ccd-348b-8023-37db-803339684054@ti.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 22 Sep 2021 12:06:54 +0200
Message-ID: <CAMpxmJV_DJRtuHH7V86WOi+Rd5fZ0uOf=jNBY7XvJa_5f4h9bQ@mail.gmail.com>
Subject: Re: [PATCH RESEND] dt-bindings: gpio: Convert TI TPIC2810 GPIO
 Controller bindings to yaml
To:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Aparna M <a-m1@ti.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Vignesh R <vigneshr@ti.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 8, 2021 at 4:27 PM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
>
>
> On 06/09/2021 11:30, Aparna M wrote:
> > * Convert gpio-tpic2810 bindings to yaml format
> > * Remove outdated gpio-tpic2810 bindings in .txt format
> >
> > Signed-off-by: Aparna M <a-m1@ti.com>
> > ---
> >   .../bindings/gpio/gpio-tpic2810.txt           | 16 --------
> >   .../bindings/gpio/gpio-tpic2810.yaml          | 41 +++++++++++++++++++
> >   2 files changed, 41 insertions(+), 16 deletions(-)
> >   delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-tpic2810.txt
> >   create mode 100644 Documentation/devicetree/bindings/gpio/gpio-tpic2810.yaml
>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
>
> --
> Best regards,
> grygorii

Hi Grigorii,

I'm not sure what this is - I don't have this patch in my inbox and
patchwork seems to have missed that.

Aparna - could you please resend it with me in Cc?

Bart
