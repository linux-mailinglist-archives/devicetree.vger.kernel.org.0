Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7D68365E97
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 19:29:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233281AbhDTRaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 13:30:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233225AbhDTRaX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 13:30:23 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57982C06138A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 10:29:52 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id g1-20020a17090adac1b0290150d07f9402so2187671pjx.5
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 10:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oHhObtzZUMwUL0LGBYnUP2PdgBkn1gCTVPbp4qMchG4=;
        b=YScpteqoqCLz2Eu+NTR3fLnysuCLD0EMwVENM3M1OUKcSsSnzqJcHaNC4pfaNry8tw
         RPWH7MrHzN59I3/0KGYanyTHJAzmj2yiQtwZwDgHuRJfBEpZNi3im67N4vuRuH2YMwAh
         wSkveHOydiGEs4NcfcUJdwx69c4CsvCe+uqI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oHhObtzZUMwUL0LGBYnUP2PdgBkn1gCTVPbp4qMchG4=;
        b=gbxbzanD/BDfp+1D7QGps9wi2t/1NoIvziwCuxJedHwOWYAO4alzIh8vxJq7n/OSTY
         hP12asttMvOoj+kX1Lrjcy3kVap5ogiBg6CuDs3iCilZH4CBrYLrwqehlcT1HWGgK0Dc
         Uyqp3g/DFyVb3a36BayxFN8FYQlGRFxG8jiL+D7PuIgjY7Pqjqfz8yClMIOd9McS0ILU
         SJkSBDME19aXyNyMOq3K8QY4+3g3kjtgznlCHC9qUBjdM4nH8RFtxxC/1z7TuPHLwxjL
         vkM193hCTu/IxzKC8lyfUQHs2JLMdqfo67UmqABAwVcmQlabix6Ulpbg495vTWcE5xnw
         Qjug==
X-Gm-Message-State: AOAM533El473+ZqodPFQknHEWhrSPHattqBFR6y71yASWjWBHsP2ceYh
        n8i70lZXGmVzokpxoyQddQRgvQ==
X-Google-Smtp-Source: ABdhPJxEe1OhULxbGxmNL1UjWRteTSkCWq9GXRDRscjlFfY5QPkDI7MHsA7OpxA3teahomRVWUToQg==
X-Received: by 2002:a17:90a:7897:: with SMTP id x23mr6106182pjk.133.1618939791774;
        Tue, 20 Apr 2021 10:29:51 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7a9:7e56:e9c3:13e8])
        by smtp.gmail.com with UTF8SMTPSA id q3sm3025116pja.37.2021.04.20.10.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:29:51 -0700 (PDT)
Date:   Tue, 20 Apr 2021 10:29:50 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [RESEND PATCH V3 4/5] arm64: dts: qcom: pmk8350: Add PMIC
 peripherals for pmk8350
Message-ID: <YH8PjqhZtiNhNv8h@google.com>
References: <1618398783-7834-1-git-send-email-skakit@codeaurora.org>
 <1618398783-7834-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1618398783-7834-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 14, 2021 at 04:43:00PM +0530, satya priya wrote:

> Subject: arm64: dts: qcom: pmk8350: Add PMIC peripherals for pmk8350

nit: why 'PMIC peripherals', are these peripherals somehow specific
to PMICs?

> Add PON, RTC and other PMIC infra modules support for PMK8350.

nit: it seems somewhat arbitrary to specifically mention PON and RTC,
and then treat the ADC and the thermal monitor as 'others'. You could
just spell them out too.

> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/pmk8350.dtsi | 55 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
> index 1530b8f..bbd9fa7 100644
> --- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
> @@ -3,6 +3,12 @@
>   * Copyright (c) 2021, Linaro Limited
>   */
>  
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm8350.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pmr735a.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pmr735b.h>

the includes of the constants for the other PMICs seems to be an
remainder from older vesions, which included nodes for the on die
temperatures of these PMICs.
