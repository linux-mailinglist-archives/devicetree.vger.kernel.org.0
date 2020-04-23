Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F3151B525C
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2020 04:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726479AbgDWCXx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Apr 2020 22:23:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726475AbgDWCXx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Apr 2020 22:23:53 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A72C03C1AB
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 19:23:52 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id c21so910819plz.4
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 19:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eqFUKGkgi/7711Wd38R/oVpsnZqk153pOxex7VFlhKU=;
        b=Gve4+ZOSbBsFD7X0/46iWM+Blcp+bEInJawIuG4DDAMMxWQXY8av0kd1/fY24V6zdT
         ELy8Vh8MTreWostHMbb8auwZwm66HdtXBA9EKl7wRW+v112NjfOXIZ2ArntK/RJVlh1Z
         uhalFEqrBscwkRCDYvmvaRkXL5CoGQuM1dCeRK6LXsqoSA2yJZYAvr5JGWPkH09U1AsT
         mkavbEi4lPMDXu+O2riYe908bm3/sPNsuq+8gmWdMhYSB0QRf6rHMHyRdBKqrmhEqiE7
         jXTP4pjwsGNm9HnsQTCJVv/ExMF1I5EFbjDGZYM2iHNqbh01gwuoll9vNLavKQkwmPyT
         8fPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eqFUKGkgi/7711Wd38R/oVpsnZqk153pOxex7VFlhKU=;
        b=FkrLw5b2iZ4vgJAqVfDaMfuwHuJ61LcO5hgHSRTQV0F01wi7rArjkkAZC47tsS+iQL
         gwGi9DsjcNi0w7uSuBjeFuqMFAPw+j5TGBbRd2t8/YctMjTiJpLjs4FZaKHlytnQ/wB3
         vlpTFOmrJgzgRWSgyG0b0mvJJxWPgvP1aR06sy2xFMWwBJTzaPVhlivC/s6nUqIpZJSj
         5ywMvhQY5461ajTjT/j/b/fPy4xcNBcmuXafKgdrRJRcXg4c9K9uT21aHPNBseBYw9Ck
         q0Siro0zxov4Vh6hT9aTFvjWgdsZNHyp+50h1KXxXGhmcvd6wmuhuK0F3GAHCQPLQZ/c
         nTjw==
X-Gm-Message-State: AGi0PubHC3Isws9Ba+1H4ztxzF89p2dJjtCiaCZUWF25wYYGjXjx21yC
        AgGi4dxomoDsOyYClPAWyYllESYM9vg=
X-Google-Smtp-Source: APiQypK1wUBVfNamJOHbWROPygChJ+zXEaD4hi3JQ65lkp1FVEmTMJ3Mzo7b2yTja1eNX2IbCHqx5A==
X-Received: by 2002:a17:902:76c4:: with SMTP id j4mr1627192plt.177.1587608631391;
        Wed, 22 Apr 2020 19:23:51 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id x26sm854034pfo.218.2020.04.22.19.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 19:23:50 -0700 (PDT)
Date:   Wed, 22 Apr 2020 19:24:17 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: qcom: c630: fix asm dai setup
Message-ID: <20200423022417.GT20625@builder.lan>
References: <20200422102044.8995-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200422102044.8995-1-srinivas.kandagatla@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 22 Apr 03:20 PDT 2020, Srinivas Kandagatla wrote:

> "direction" property is only valid for asm compressed dais,
> so remove it for non compressed dais
> 
> Fixes: 45021d35fcb2 ("arm64: dts: qcom: c630: Enable audio support")
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index 3b617a75fafa..51a670ad15b2 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -359,12 +359,10 @@
>  &q6asmdai {
>  	dai@0 {
>  		reg = <0>;
> -		direction = <2>;
>  	};
>  
>  	dai@1 {
>  		reg = <1>;
> -		direction = <1>;
>  	};
>  };
>  
> -- 
> 2.21.0
> 
