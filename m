Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05CC63B41AB
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 12:29:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231239AbhFYKbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 06:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230461AbhFYKbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 06:31:18 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7567AC061760
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:28:57 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id b64so3880391yba.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=14wuI6yKyELfcLgCV8IVAiK9o/fmJSQo8gtsgXOeJzI=;
        b=bWGykMurb6RX+W4PVlDHS2W4BKtr3ZyXyznXHtV0G4YgyTinOsyoNVxboBqzAzVSTl
         7cPCUdAY60Pgmx7dgf189UxwijFYQvVn9GzgC536HvTmGCflWgfQfwYO6snw5zg1txtI
         QVdKS8xT8lmA7923ENkzJrR+jn0Xo7/IvlrALb+jP6gMAfM6t4lBuHVDqG03L10i4BoY
         Qq40UgEp5/2Jj0orpYT2YSR5o8TvSLDdMn+Bge78HsCzf+9l/HccFZdxvGoDnjYyQgeN
         hjYTcMm0GRpeomGSa5M+l1fkZMLl3tVxeCUTgmKcHvWYkWtT4SFTBk1u5wu8E3ZtH+7Z
         kx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=14wuI6yKyELfcLgCV8IVAiK9o/fmJSQo8gtsgXOeJzI=;
        b=m1UVXAcQ8FxcctEeSspZkUn6/IJOOjli9JhWqxpPK+sebopPZZ+Sr1jiuO5lNmhvbr
         rqGGJ0G330kEs9IS9Z6xlf4gcNcqh/GWj07dwuY181htGr4ywcmAV4WRMYAvxvYtQBN9
         Q63VXHIvP9JGuaeqY+jMyHPxh3gK1gpFtNNT9cYH6lP/1PiU//w19t8lXU55OFPMUrNf
         aYPoOPp4x1Obsms78W/9x5WPZH1RQfnSrjEw1bivBn+Vg0b/Qg6+rU3bkjpwkfdF45WP
         anBYIKpLA+TcU84B5187VJOlLIHlu7EAeMLVraRdeJAP7a27lUAFP4FI6GAy247sQh6G
         B3Hw==
X-Gm-Message-State: AOAM532WNY5oTjJBAfEQnovydU8Bdzk5PeSbq++uk4yqtGQyhZR3i9Op
        npSuUY+mupDm6N/372w5j9HRv2NLJH0WkMo3WYc0pQ==
X-Google-Smtp-Source: ABdhPJxLGYn6FHhb8U4FSlZJuaWGaZ46wEvOMShFxoe4yYOK2OpvnTxdvoG4v9gD/AQ78Zy/IYo+BwJAnYiRiDHpGoU=
X-Received: by 2002:a25:d68e:: with SMTP id n136mr11370454ybg.302.1624616936780;
 Fri, 25 Jun 2021 03:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210603135945.3495-1-olek2@wp.pl>
In-Reply-To: <20210603135945.3495-1-olek2@wp.pl>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Fri, 25 Jun 2021 12:28:46 +0200
Message-ID: <CAMpxmJU1EyOP0ft-KPvSTUPK_C28=YBWRX8J7cT_ne+M1_mpCQ@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: gpio: stp: convert to json-schema
To:     Aleksander Jan Bajkowski <olek2@wp.pl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        John Crispin <john@phrozen.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 3, 2021 at 3:59 PM Aleksander Jan Bajkowski <olek2@wp.pl> wrote:
>
> Convert the Lantiq STP Device Tree binding documentation to json-schema.
> Add the missing pinctrl property to the example. Add missing lantiq,phy3
> and lantiq,phy4 bindings for xRX300 and xRX330 SoCs.
>
> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied, thanks!

Bartosz
