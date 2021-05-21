Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F8238CFAC
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 23:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhEUVQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 17:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbhEUVQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 17:16:57 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D635DC061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 14:15:32 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id c20so21247970qkm.3
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 14:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KU2Ua3SJWwvztXy/qLseNaC6FX7ltF8ZRFgrKedX7pE=;
        b=ZdLakRjz6xM5+M2e25BYKIX+s0E7OpHE4z63Xytk0sRCZ77TzzEhnoNmkSLiWGv9tK
         78O8Iky/dAmIrG24dLVrSSygb40xQveRW7qAHQaDaJU6Tv5RHAQ37qPI2IOJ4vkX7T0z
         k6FFZ/ZlC2HSwFhnHTfhzxGfqLOnq41C92UdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KU2Ua3SJWwvztXy/qLseNaC6FX7ltF8ZRFgrKedX7pE=;
        b=IhCsr1r6TrRFnEZFkBahXQ9ZhYkjQlrf2cRE3Et239q3swXawGLupykhZhdc/NJx88
         t0XiFGE44csshi31qbWkm47B9bEeN8VROfTzz+/TU4QkSpcmAdJSukFjyHpFOwDa4FFb
         rqBBmPN39Lt6OxrsTsFeMQFBaRhX42HIwSeGXX0g7gCNWvv+nulf7jTHo8t/pDYZ0vwV
         /vTt8O9WQXZQ5ngi5MFKC1JJqJ+zQzCG1n2+ZIWY0p4JeLsodCwVd99dPfrNk6i0/+/y
         +bMczv1tncnZLo9pYZ+PXkv7Yl+EzFxqjqbJCRKQk8vD5jOAOnDZbhZu2BzDXJiwdmIt
         kgbg==
X-Gm-Message-State: AOAM532qBUoeIYJS+DTPd/h57C9FIIxCDouyu4sSyWGnKCjWmcpw3kF7
        VdnyltcvWXZjU/fPL3afuvWpRmWxdvuGiA==
X-Google-Smtp-Source: ABdhPJwqAeVSwtH8g3Ct5wrnxqFLR/kcWd9RQ8e/6I3MqITJfYHKfBUsSz3MZGob7YORIk8ug1BIBA==
X-Received: by 2002:a37:6183:: with SMTP id v125mr11926185qkb.49.1621631731800;
        Fri, 21 May 2021 14:15:31 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id v18sm5557249qkv.34.2021.05.21.14.15.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 14:15:31 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id g38so29249401ybi.12
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 14:15:31 -0700 (PDT)
X-Received: by 2002:a25:e007:: with SMTP id x7mr17331874ybg.343.1621631730850;
 Fri, 21 May 2021 14:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210521200529.1991729-1-sujitka@chromium.org> <20210521130511.v1.2.I52f30ddfe62041b7e6c3c362f0ad8f695ac28224@changeid>
In-Reply-To: <20210521130511.v1.2.I52f30ddfe62041b7e6c3c362f0ad8f695ac28224@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 21 May 2021 14:15:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WvUs=WAE0LRN9zK9gXhrtCy9_1B6rVf7PjFLQ2s8vuhg@mail.gmail.com>
Message-ID: <CAD=FV=WvUs=WAE0LRN9zK9gXhrtCy9_1B6rVf7PjFLQ2s8vuhg@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sc7180: trogdor: SD-card GPIO
 pin set bias-pull up
To:     Sujit Kautkar <sujitka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 21, 2021 at 1:06 PM Sujit Kautkar <sujitka@chromium.org> wrote:
>
> Trogdor board does not have external pull-up for cd-gpio. Set this pin
> to internal pull-up for sleep config to avoid frequent regulator toggle
> events.
>
> This change is aligned with Qualcomm's DT change posted at:
> https://patchwork.kernel.org/patch/11675347/
>
> Signed-off-by: Sujit Kautkar <sujitka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index d128a0ed6ad3a..330deb4967ca2 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -1638,7 +1638,7 @@ pinconf-data {
>
>                 pinconf-sd-cd {
>                         pins = "gpio69";
> -                       bias-disable;
> +                       bias-pull-up;

This looks fine to me. Honestly, I would have done it for IDP too. It
really doesn't make any sense that the pull-up would be enabled for
the "on" state but disabled for the "off" state. Either you have an
external pull (in which case you never need the internal one) or you
don't have an external pull (in which case you always need the
internal one).

In any case, this change is correct and improves things. I'll add:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

If you do respin the patch to fix IDP too then you can feel free to
keep my Reviewed-by tag.


-Doug
