Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6947D3EE033
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 01:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232654AbhHPXGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 19:06:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232622AbhHPXGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 19:06:24 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2056C061764
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 16:05:51 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z2so37686864lft.1
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 16:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UC3O21ks4vKE7+RYDOtk9IlHGwB78ZQ6lTOzuJdIDYU=;
        b=yAYKkVkxnlwAmL3Qvj2nidxR6exT5PxgbrYW9MCyeiFF8SG/83v3DIJndCYgKixsmx
         /bnYYcuRA0eHenEvSlsYHcg6TEh2o6X0UljriW+bRdskVzpxnDbAgn+WR/1wBMHfB0bi
         Rd9bL4c2FH9qsu1t/f5sXuwrX8x8sRLaW3elSgdlio2I1j1tkRQSTLDghGZHTezgkIK/
         I9bAylySVoxrAoBopy/txj0bt3xkrOhPXBknfUiOz4nBz539l2l/XVFIfQj7FC+hXQ4N
         C5Drpfzdg4lP3Z9M22VYPEoElItzbCsQIrJ+OBSJzK6huFN17AKkDCD5bGUOm+RmzVkO
         sZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UC3O21ks4vKE7+RYDOtk9IlHGwB78ZQ6lTOzuJdIDYU=;
        b=r/9mxDexsYW9IQaK6Od/l5rtXVFi0xc4nAmBjJp9D2U8mWYsfUAQbQYXx0k6F6grT/
         ZeMBwFqsFtCkH9hK6mxEMyXirLKBmS/9Y6qC5bQVRXdVeuIApfyEhwuZ1QkhdqnOPhiW
         zOTTxVgi/EbS4ch2x0pcbecGcXLMQgWUpb0sYHIJbPjMP4jbzEvkI2BhpbZjONKuRpKJ
         3AWDfXMjiaAai2ufzdStBms8u6EnXBR/LS9irPSMsAPJo9ihrDWNBWYJbLDchOEfzCg9
         6qb1TuMhGfdrzI580xnoyyt5GbOoKAuDaEgxipRufDfZP25khNSTgdFss2K5BSp52TV4
         D3LQ==
X-Gm-Message-State: AOAM530XAJSKBjg7NCNKid2R9rUApVpXosoDABsrpOE7VByeVK1DwVy9
        mKtH/UtYDb8yCTZs52Uuuj5zTGN8d7fHDV3eLT7k+w==
X-Google-Smtp-Source: ABdhPJzU0/TChXAcVDzn3cLEs7Ur5r3PsW4On5glrHdI0gAGAEwuW+Be9LaRnlRGffSRt/IpUTqHDGY/OnGO3eSHUTo=
X-Received: by 2002:ac2:562b:: with SMTP id b11mr131619lff.586.1629155150395;
 Mon, 16 Aug 2021 16:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210816011948.1118959-1-jay.xu@rock-chips.com> <CAMpxmJWQ1pDoPZHjg1vvZYhPrY+3BZi3Zuv2P7xKYRDW0dyw8Q@mail.gmail.com>
In-Reply-To: <CAMpxmJWQ1pDoPZHjg1vvZYhPrY+3BZi3Zuv2P7xKYRDW0dyw8Q@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Aug 2021 01:05:39 +0200
Message-ID: <CACRpkdYg3JHPjrA13xY53xcBT1brUsp8pJ_LE50Wx-GRE5m2Ow@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] gpio-rockchip driver
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Jianqun Xu <jay.xu@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 16, 2021 at 9:14 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:

> Linus,
>
> are you going to take the entire series through the pinctrl tree or
> should we split the patches?

Both, haha, just created an immutable branch! :)
Pull it if you need it.

Yours,
Linus Walleij
