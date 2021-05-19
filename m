Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF72A3899D4
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 01:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbhESX3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 19:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhESX3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 19:29:11 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB143C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 16:27:50 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id a2so21583511lfc.9
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JJEJbgRPnMBu2f8ndkVjFvRlGE1bDrbkWqaeWQqS4qg=;
        b=bmyI9zT7D6VywVO0FZYWVtTHDbNrUjUkXVxolFMUdDeEnMBLdC7WLCM/qVZf0gLrkB
         38HpWU/YBYXIVw+em1s8JK6FdLxutwITf2ueNcN/OWecZUzx/KS1Owa3erdFfzZ+6Hav
         wu04qZHdyorG6YixuVe8bV4KC7/lhYqGR6n4nUKIVpoy/qnlZLarxH5nK/Dvrv4Thd9v
         z/rT9lCJaKw1mGQhS78Y3ElvmGHjB0ZaByGVboZCovpnGqQbItihDjlHUJa7jbsm5Kni
         axIuR+6wNTXGZ4a/azftCRWKmCsWltEhdasogAMhU6AALm/SucRIVdDJ3C+/LAocPs+Y
         Gahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JJEJbgRPnMBu2f8ndkVjFvRlGE1bDrbkWqaeWQqS4qg=;
        b=bu20pOMJW9XL/W3JVFkHLg8LRjqMlygKg4LAA9nJlRRsxNwJLl2qqoFwp22VbfWPQ3
         KMGjN6y/3N7+KADM1lvtuz/LeS63S6Me/OlM+hT9OufbBt0WJBHnxTJ7RjWlGJXAEKd6
         H/n51dc05JBRK/HdxQbgXrEVxjsFci04J6gE6iCjY9c/EUKqVSDckhpcmhNBjPrwiZ/M
         A8/WWDfa6aZYbJZ/jia8CtFotlCwQVDBCCaaM9CfjtAHNQH9zvtAXafBvlQICESPFu3Q
         AEzqGr6yG3xMTXUVHF5K6tbSEqpyis+coEgMB/SDT1fCb1px06iGwqoOAku3hptFtfJH
         egQQ==
X-Gm-Message-State: AOAM532gz8DckRMFSYKMkOmqEDfzK9ONWsgGuGRYMhtuRBOBvjN5Kf39
        Z9a5KhqwhlEYjD0+FdzBKl7ViuBbLAgB0bysnux+BQ==
X-Google-Smtp-Source: ABdhPJz/cPPzI7GxXKzBS+Gom60rdG2Gq8Pyt5scUUUDZl7Es1gZjna7v+VwnSx19MRL4DcKqfOm3IcmAfkZkzaM/VM=
X-Received: by 2002:a05:6512:1185:: with SMTP id g5mr584031lfr.586.1621466869121;
 Wed, 19 May 2021 16:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210508142000.85116-1-kettenis@openbsd.org> <20210508142000.85116-2-kettenis@openbsd.org>
 <20210510141955.GA58072@robh.at.kernel.org> <5612be5a12568600@bloch.sibelius.xs4all.nl>
In-Reply-To: <5612be5a12568600@bloch.sibelius.xs4all.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 20 May 2021 01:27:37 +0200
Message-ID: <CACRpkdYPsL+5ZN3WOovwqkGydaGoJZCskwMkT6rhZ1BYpYVgrw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: Add DT bindings for apple,pinctrl
To:     Mark Kettenis <mark.kettenis@xs4all.nl>
Cc:     Rob Herring <robh@kernel.org>, kettenis@openbsd.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hector Martin <marcan@marcan.st>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 7:06 PM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
> > From: Rob Herring <robh@kernel.org>

> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: apple,t8103-pinctrl
> > > +      - const: apple,pinctrl
> >
> > A genericish fallback is maybe questionable for pinctrl. That's not
> > often the same from one SoC to the next.
>
> Krzysztof raised a similar point.  It seems that Apple isn't in the
> habit of changing this aspect of their SoCs.

Rob what's your stance on this? Does it need to be changed?
Else I'll apply the patch.

Yours,
Linus Walleij
