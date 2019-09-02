Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 576DFA5532
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 13:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730340AbfIBLow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 07:44:52 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41726 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730148AbfIBLow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 07:44:52 -0400
Received: by mail-lj1-f193.google.com with SMTP id m24so12574398ljg.8
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 04:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UERzkZeHqs2M/DaXeekOuo53YHuA0FbKsrnm1WqRnJo=;
        b=Bb8664rWR73vmxDFygGW0MsZsynoRa9z++TTvHL0SuXoVzYMfj/Jz0OKXNGy3AZxOe
         bACheVETlJ+vkwdDp7c/sILY/z8Jm3+FyLK5t6dA9b8V6+lcQKJoxD/iwXc56X1rF29y
         JToJxak7+eNWbCzS3BYUPx7Gg5a/lLTvHj+MgfBjYfeCqjJu1Dx1f8LABPVfuWEFU+pD
         8K2A9H8FsXsWRzQU81jUsZWlPYVuullfE0Auap/KYr43BmD9MjJl9aoBvd2AvLHTh+qQ
         H5Vm9+j1h+3DsgdLOb+2tREUhF1QYOdIAyRLLRd/f/ghql3X/1fVwLg36iH0FZ/jhbCH
         dN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UERzkZeHqs2M/DaXeekOuo53YHuA0FbKsrnm1WqRnJo=;
        b=sIpA8CVhN7+lSFJUreyrbocmk9YE3hJ9LMjnKodpYapYhCl7OwiO1Wn/+KnFoTIqDg
         GTEaG6qoKhklZKFswvgqZQ3G1cCI1aqVpWq8NBoUcvmk7RiTORD8uVhG6TcuOL9qVUDS
         hiKGgQsQwezDxLmyqwNg76p1W6CrmzuJbIMi4NhfHRgudGadWBut/fijE3R1voK/2t/q
         9VuRJnf1R1tir6TOUvKJP07UUcAdpptoVYIl1ia+dqv5fzX1SvV/Ew0fakUlim+FJ/qC
         u+4wBT1/J+rfI5vLIg7N6zmElGaPCX06cdBe9UsykZ1pwqeMQIT1uZfAorX/s4qdz7rq
         4z/Q==
X-Gm-Message-State: APjAAAVWLRTW0LpsIRXXO9raK9P7wqJcVjnlnMNgUJH/kFElIjOUWLf/
        aUYU4GXxZRL/TCo0kew9YhbTuKZuntms5aXzaIwOlw==
X-Google-Smtp-Source: APXvYqx0FTdNcuHOrjdyKTT9BrHgdteQCIaamg1cZB+w6uVcm8g9XIEMxfuhHSjqkM8WtaAz2hzGe2LeNStwhv0g6eQ=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr16055656lji.37.1567424690216;
 Mon, 02 Sep 2019 04:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190902090633.24239-1-linus.walleij@linaro.org> <20190902093517.GA12946@ulmo>
In-Reply-To: <20190902093517.GA12946@ulmo>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 2 Sep 2019 13:44:38 +0200
Message-ID: <CACRpkdb_X+Eia=mhHrXBcBn0osMtw6bKU6uAS5AV8ASV63qBkg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Sony ACX424AKP
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 2, 2019 at 11:35 AM Thierry Reding <thierry.reding@gmail.com> wrote:

> > +  dsi-command-mode:
> > +     type: boolean
> > +     description:
> > +       If this is specified, the panel will be used in command
> > +       mode instead of video mode.
>
> I'm not sure there's concensus on this one yet. I think so far the
> driver decides which mode to use the panel in. Technically this falls
> into the category of configuration, so it doesn't really belong in the
> DT.

The way we've used DT is for a bit of both hardware description
and configuration I'd say, but I'm no authority on the subject.

> I vaguely recall from discussions I've had on this subject that there's
> usually no reason to do video mode if you can do command mode because
> command mode is more power efficient. This was a long time ago, so I may
> be misremembering. Perhaps you have different information on this?

No idea. I was under the impression that video mode was preferred
but I have no idea why.

Yours,
Linus Walleij
