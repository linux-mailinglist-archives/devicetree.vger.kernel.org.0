Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6A92026EA
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2020 23:40:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729042AbgFTVk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Jun 2020 17:40:28 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:35429 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728942AbgFTVk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Jun 2020 17:40:27 -0400
Received: by mail-lj1-f195.google.com with SMTP id q19so15340657lji.2
        for <devicetree@vger.kernel.org>; Sat, 20 Jun 2020 14:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qDGZJrN+zxg9kIEWpfiOHaUMYjaY018dhr2ry8AoDSo=;
        b=CzdGRb37kVsYau41jwtDVNhfyYBgY3d0+7sNN0OqWFwk0qEouWLrm4IA+xwhjI1UQt
         QGiP+tYVl4+4RNuPXkMCSXXvX+Zp3DCziRbHJrxIOY18WRXSmZRnMQ6j93S/oYkoF4US
         c0Qsv1YND4xPcwn5Kb8kcQd8rZYZir9ce6KCsivlD069ARvPvTBajld3H9xjfI1FCllX
         3ZXAgdc/3xu2k/pKzKhzR6NT6Rd/oPi4UlH+aacp/fM2yx7nWO5+wvdHGY5cRyRmNa8I
         /yZkt+FBE7pWfHh2aBeORIAx0yu0x3x3cN5ULDhChdnMWRATlQk8xOPvG1v6bjD9WlLB
         tmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qDGZJrN+zxg9kIEWpfiOHaUMYjaY018dhr2ry8AoDSo=;
        b=sFWQAX3yrNImy+6WgNBB5x8hlXVOniInR9s4IP403Oqr2MV4IIvz94UP+NZ9T0GjPN
         OvD6ox0mr45mZgW1/LPjKg3jnYQa7hlRe+6bqckqOH578UuqPgfNuY0CYVDcRv0S4MGO
         ZgSUjo6lgTwgAK7cLTZkO6vmu7hXwt4Nb9w54Azmd+SoI1PWB9eK3lVCOtHR+6H8xCok
         fiKNbZzslCiCYov6+XRibYXM2a3Wo5mCjicmjhkb16tBb66jioR+kHcnTs9I/6zvy3OP
         TBR2DJy1DnyK3Ft9xnRExcORmpFk26308iDpZdFt/1myE7y78sowNTBGbTZoO4U6aid8
         NLLw==
X-Gm-Message-State: AOAM533Kllp6nFhZr3gL1Oo9C1ysssgUQjIJUiViltd6Ji/qyC47W1Ft
        PG583Ea269c+awUxawbuPtBRPRNO/mH1tqCVM4NJmg==
X-Google-Smtp-Source: ABdhPJxAa1VzCVlzrh0h7Fjw2j+ZkUnwO3O+sZYxyg7hx+dcgKgbw8afJXNyQtB4JkQJJZ827jwqG3BbejMYNSUh+Ac=
X-Received: by 2002:a2e:7303:: with SMTP id o3mr5249034ljc.100.1592689165295;
 Sat, 20 Jun 2020 14:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223353.993567-1-lkundrak@v3.sk> <20200616223353.993567-2-lkundrak@v3.sk>
In-Reply-To: <20200616223353.993567-2-lkundrak@v3.sk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 20 Jun 2020 23:39:14 +0200
Message-ID: <CACRpkdZ4_cRPMyA6=-qqWX-GpJ0DQXdj=EbFEkoFqi8w6AahXg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: gpio: Convert mrvl-gpio to json-schema
To:     Lubomir Rintel <lkundrak@v3.sk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <maz@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-i2c <linux-i2c@vger.kernel.org>, linux-rtc@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 17, 2020 at 12:33 AM Lubomir Rintel <lkundrak@v3.sk> wrote:

> This converts the mrvl-gpio binding to DT schema format using json-schema.

This looks about right to me:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I expect Rob will apply it when he's happy with it, else poke me once
he ACKs it.

Yours,
Linus Walleij
