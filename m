Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FFA8206838
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2020 01:22:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387720AbgFWXWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jun 2020 19:22:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387568AbgFWXWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jun 2020 19:22:03 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B869C0613ED
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 16:22:03 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id bh7so133742plb.11
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 16:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=CuB8LyKWU3gQTO8KTHP4chGB4nHsVZRexxd8DJQlhT4=;
        b=RdFfuEeBS/PDR2M6Vg8ybL7SXg24nMU7l0WJ9uLHmp+KqG8z51R72UWFRIZNk4J0gs
         f8ko8Zir2Wai94W3DHoFg9LiKrKzWpqC07baNkPSxTXV17wW1Jcqf4E/dJ2x+lqPAEEa
         SiPQhg2ZTI5r3jjpJsH/aQyLLsLMydKItNVxpNoigHSu/oeqGAtd2p7WxxXGb7KzTgGo
         QbTL+yEu2CeEGnmet0gGQO7rCFWnf8UcRoQtCTTBKL4gCFoS9K74THN26JtRRvlBRCpm
         A11gWfspW9Z49mLEnHJCOR5k+YWBYSPdxn5N2j8zuIvLJFakw0WlbF4XvZUUgfiiqYju
         jZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CuB8LyKWU3gQTO8KTHP4chGB4nHsVZRexxd8DJQlhT4=;
        b=juqHfqtTSnZOZnmq+vpX7MWs0LGxkF376JkItj41XSBeaAWKESDOJWenUz61xYTOg0
         BD7NWl8M8m9Hw/DZBCHy0XKydwpJa22HzXBo4POYxE68xbLnKVmbVIJegGGR6K8UYwlw
         9qNFEg5DUrpx6RyHAu8f5fk9DRWfGyFktiKyt24VDMcf2ldLp6fvJF4zt4kgAVZdY9hm
         CPRLALyUydaaUqCQ4O9T9sFCoBLDaCfa/vjDfomu1fdOY4ZyX2y9lW69BDih3H97LqP4
         WxDsA8sXo3gQCSyUpqthTmB9hdlhL0UuX/M14i7SmoZPSwxOQ+EUbkG/wJ8Jr5UtlvYl
         MEUQ==
X-Gm-Message-State: AOAM5316UM9sClnpeuc0dgAjFkubZozIYWD9R4phyh72B10FIDApk05z
        7G79qHvDw9g2vp+naORJKe2iNw==
X-Google-Smtp-Source: ABdhPJx3gGUWnUZGIMU7UpWpvBUlSg0qBFeDf43EeDNUB7n4gVumN6S9IsR3biHWhJK/YAd1aX1H0w==
X-Received: by 2002:a17:90a:1d46:: with SMTP id u6mr26949001pju.146.1592954522548;
        Tue, 23 Jun 2020 16:22:02 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s23sm3357374pju.35.2020.06.23.16.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 16:22:01 -0700 (PDT)
Date:   Tue, 23 Jun 2020 16:19:19 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     skrzynka@konradybcio.pl, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/12] arm64: dts: qcom: msm8994: Add SCM node
Message-ID: <20200623231919.GL128451@builder.lan>
References: <20200623224813.297077-1-konradybcio@gmail.com>
 <20200623224813.297077-7-konradybcio@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200623224813.297077-7-konradybcio@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 23 Jun 15:48 PDT 2020, Konrad Dybcio wrote:

> Signed-off-by: Konrad Dybcio <konradybcio@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8994.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> index f989530ffa90..838ffc0d9c16 100644
> --- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> @@ -142,6 +142,12 @@ core3 {
>  		};
>  	};
>  
> +	firmware {
> +		scm {
> +			compatible = "qcom,scm-msm8992";

Shouldn't this be "qcom,scm-msm8992", "qcom,scm" ?

(Or rather "qcom,scm-msm8994", "qcom,scm")

Regards,
Bjorn

> +		};
> +	};
> +
>  	memory {
>  		device_type = "memory";
>  		/* We expect the bootloader to fill in the reg */
> -- 
> 2.27.0
> 
