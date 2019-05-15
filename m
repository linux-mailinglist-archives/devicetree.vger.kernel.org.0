Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32E1E1F9ED
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 20:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727180AbfEOS0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 14:26:04 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:46585 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726360AbfEOS0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 14:26:04 -0400
Received: by mail-qk1-f195.google.com with SMTP id a132so573110qkb.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jFj8dh23g2idvSds2JYPP7kaIEok3DfVq0OP/6qEkjo=;
        b=BmVVmLPDeF0Gh1VuUSf55t4gi1/UnkJVNXU6pn3dvbTIbUr3GxfpIKRwrHu4flb3CG
         HTKZuXRN+BVDiyYtSqmjpKwFx3Bh00cbTfGG6bOcV9qX9VXnAILuUU7Y1v/0ih30no4w
         8gkbCH9MFy4Y544krG1rk/QqQmJeKFeOLst+j5q9VQIiRN27xsFJ3otCgPv3RlMQEUIZ
         tR1VE2Wrv4wzsnARmTsh7skwOd7YDlTtR5DagCMfo4NlY4yXpzS/Dz30DtgVtj6H4Oec
         JHh86xeV6tAR1Pj/JSY/zUj4zCxOeWJdikDAe/3NxIhDClKJf0UhbFttr3IzSE4bHCBi
         kSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jFj8dh23g2idvSds2JYPP7kaIEok3DfVq0OP/6qEkjo=;
        b=GFmztTlRLcfEfaYvquG144Rh8UzCBODkusaEFer2kch7Mi1cq4YDOzOK34fr0qpWfp
         MXifKVRn4tPj7PeOtFNdrie66E0KcyC3hAcFtnsDz0kpxn9FbUxIhmL2OZEQTuLjISDP
         zbENl251wGoTH7SZEjFTP7NcZ1qNyRxFxANaIAxwcgjdykrQ6tju8e9S3mMs2xdih8Pa
         E0M9g5lCE9W6khWE8FZT/GeiajsgKiLD98pPH2rSPDq2IxMJ/+GMmykLR1PIq3MTuURO
         zUcy7gLd/WgP6sop+7BRzDkvGiQcQx644MekxnBvQqIdX8xM8GMat5BSct+AdLBQ4oFq
         cTYA==
X-Gm-Message-State: APjAAAWClnHGm6xw8auXeJA5uUdKa+VXPAXp2XueeESfb4jUJynQGzUe
        sX1etjcF6Bzr6jKwm/1++q2AnQ==
X-Google-Smtp-Source: APXvYqx5lu/OaoclV0DLdEX2WJ5Nw8BWbL4Pl6MEnRYhtodr67RdCqsBRDyDKxOX/wdl9ukhI9O9Wg==
X-Received: by 2002:a05:620a:3:: with SMTP id j3mr17330454qki.95.1557944763567;
        Wed, 15 May 2019 11:26:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
        by smtp.gmail.com with ESMTPSA id h17sm1372773qkk.13.2019.05.15.11.26.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 May 2019 11:26:03 -0700 (PDT)
Date:   Wed, 15 May 2019 14:26:02 -0400
From:   Sean Paul <sean@poorly.run>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>, mka@chromium.org,
        Sean Paul <seanpaul@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/5] ARM: dts: rockchip: Add HDMI i2c unwedging for
 rk3288-veyron
Message-ID: <20190515182602.GY17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-5-dianders@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-5-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 02, 2019 at 03:53:36PM -0700, Douglas Anderson wrote:
> Veyron uses the builtin i2c controller that's part of dw-hdmi.  Hook
> up the unwedging feature.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index e1bee663d2c5..340b276b6333 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -163,8 +163,9 @@
>  };
>  
>  &hdmi {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "unwedge";
>  	pinctrl-0 = <&hdmi_ddc>;
> +	pinctrl-1 = <&hdmi_ddc_unwedge>;
>  	status = "okay";
>  };
>  
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
