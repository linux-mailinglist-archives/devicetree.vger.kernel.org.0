Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24F8F25C66D
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 18:14:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728409AbgICQOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 12:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728382AbgICQOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 12:14:37 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D93B0C061246
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 09:14:36 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id s2so1699488pjr.4
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 09:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=IsD9pQKZPAf+IInlxTslOwkdbkGd1Z7GSC5a3hWMJ1k=;
        b=IO1+uIGODbKjaOKc5uU1+U7gWNlc2ghOOLQU8YeZCqKpGBaFOkvD3rnqKhug0nm3KT
         tgJsWZWaAXxMpVxw0VVaqdHLC8355D0S0LAUdJRAjS9Rt8iqoNiETKwxe+OFyKQSUg4R
         2zPqPJuUd22NHI15VKkHy4b0wjwTtMtQXpUPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IsD9pQKZPAf+IInlxTslOwkdbkGd1Z7GSC5a3hWMJ1k=;
        b=AKf1v+NeWj3kiR+OwpM37QaLzaSQGQwUxbKdMv6gNLUKSq1q+tLkXxf//MdEDAatO9
         o1nAZdP1xI2AaO4g/4hBG9TYXezgDIkkdlJBg6t7fg71Fw3AfhN9pi2p7KDN9IC1SEzg
         2iNQsNNuGMF90j472fw4P+N6XjyrM/0TGjrjzOi5wYJbetbzg5s/rB9M0yX3xnJ/pbKk
         CvuRF+yN3sEORR5uQsMFyqx7YDNnm1QbKxbbs9TSxg8PWllMa+/Gh5wOjUdGcr2qau6R
         1RrwhWiR73qUrHRHR6ztqDk/7tEK5pGVT+051eJ21ktckTVNxrJtJq2Lqso+RnreseXW
         6Kig==
X-Gm-Message-State: AOAM531HB29fiH523QHGKuikGfM7zUdts0e0rWcu+E9hxhZcMCV3zJRA
        J+4AkI2vm0kaga3RGqZ4wCGaDA==
X-Google-Smtp-Source: ABdhPJybv0V+cemJRHv4A4sX1C8HWoEeYdJCHcZjzQnD8gWUND3Gj5i19v29YJxo2Yow19wJnb71dA==
X-Received: by 2002:a17:90b:796:: with SMTP id l22mr3969409pjz.199.1599149676230;
        Thu, 03 Sep 2020 09:14:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id x3sm3703659pfo.95.2020.09.03.09.14.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 09:14:35 -0700 (PDT)
Date:   Thu, 3 Sep 2020 09:14:34 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        gregkh@linuxfoundation.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, akashast@codeaurora.org,
        rojay@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V4 2/4] arm64: dts: qcom: sc7180: Improve the pin config
 settings for CTS and TX
Message-ID: <20200903161434.GI3419728@google.com>
References: <1599145498-20707-1-git-send-email-skakit@codeaurora.org>
 <1599145498-20707-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1599145498-20707-3-git-send-email-skakit@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 03, 2020 at 08:34:56PM +0530, satya priya wrote:
> Configure no-pull for CTS, as this is driven by BT do not specify any pull
> in order to not conflict with BT pulls.
> 
> Remove output-high from CTS and TX as this is not really required. During
> bringup to fix transfer failures this was added to match with console uart
> settings. Probably some boot loader config was missing then. As it is
> working fine now, remove it.

You might want to revisit the 'output-high' settings for the IDP console
uart too. I still think this shouldn't do anything on an input pin that
isn't configured as GPIO. Specifically this combination seems silly:

  bias-pull-down;
  output-high;

> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Akash Asthana <akashast@codeaurora.org>
> ---
> Changes in V4:
>  - This is newly added in V4 to separate the improvements in pin settings
>    and wakeup related changes.
> 
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index d8b5507..cecac3e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -474,32 +474,30 @@
>  &qup_uart3_default {
>  	pinconf-cts {
>  		/*
> -		 * Configure a pull-down on 38 (CTS) to match the pull of
> -		 * the Bluetooth module.
> +		 * Configure no-pull on CTS. As this is driven by BT, do not
> +		 * specify any pull in order to not conflict with BT pulls.
>  		 */
>  		pins = "gpio38";
> -		bias-pull-down;
> -		output-high;
> +		bias-disable;
>  	};
>  
>  	pinconf-rts {
> -		/* We'll drive 39 (RTS), so no pull */
> +		/* We'll drive RTS, so no pull */
>  		pins = "gpio39";
>  		drive-strength = <2>;
>  		bias-disable;
>  	};
>  
>  	pinconf-tx {
> -		/* We'll drive 40 (TX), so no pull */
> +		/* We'll drive TX, so no pull */
>  		pins = "gpio40";
>  		drive-strength = <2>;
>  		bias-disable;
> -		output-high;
>  	};
>  
>  	pinconf-rx {
>  		/*
> -		 * Configure a pull-up on 41 (RX). This is needed to avoid
> +		 * Configure a pull-up on RX. This is needed to avoid
>  		 * garbage data when the TX pin of the Bluetooth module is
>  		 * in tri-state (module powered off or not driving the
>  		 * signal yet).

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
