Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBCB42B99F5
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726593AbgKSRtF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:49:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726480AbgKSRtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:49:05 -0500
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com [IPv6:2607:f8b0:4864:20::b43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EABDC0613D4
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 09:49:05 -0800 (PST)
Received: by mail-yb1-xb43.google.com with SMTP id 10so5981890ybx.9
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 09:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/gTq+acQ60KAWcZEJboG3gUf+FWsoR1aiL5fpoRTT+U=;
        b=nIVatBnHKm8cYLv0FeRi/kS6SeV0o6ND7XBOdqqZ44I6KNrTlqpnY34Dib6Q1cRJsw
         /BYvRCLVlpy/LreGoY8bEcEaNX3XuOSK6pgR9b7/HdeuXjTKyK46YkjDUeHLrluI5WI9
         V4stKADfW2EZzkUYeKPP/Onq51obeEed01YFQwmkgrb4xRzrgvJELSrq+4ZOSUgFnX1R
         4nutgUaXJUH0gP+UxZ/+BrMcPGdobyCa2j1CoolKeVtTBOr8vQcDL9P9kOP1OYUBV2MM
         gW0AyLJ24b2ao8tTdDz1G6v7ULLVEozn3dODPL+FjQV625HAD0k9Spn5SdTPWVxoAaFj
         L28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/gTq+acQ60KAWcZEJboG3gUf+FWsoR1aiL5fpoRTT+U=;
        b=MUtCUZ8YUosQV+tD9XaMAnbI1Xg/ZwJ0+5gV3NOsWy7Iad1JalaygKolngGkkPpxTS
         QCnrYKFm+eO2rLqOtVYI3DyvwcFdG1oOeb1h92famrMF1qSKJCLXk6nv7AY1MVVJbz/n
         dAyKDUSn8Nh8eAWFOn5bIGlfE39lKS+Bv/HVUbVlAT5W0xfkG0n9POXQVB3TH33tAshQ
         erj+B8bzpLAzgy6Fj1JNm23QAY5vXeFlzMun2mxhfAzyBESwgcC/0wogb9VU4oYNm+d7
         AxfplPGjeAcZ2BIKmwkPMMksXUIoX+Pxa1jxFxNiL7tKG6ZymtyBXazsGu9EWAAxirtn
         xXsg==
X-Gm-Message-State: AOAM530UT6Z7CFtLTomWcUpjGXzu7wlylIu/3eX1gGwWKp+unG819mQJ
        vl8wacODEthbLluk/0rFAq+qf6fjF3to1Nngg+fn9A==
X-Google-Smtp-Source: ABdhPJyVuUKq4rKW+Xc0bpKwif0OZaWkPPJBKYFqzoF7Z9hGe1O+rvfUqv7pSRc/axJnKZnQ8MgBMPXdXZaqS29/Cxg=
X-Received: by 2002:a25:b090:: with SMTP id f16mr16135573ybj.466.1605808143984;
 Thu, 19 Nov 2020 09:49:03 -0800 (PST)
MIME-Version: 1.0
References: <20201119110036.19959-1-aisheng.dong@nxp.com> <20201119110036.19959-2-aisheng.dong@nxp.com>
In-Reply-To: <20201119110036.19959-2-aisheng.dong@nxp.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 19 Nov 2020 09:48:28 -0800
Message-ID: <CAGETcx_r7e2q28=obEQ-E79e2DvSHLdEXnB9veM8Bnc9g62C4A@mail.gmail.com>
Subject: Re: [PATCH 2/3] of: property: add debug info for supplier devices
 still unavailable
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Dong Aisheng <dongas86@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 3:18 AM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> It's normal that supplier devices may still unavaiable when parse DT to
> create dependency. e.g. supplier devices populated by drivers.
> Add debug info for this case.
>
> Cc: devicetree@vger.kernel.org
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 408a7b5f06a9..21a854e85234 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1150,6 +1150,8 @@ static int of_link_to_phandle(struct device *dev, struct device_node *sup_np,
>                          * Can't check for cycles or no cycles. So let's try
>                          * again later.
>                          */
> +                       dev_dbg(dev, "Not linking to %pOFP - device may still unavailable\n",
> +                               sup_np);
>                         ret = -EAGAIN;
>                 }
>

All of this is going away[1].
So, Nack.

-Saravana
[1] - https://lore.kernel.org/lkml/20201104232356.4038506-1-saravanak@google.com/
