Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAE5D3FFCD7
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 11:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348709AbhICJQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 05:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233277AbhICJQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 05:16:08 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ACF1C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 02:15:09 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id p38so10608058lfa.0
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 02:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1WeDlp6zQ4PB7oT+RM0GT0Se5QIhGLH/vGupxdxPm3s=;
        b=Xe0UuCzlWTrc6fezIMbTSNemVPzOv1Nn3DSDDhAjt2QUIDM9g02waQwg70Fsx2X/lc
         wktlWQRT6ZouBUEutY2oh3mtZpFbqDA9tHw5Vjst1EycHWFIedZ2iQxYL/g+zkirKj/r
         6PU9x6SnYhdv27IzboXqRjfDaMQYaIIlQQCwuV/SwBR0o46pb5rZKf3F1cCgFTzlJ8Jq
         /oq5zfQX9CdeIP3tZqcbCB1D2cKGo8O1dZxeHmF+eWXTq2yTqYu7nATmqwVVXSWlWopf
         pgTy0DflNyK7VzCGJZfiZJbOf1rIP5NBiMgaU7I6nFMTMQ1ovHwyq/K6W0EGdX/6QBIf
         kHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1WeDlp6zQ4PB7oT+RM0GT0Se5QIhGLH/vGupxdxPm3s=;
        b=RyGNOKjuoXD3kzmh7wBwUVuA1a5Bur0hHf5b+TO3OkSgW1SLuR9njGCpbUufgNyEhS
         zz9/aPPinBoTxxaeJy8vDDQHTd0h2Ku+IU0cMkf5sSS5OKnw5UfzSX9UWzyuQEKjZQ1b
         O8uR5RY6AIVe6htyYuH8cWimfI2aMqOz08sZ2q0ccOqoVc8VTnQWvrShYCl/cRUofdKk
         bOdr1L3IV3UbXzTIPZPUgkQSBl4KpXPQpnm6I/HctzdvQb9Cjz0JLRF07vKsE/k0YmIK
         GYbBQgIO8hEB8iysDH22JWoKqzchQ7N5aQqCMqPo63XSDNytaCaIayt/AwW5idy00rzb
         uxIA==
X-Gm-Message-State: AOAM533KqChVRO25MKGpzyyO7fnv5mnE7OKW73lOUZWXAKpZUDvfS0cd
        ImEb1S0YWrC8KS8Ljx04uOPOSmUGmounR7cF15SnLg==
X-Google-Smtp-Source: ABdhPJzgGU7kz6Hdyn1Y7Zz6J4fJV76pN9mQU3e9Iv+tDEjK/87/x2JidiVlOuUXRt0KORSLexVehP5De0Qd/OSyzh8=
X-Received: by 2002:a05:6512:e99:: with SMTP id bi25mr2027489lfb.486.1630660507399;
 Fri, 03 Sep 2021 02:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210902230442.1515531-1-saravanak@google.com> <20210902230442.1515531-3-saravanak@google.com>
In-Reply-To: <20210902230442.1515531-3-saravanak@google.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 3 Sep 2021 11:14:31 +0200
Message-ID: <CAPDyKFr7z6W3ghoAmTVKHaM8saycbhYyBcDXaTuT_Daz+djx2A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drivers: bus: simple-pm-bus: Add support for
 probing simple bus only devices
To:     Saravana Kannan <saravanak@google.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Android Kernel Team <kernel-team@android.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Sept 2021 at 01:04, Saravana Kannan <saravanak@google.com> wrote:
>
> The OF platform code sets up simple bus only devices (i.e. devices that
> won't match with any other driver) to get probed by the simple-pm-bus to
> keep fw_devlink from blocking probe() or sync_state() [1] callbacks of
> other devices. There's no need to populate the child devices since the
> OF platform code would do that anyway, so return early for these simple
> bus only devices.

This looks like a neat solution to our problem. Although, a few comments below.

>
> [1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> Tested-by: Saravana Kannan <saravanak@google.com>
> ---
>  drivers/bus/simple-pm-bus.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
> index 01a3d0cd08ed..91d52021b7f9 100644
> --- a/drivers/bus/simple-pm-bus.c
> +++ b/drivers/bus/simple-pm-bus.c
> @@ -19,6 +19,13 @@ static int simple_pm_bus_probe(struct platform_device *pdev)
>         const struct of_dev_auxdata *lookup = dev_get_platdata(&pdev->dev);
>         struct device_node *np = pdev->dev.of_node;
>
> +       /*
> +        * These are transparent bus devices (not simple-pm-bus matches) that
> +        * get populated automatically.  So, don't need to do anything more.
> +        */
> +       if (pdev->driver_override)
> +               return 0;

You need the same kind of check in simple_pm_bus_remove(), to avoid
pm_runtime_disable(). At least for consistency.

> +
>         dev_dbg(&pdev->dev, "%s\n", __func__);
>
>         pm_runtime_enable(&pdev->dev);
> --
> 2.33.0.153.gba50c8fa24-goog
>

It also looks like we should flip the order of the patches in the
series, to keep things bisectable.

Kind regards
Uffe
