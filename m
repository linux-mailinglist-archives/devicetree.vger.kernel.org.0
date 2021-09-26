Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A7B74186A4
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 08:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbhIZGJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Sep 2021 02:09:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbhIZGJc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Sep 2021 02:09:32 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51FEDC061575
        for <devicetree@vger.kernel.org>; Sat, 25 Sep 2021 23:07:57 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id g184so14468601pgc.6
        for <devicetree@vger.kernel.org>; Sat, 25 Sep 2021 23:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IrGPEPvgg2pFaS7mVTGLV712LfHqQe0Dx83upuAH6t0=;
        b=FPjeG/D8k9+REWHk/Zwo9XGB2U/jge6yQmGbhrQAS0/nVvGBLNqKxuHb5Sumzg30i2
         adqep7nejSNhKo+ojcAi5YyEClU1Yd3S1JLImeIhSHVfMPOwzm9PEc1Kx2i1QK5U3Wix
         gciCB0xTNmyvV7Avb6XNQQDOAmV7nvHkjN6vEVW0qKdOki//gvLcqkY2yAt2TRpbcFXl
         JOilGfXHvjq1pvtWMDV2DAR6mEApkprXafgpNImE9FJwzdEvE3+Lro5arBYaAo9tHGDM
         qHKoVFwoMz88x7hMxZTreEoAJZB6PaNEXoub0RCSQ55qWsTt4kBjc+fJqYdsKTas7J/0
         cVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IrGPEPvgg2pFaS7mVTGLV712LfHqQe0Dx83upuAH6t0=;
        b=E7HDFoimot/AjENZHR8RwQh+rPyXScY7lm1WG1hqtRyLaBDBxZ5xKfTpKqOKdADtIE
         ZwYs+5JLRbhTYs8WnFPKRn75NthFwKCrrjFKbM7eR+PfcgkLZGm900IZ+rD4XJWakFRO
         cbc3NWY0zYxvBxJi4Seb/ZAgZQ55HfO9cRRL5q3X9a9ffby9iETqSPaZerFaipXPTR3Z
         FtzQHYjW65bvADEBtBRc9Z9vq9bNASjx3sBAkvveEtRzPsnnbVSVZFWgLBx1NlGk6Rdm
         Sc+cFNQFrobYRYB3Z8pQvmEV0u7tJNYIO4UbaP7n/SzwO9o9G0fz3qjBE5DluM6IeBA1
         EXFw==
X-Gm-Message-State: AOAM533n7wUjNu+IXuNd/0cPMsDWHevjwJxLmBi3wDp+AN351aYQulHa
        OzLHm8cfnYu/Rv+oJ556T4CaVw==
X-Google-Smtp-Source: ABdhPJxh/GCvWcE/Jii9pN0giTvX0nn9T38e9MKiHbsDD1dw7VkLMUEwyPO/vIAlhy0vFZggBdP+Gw==
X-Received: by 2002:a65:4007:: with SMTP id f7mr10960730pgp.251.1632636476816;
        Sat, 25 Sep 2021 23:07:56 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id d19sm13263947pfn.102.2021.09.25.23.07.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Sep 2021 23:07:56 -0700 (PDT)
Date:   Sun, 26 Sep 2021 14:07:50 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: c630: Move panel to aux-bus
Message-ID: <20210926060749.GB9901@dragon>
References: <20210924025255.853906-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210924025255.853906-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 23, 2021 at 09:52:55PM -0500, Bjorn Andersson wrote:
> With the newly introduced aux-bus under the TI SN65DSI86 the panel
> node should be described as a child instead of a standalone node, move
> it there.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 27 +++++++++----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index bd22352b6c7a..4818ca6d820d 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -56,20 +56,6 @@ mode {
>  		};
>  	};
>  
> -	panel {
> -		compatible = "boe,nv133fhm-n61";
> -		no-hpd;
> -		backlight = <&backlight>;

There is some prerequisite change for this patch?  I do not find this
backlight node on v5.15-rc, neither linux-next.

Shawn

> -
> -		ports {
> -			port {
> -				panel_in_edp: endpoint {
> -					remote-endpoint = <&sn65dsi86_out>;
> -				};
> -			};
> -		};
> -	};
> -
>  	/* Reserved memory changes for IPA */
>  	reserved-memory {
>  		wlan_msa_mem: memory@8c400000 {
> @@ -441,6 +427,19 @@ sn65dsi86_out: endpoint {
>  				};
>  			};
>  		};
> +
> +		aux-bus {
> +			panel: panel {
> +				compatible = "boe,nv133fhm-n61";
> +				backlight = <&backlight>;
> +
> +				port {
> +					panel_in_edp: endpoint {
> +						remote-endpoint = <&sn65dsi86_out>;
> +					};
> +				};
> +			};
> +		};
>  	};
>  };
>  
> -- 
> 2.32.0
> 
