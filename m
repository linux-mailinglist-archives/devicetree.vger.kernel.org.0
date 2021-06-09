Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 113833A1984
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 17:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235626AbhFIPaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 11:30:03 -0400
Received: from mail-oi1-f181.google.com ([209.85.167.181]:41569 "EHLO
        mail-oi1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235166AbhFIPaC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 11:30:02 -0400
Received: by mail-oi1-f181.google.com with SMTP id t40so12441881oiw.8
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 08:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=CgJuBx+Pz7LVmI0PFBi6kdiCkymNrSp5mHVaaKI3av4=;
        b=qp/JEUr4X5TDvBZmnLsMFOCFzx+kDAgnp0yl0wdmEKLnFnb51Gt3TOzzNP4ckU5597
         Bloq+oNivWX3ewJOfClJeIlniSuEH0gtIyoq7b5hL4AfyXlJTJ7G0f0nFnro+SODHaP7
         VOCVnNXyku3hnlkXr2eWqBpG6o+wJOwnZUigE1hKQTJulQhqbELy/kPxYwke8TZH3qUr
         DRR79HcTgJBTIL9ZZ+9rbz8YKLzRlgNGbOzknothmu2l5mT4jPbqIPC5gmR8qttCNwx5
         dsO/iw2064VVew1oZ6UC0iCcKmwsrCj61lQFiJzzv1+nuEFALUNdQESnI1DGbWuScuwP
         N5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CgJuBx+Pz7LVmI0PFBi6kdiCkymNrSp5mHVaaKI3av4=;
        b=CKDeGzHysb5KZ81AnDUEsu7u6OXko2id27dSqv9/Ktgla7oO3DmXIRAqvxzjrWMWua
         GmgVES60bYQfeWGzHJB/AP54F4Nobl1j1QeJuMPEKNU/4v15q7vzE2Ske/vkwrVdJOQZ
         gc3fTMFphI7v4XrkQEiA1q4KOc/SFBIvUZ4lGa1/hH/1IbEF+KC0zCHyCeRk2esqi5+Q
         NAiV6TFoIGtXKcTp9rY1yF4DHnpxHv3lSbrQUE1nLzJTyqpaEhORRgDmtEcFoyrjpujq
         wLdxCKcQ+R3Dm1hdaTKE25FisFgD6RXIx+ZMPPjjaGXVZ/4z1RFhd/Xf3cnLjome6l3B
         0hrQ==
X-Gm-Message-State: AOAM5333BMCcURIwg+eLF4/uG5hflC1HJYSwJUv3AmcWtMpF2JZeqR0M
        5KFn3aHHCiGTIF0Po2N7SV1TGg==
X-Google-Smtp-Source: ABdhPJyolhMXyfsnX4dd8qid83wHXAc8WqbuNrQQd9y6dWJSSJ8cdN7AVqfoCd9puEeQt9C6524BxA==
X-Received: by 2002:aca:38c1:: with SMTP id f184mr122667oia.101.1623252427729;
        Wed, 09 Jun 2021 08:27:07 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u26sm49756ote.53.2021.06.09.08.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 08:27:07 -0700 (PDT)
Date:   Wed, 9 Jun 2021 10:27:04 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus W <linus.walleij@linaro.org>, robdclark@chromium.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
        Lyude Paul <lyude@redhat.com>, dri-devel@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 11/11] arm64: dts: qcom: sc7180-trogdor: Move panel
 under the bridge chip
Message-ID: <YMDdyEzCpdttQyNu@builder.lan>
References: <20210607170555.4006050-1-dianders@chromium.org>
 <20210607100234.v9.11.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607100234.v9.11.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 07 Jun 12:05 CDT 2021, Douglas Anderson wrote:

> Putting the panel under the bridge chip (under the aux-bus node)
> allows the panel driver to get access to the DP AUX bus, enabling all
> sorts of fabulous new features.
> 
> While we're at this, get rid of a level of hierarchy for the panel
> node. It doesn't need "ports / port" and can just have a "port" child.
> 
> For Linux, this patch has a hard requirement on the patches adding DP
> AUX bus support to the ti-sn65dsi86 bridge chip driver. See the patch
> ("drm/bridge: ti-sn65dsi86: Add support for the DP AUX bus").
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

In case you want to merge this together with the driver changes
(even though there's no direct need for them to go together):

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> 
> (no changes since v7)
> 
> Changes in v7:
> - Panel now under bridge chip instead of getting a link to ddc-i2c
> 
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 30 ++++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 24d293ef56d7..c76afd857b54 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -260,21 +260,6 @@ max98357a: audio-codec-0 {
>  		#sound-dai-cells = <0>;
>  	};
>  
> -	panel: panel {
> -		/* Compatible will be filled in per-board */
> -		power-supply = <&pp3300_dx_edp>;
> -		backlight = <&backlight>;
> -		hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
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
>  	pwmleds {
>  		compatible = "pwm-leds";
>  		keyboard_backlight: keyboard-backlight {
> @@ -674,6 +659,21 @@ sn65dsi86_out: endpoint {
>  				};
>  			};
>  		};
> +
> +		aux-bus {
> +			panel: panel {
> +				/* Compatible will be filled in per-board */
> +				power-supply = <&pp3300_dx_edp>;
> +				backlight = <&backlight>;
> +				hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
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
> 2.32.0.rc1.229.g3e70b5a671-goog
> 
