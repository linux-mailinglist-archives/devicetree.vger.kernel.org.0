Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBE34458752
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 01:05:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231859AbhKVAIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 19:08:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231716AbhKVAIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 19:08:11 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C53C061748
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 16:05:05 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id be32so34311400oib.11
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 16:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DSsEi2JoPWNRsH+hXvNqq1V/qVr/q0+A0UFabbDDLto=;
        b=GvqMwIt3hzADRIbBw9sq7ul+0eBsJlaAjYELSGxthJO2DKk0y528RIReyszb3BEkMP
         of0M3QjyTSWJpUbkPJxQQLj1IwXhohXDJ3VQXn8HhrlLE3aN4BDPejFkctCYpcYn8b7f
         G0CLAlfc5QnvF3BgrkjEgKFJvY8SgMnXFFWroq73TGF3fHJwdbfyzmI4gG+2/KfMU2CF
         1gVeZ7Uxr1B4sBF+2nYeeN1xXpcR+pgncniNPZUSHXWwIpgim8xewrzmp0P9/tUfoDr5
         PyUAOJyKrXAG6Rn05BzMJ/6HYHHryCQw6B+glLEv+MH3Vw/5FHWvyQW/OVs5qtmIGpB3
         lpxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DSsEi2JoPWNRsH+hXvNqq1V/qVr/q0+A0UFabbDDLto=;
        b=nbTOzLd5Kcw/qr1CmKJG3/9o9qGdQ6T4XomwB7N6xRPPU8VKCVO5rYZLRabbg8ubQh
         7kRI/BXgxFckEGwsJpFxRSA0v8IlR/57KomhLfq7qoTtH4rD9XwQvMy3H7JAgvBinBoh
         Ia6JyrV/0X6YS0/N4l81QyISQkgh7E4vVgXcu/Ggth1eRzO0LQbhMbj1qLyxslaXkU6Q
         kwjBTnojVUf8uYiHiDdVGohSr7sC9IYZDkMwB6xiyZ/BjHoAvT/cPecrQzPSxy+JD7oO
         7y1JV3V7MKhFazZDOIx3c0wbQmuYYqhn1dmN7YieSeEh+oAGLV189gLpjPwiepyIDhjo
         1Qbw==
X-Gm-Message-State: AOAM531Af1YaXdr+iSzYOPcfI+CfI0bPqm888A1kYXhGVYgacLb9oRhI
        fm9K4azGwPWqqpr4T8J3qJcFt7kjr/mrVanFC1gEEQ==
X-Google-Smtp-Source: ABdhPJwriH0rHPvHd39ZEC3C07PFdaNt+cM28lWdIEDa67VEiT+QY8HmOfo/1AgO8PfHOKCNyMtlrEuvLkJLgOXK+Sw=
X-Received: by 2002:a05:6808:60e:: with SMTP id y14mr17423178oih.162.1637539504647;
 Sun, 21 Nov 2021 16:05:04 -0800 (PST)
MIME-Version: 1.0
References: <20210923065500.2284347-1-daniel@0x0f.com> <CAFr9PXmPE_vRcHgPkJp3o=d5HnAV52TFuBe-2hf=hKY8y2=BhA@mail.gmail.com>
In-Reply-To: <CAFr9PXmPE_vRcHgPkJp3o=d5HnAV52TFuBe-2hf=hKY8y2=BhA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Nov 2021 01:04:52 +0100
Message-ID: <CACRpkda9j=dQKp+W0iE0xhbuBWAibXHovgdEVkyXHevRnnRtsg@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] gpio: msc313: Add gpio support for ssd20xd
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        pavel@ucw.cz, DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-leds@vger.kernel.org, Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 19, 2021 at 2:12 PM Daniel Palmer <daniel@0x0f.com> wrote:
> On Thu, 23 Sept 2021 at 15:55, Daniel Palmer <daniel@0x0f.com> wrote:
>
> > Daniel Palmer (11):
> >   dt-bindings: gpio: msc313: Add compatible for ssd20xd
> >   dt-bindings: gpio: msc313: Add offsets for ssd20xd
> >   gpio: msc313: Code clean ups
> >   gpio: msc313: Add support for SSD201 and SSD202D
>
> Would it be possible to get some comment on these commits and/or get
> them picked up?
> We (Romain and I) have a few bits that are blocked on this.

I think it is usually easier for the maintainers if you don't include
the DTS changes in the series. Then we can just apply the whole
series, no need to drop the stuff in the tail.
The DT bindings sometimes need some slack so the DT people
have time to look at them as well.

Yours,
Linus Walleij
