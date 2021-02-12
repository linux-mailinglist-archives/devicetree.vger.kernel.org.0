Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9949A319BE1
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 10:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbhBLJaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 04:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbhBLJ37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 04:29:59 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC60C061756
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:29:17 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id a17so10799423ljq.2
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gQdfOeAQ7lpFeaVg0peNbPSNJaBEcknECYCS0PLjCVc=;
        b=h3EbwiWkSrjuE1APlCgTujpVh5LKOkzicShqpts5zAylZcH9uX8BmWPdY+DVQtGGPh
         EkN/7gx+3p99tk9J0Cx+Qp+HkpO9mSsLWXeVwn/mlPRfmOdKhWoWxX4bT6/40YfpA4tr
         W74eZZYC8zzN/CgWplga4RCQD2hWAcL8+GG/RlrI0PkGibBU94c39IAl10ciGdKX20hd
         kIZ/nHitbyxyKUXSpS4jtkErx4bLPBHtQ5U5G3bxmzhtKHlFwPVLbJBcpcIGw+nCjo30
         /q2BnNQbi/MWrqqB+0gTbpcW06KrFkYkTtiwOi5+Kgt/3MfCfwK+SjUdu4lsoosLOAnk
         f6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gQdfOeAQ7lpFeaVg0peNbPSNJaBEcknECYCS0PLjCVc=;
        b=E60De6dfGZcC9g+LA5scQDpY8Hivqbowlullil43ixlHrjbORTPRXJ2KmZBxOHVMzT
         9C3yhnL9lhM4/f6jYQN9qpYUT2GKfLrtouWixqmHA2U3MJq/7zFguCg9OjtSbS6Rv3na
         SD/ACSe11iKhnouC54j+0bts6IDO/dDwoZAYnZ8ZIFXQujE/SAGwF5ac0gQMhTKZM/cb
         XPJg8q1i9syF5KmzlxhlPF3leWwiJieFDJfk/kGM5m0AV+ZoQrZOZss7cXgUyaqxoGgZ
         kNRjEXTxwgtB1zBXVpbNI3dTTJdTOjyugESScj4u7o5a7lrAmWmERwx3sgXa0rZBA7Uo
         dKyA==
X-Gm-Message-State: AOAM5328EOtDNrSWgPW0viCl1Lgm24SlAhfVKXFzOFnPg8ouBP9E23wX
        T/qi/M26dVpGG5XFMGGre8t79q1cm5jsmcalbOv6Zg==
X-Google-Smtp-Source: ABdhPJzFecvZy6+ocBqloea+lkJRPr2kKX82BS8AdTUqtM6sJ1Yd4dbi0ddZTznSRUsOxm6+2H4qMFH/hTOQ9PLqxPg=
X-Received: by 2002:a2e:8e84:: with SMTP id z4mr1130022ljk.467.1613122156038;
 Fri, 12 Feb 2021 01:29:16 -0800 (PST)
MIME-Version: 1.0
References: <20210208135347.18494-1-o.rempel@pengutronix.de> <20210208135347.18494-2-o.rempel@pengutronix.de>
In-Reply-To: <20210208135347.18494-2-o.rempel@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 12 Feb 2021 10:29:04 +0100
Message-ID: <CACRpkda54NjkU=yedgOmghhx0pRN2k352c3AKVETG-_PcpxcUw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: counter: add event-counter binding
To:     Oleksij Rempel <o.rempel@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        William Breathitt Gray <vilhelm.gray@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>,
        Robin van der Gracht <robin@protonic.nl>,
        linux-iio <linux-iio@vger.kernel.org>,
        Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 2:53 PM Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Add binding for the event counter node
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Works for me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

> +required:
> +  - compatible

Ideally it should be "interrupts OR gpios required"
(at least one of them must be present) but I don't know if
we can express that.

Perhaps also write that if both are defined, the interrupt will
take precedence for counting events.

Yours,
Linus Walleij
