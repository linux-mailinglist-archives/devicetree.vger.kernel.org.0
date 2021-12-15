Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF877475053
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:13:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233196AbhLOBLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbhLOBLE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:11:04 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D403AC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:11:03 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id 47-20020a9d0332000000b005798ac20d72so22926991otv.9
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=UG/0sQ14QZswuwQj/wSz2zNJWW363tA1/CAAMqV/KSA=;
        b=hFvM02v4A9MXdWCWrgbMqrvKFUDeLWyO2iqlRyx5vM0RL7mAk6uwlq/ZnqWUXe87ny
         EIYDsZDUW+RqmrT9vt2bVGWDu0NvRdzmCmSv5JnN7xd6IUUJt+YsCAepFrePo22xx+P0
         lOEU80oDsLXz+fsJ9A/DWMhlAoDdeu+tDtBMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=UG/0sQ14QZswuwQj/wSz2zNJWW363tA1/CAAMqV/KSA=;
        b=tZ0KyhhQkBEoj8hg6B+uk4A/KEabSoLPCCAO6nKKYvZoJDVMeimQQ7aZsxXyJs3PhI
         rCwN8q4zQJgBvKWNKjFI6CXRfObKgrc6/kySfCwPxsY7+imobOFQJyrk10cknb4ldTkB
         WMU2efYaV8Wy2KvO9l8nkJ/mS/ugdzgnShT8NyuTSCPBV4eVB6r/SRkR51yGQigmvq+t
         EPH5TUi7AEfkJV30otzcIPdXFv7Xk4ygQSzyiJW+oJu/upJ+VqK6WnwhfipQa7S1tKBh
         qMJsXkNKINa79pvzxqc1Jmzrn+/1baPAaJK2loAh1ozMmX0ZtybxGDAXXnF+Cww8Sqfs
         WjRg==
X-Gm-Message-State: AOAM531mANjSDHxro1UGGDwg7eSEAYUT2qy2b6wVzplhiwMIGJ2VKIoh
        bb8VxevfpDzciGfAiMk8Ixo9u5icEWZ++q1LwTzL8A==
X-Google-Smtp-Source: ABdhPJwrjFVegSz9z+1kBBjfV+SzIlcW3foCphQ5Y1ythcmPuJ9rM9pivs6NMalSW76de82RQL2FEFDH6bMagtrqQYk=
X-Received: by 2002:a05:6830:30b7:: with SMTP id g23mr6757364ots.159.1639530663267;
 Tue, 14 Dec 2021 17:11:03 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:11:02 +0100
MIME-Version: 1.0
In-Reply-To: <20211210192328.2844060-3-gwendal@chromium.org>
References: <20211210192328.2844060-1-gwendal@chromium.org> <20211210192328.2844060-3-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:11:02 +0100
Message-ID: <CAE-0n503kdCNHUj7KsjS_1kXmDoGZQkAYD3m5-EcS0tgCCX_FQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/5] iio: sx9310: Extract common Semtech sensor logic
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-10 11:23:25)
> Before adding new Semtech sensors, move common logic to all Semtech SAR
> sensor in its own file:
> - interface with IIO subsystem,
> - interrupt management,
> - channel access conrol,
> - event processing.
>
> The change adds a bidirectional interface between sx93xx and sx_common.
>
> The change is quite mechanical, as the impacted functions are moved
> and renamed.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

> diff --git a/drivers/iio/proximity/Kconfig b/drivers/iio/proximity/Kconfig
> index 7c7203ca3ac638..e88fc373c2c903 100644
> --- a/drivers/iio/proximity/Kconfig
> +++ b/drivers/iio/proximity/Kconfig
> @@ -112,11 +112,15 @@ config SRF04
>           To compile this driver as a module, choose M here: the
>           module will be called srf04.
>
> +config SX_COMMON
> +       tristate

It may be useful to have a help here as a comment about what this symbol
is for. Like

	  help
	    Common Semtech proximity sensor code.

> +
>  config SX9310
>         tristate "SX9310/SX9311 Semtech proximity sensor"
>         select IIO_BUFFER
>         select IIO_TRIGGERED_BUFFER
>         select REGMAP_I2C
> +       select SX_COMMON
>         depends on I2C
>         help
>           Say Y here to build a driver for Semtech's SX9310/SX9311 capacitive
