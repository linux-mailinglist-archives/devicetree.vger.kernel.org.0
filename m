Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF9A3974BC
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 15:57:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234017AbhFAN7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 09:59:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233797AbhFAN7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 09:59:24 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C610C061756
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 06:57:43 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id d25so15397298ioe.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 06:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4nE/qCkrTv5LOleZj9XggFjxi8FS3vtiNauKvN5aI+Q=;
        b=SgUqi4P2JobZlL4RXHNQszk4btmAppREYqphxBTb4Bz9vEiD33x7qChYZ6ixD2UCZ9
         KQoCLtCBm5NWfrJ8m91N/qCSApyUvUMxPhRz5UtOAea9QdbEVN9zz5UR7zMLyN7ONQNl
         ekWXteti0IDFVuC1vSZzx72EphyJ//eA7yLwwPpL2N7oE+LMPxBJ9UdKEZtc3BiyCo7g
         1UeQFnZkm8Zox+kp0H5u0E7Y/uAi4EfFaKo8ReBmI1OU8yvSR193SNPitx5NoxO00CTI
         UisilPu8P+JPbg8+F+R9VC3yGePVq8rBRx4HI8NnlfUvM74SirFKaqRNmoDDxIr8M09x
         i/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4nE/qCkrTv5LOleZj9XggFjxi8FS3vtiNauKvN5aI+Q=;
        b=JiQwp0IEdeHpCrq+ePRNj9UHXuie6n78q6hk8NuNLFOcId/RONHiS7G+ZXTNmaknV+
         r7litAedspZepG07Ue7mr06dSJjYbXuyIfMMEF9Vig7hR1GdsgJ/M9+nV1OYUJW4BJuV
         z0CUwsbENNizFVneSbWWS6k8Cj6V7to3AsU7a/LW04xSEX8XgCAIMllY7PJWuqocMpVI
         7m+eg5XPSTabXJtl5Yq9n0FVSDBkjXqEVKN9y+gqHpsWtCKeevdyIoa1U0j4Q7MoDakO
         MG7zG7nij6birbJAgHWGEm7rW+FQPqJKBoRrU3Hh+3CVt8fBxZ90Wymyh+2gD83KUliA
         4alA==
X-Gm-Message-State: AOAM530fTV6IXfgxRN8GJB+Q6lyqqi0lLzgMnqbOwZKUvBd5dtawru5M
        8I8xWCPGH76qJn99xiLBCChz8LAx2FyU8DF4Z1t21g==
X-Google-Smtp-Source: ABdhPJyPTSaApD2DegKhOQDmDfQ8vVHrnYUqV1J1I78/BVT/LMq1bBPwYo8ibnjCL7cBLNmkfaXuQgb45n6DnNBDqYI=
X-Received: by 2002:a05:6602:134c:: with SMTP id i12mr21559976iov.175.1622555862697;
 Tue, 01 Jun 2021 06:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210524120539.3267145-1-robert.marko@sartura.hr>
 <20210524120539.3267145-3-robert.marko@sartura.hr> <20210524230940.GA1350504@robh.at.kernel.org>
 <20210525074649.GC4005783@dell> <CA+HBbNFxCKbitVctbUisuZXJWxaZp0cswNNNTgD0UxQZ1smJbg@mail.gmail.com>
 <20210526075255.GG4005783@dell> <CA+HBbNGSH9AvRo0Hwa5pWea94u0LwJt=Kj7gWjSAV9fS5VFr0A@mail.gmail.com>
 <20210601081933.GU543307@dell> <50ced58164999f51a8c8b9c8dc01468e@walle.cc>
In-Reply-To: <50ced58164999f51a8c8b9c8dc01468e@walle.cc>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 1 Jun 2021 15:57:32 +0200
Message-ID: <CA+HBbNHnBsbfTiR6qj17HJ97NLi74_M5BWDEtmw1F+Bj8cfytQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: mfd: Add Delta TN48M CPLD drivers bindings
To:     Michael Walle <michael@walle.cc>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luka Perkov <luka.perkov@sartura.hr>, jmp@epiphyte.org,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 1, 2021 at 3:54 PM Michael Walle <michael@walle.cc> wrote:
>
> Am 2021-06-01 10:19, schrieb Lee Jones:
> > Why do you require one single Regmap anyway?  Are they register banks
> > not neatly separated on a per-function basis?
>
> AFAIK you can only have one I2C device driver per device, hence the
> simple-mfd-i2c.
>
> -michael

That is my understanding as well.

Regards,
Robert


-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
