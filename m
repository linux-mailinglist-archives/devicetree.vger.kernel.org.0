Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03A8D399016
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 18:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbhFBQjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 12:39:10 -0400
Received: from mail-ua1-f43.google.com ([209.85.222.43]:42852 "EHLO
        mail-ua1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230015AbhFBQjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 12:39:04 -0400
Received: by mail-ua1-f43.google.com with SMTP id w5so1625027uaq.9
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 09:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AvcpwHNjB8ShVBsQrITXz+J70Fl4tyXMM88UbOl1/HI=;
        b=XU2T5eauZCuFUWc/+36xInqi+boOT7Be2v8/TeWqWW+ceG90g/W7o+Oyt1sAlBRU4o
         DE/pLgcnvjDWfi4fTe1HAGvmNm5TxSdtHgYsnTDKYhO+g4tZlFnBFHeTUNGFRiyH/1T9
         NaV2yb/N4MNj/qRiJEjkHQ1Uy+qqltCsF8q/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AvcpwHNjB8ShVBsQrITXz+J70Fl4tyXMM88UbOl1/HI=;
        b=OwBOyWA6lMymbWk0hfubUl+5QikmrQRVekN/YCf5U7Wjuw1FwT5hGiMqQZgA5SzWWZ
         3I6CtEGpvpgGF0EtofrKrZ7canikKuv3qi++N46ZyD1zA/w6tjb++B9FZp1Invw286oN
         WarIoBCOs8PAxzcVFn6U90WQxSFkf0aE9DPkhuOpysVT9LOGtqfqUahPew9y8C97F1QZ
         bsiO3L2sh4AcEplMfieMW/9cT0+xJJb2eFMm/NC8LlVf4/mOFGl0eXLgX4yoDKBAFfac
         L6Gb0EiLmhPqkKuvE3M7fgnC9jiROAyyK73n/6xjH4KB17VrEamc3dPNKyI+tvs6+a5t
         oC+A==
X-Gm-Message-State: AOAM532HRF0m3nJcuOdsyNkDGhFtz/BIa0H51Q7iGu/4ZONMWEg3rjZj
        liP+9WJ03+8Sro1i1o2FJ81LOnXV97lQAA==
X-Google-Smtp-Source: ABdhPJxy4JVzkQRcXdfItuCoLOPVuk7OIDwwfn4GQbwoBNHQugbakAI2rbltqJL2XvNCR92xKNiy+w==
X-Received: by 2002:a1f:e741:: with SMTP id e62mr23421469vkh.0.1622651780542;
        Wed, 02 Jun 2021 09:36:20 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id n77sm76011vke.24.2021.06.02.09.36.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 09:36:19 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id f15so1407078vsq.12
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 09:36:19 -0700 (PDT)
X-Received: by 2002:a05:6102:227c:: with SMTP id v28mr25195946vsd.52.1622651779216;
 Wed, 02 Jun 2021 09:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210602090525.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
In-Reply-To: <20210602090525.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Jun 2021 09:36:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XcoLLCn+H6h9cX+qPjoueVFgK8BssvUXQ6WjVAapRyMg@mail.gmail.com>
Message-ID: <CAD=FV=XcoLLCn+H6h9cX+qPjoueVFgK8BssvUXQ6WjVAapRyMg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: pm6150: Add thermal zone for PMIC
 on-die temperature
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 2, 2021 at 9:06 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add a thermal zone for the pm6150 on-die temperature. The system should
> try to shut down orderly when the temperature reaches 95degC, otherwise
> the PMIC will power off at 115degC.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/pm6150.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/pm6150.dtsi b/arch/arm64/boot/dts/qcom/pm6150.dtsi
> index 8ab4f1f78bbf..de7fb129f739 100644
> --- a/arch/arm64/boot/dts/qcom/pm6150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm6150.dtsi
> @@ -7,6 +7,30 @@
>  #include <dt-bindings/spmi/spmi.h>
>  #include <dt-bindings/thermal/thermal.h>
>
> +/ {
> +       thermal-zones {
> +               pm6150_thermal: pm6150-thermal {
> +                       polling-delay-passive = <100>;
> +                       polling-delay = <0>;
> +                       thermal-sensors = <&pm6150_temp>;
> +
> +                       trips {
> +                               pm6150_trip0: trip0 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <0>;
> +                                       type = "passive";
> +                               };
> +
> +                               pm6150_crit: pm6150-crit {

Nit that the node names are not symmetric. One is "trip0" and the
other is "pm6510-crit". Seems like you can remove the "pm6150-" prefix
from this one (but keep it in the label?)

> +                                       temperature = <115000>;
> +                                       hysteresis = <0>;
> +                                       type = "critical";
> +                               };
> +                       };
> +               };

Correct me if I'm misunderstanding, but I don't think that the
description of this patch matches the contents. You're saying that the
PMIC will power itself off at 115C and that we want to do an orderly
shutdown _before_ the PMIC powers off. Doesn't that mean that the
"critical" trip needs to be at some temperature _lower_ than 115C? As
I remember it the system performs an orderly shutdown starting when it
sees the critical temperature.

-Doug
