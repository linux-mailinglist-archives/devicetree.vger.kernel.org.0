Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B026E13667
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2019 01:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbfECX6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 19:58:11 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:43314 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbfECX6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 19:58:11 -0400
Received: by mail-pl1-f194.google.com with SMTP id n8so3428354plp.10
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 16:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
        b=KeUBh5m7XrqqJoGtrD6Ib6knt5i2ib8XP24NKJEJyGpAwUOaLX/x7UY2/uecLPiyDe
         9yyqjXnlM7Sdn7qZVIKCfp4lijNioihmlVmSLfE2FTzxpqPXWb817IqTmUzMWrglz7sL
         SQh/iyPbwkDdI8Zm3zUAt91zibej3pbV7DGpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
        b=q9mtz1soDteJafSkyrWccVWjWlALiPCPN60lCSz8F6OpUfAlwBJV6RdpXNGUk5gYse
         sustI8znUNiRoeO4PStT9E4ygvANhOgMPAZyjd/sHpkuueaGtfQGyPrTV3PNLtm9fS+s
         u99Xg7VC8BLkQqwpBQ/7w40MsR1taUm06p3I+cmh8YCWNHDHznAVgsQsZd2n90qE3/No
         JgX0SEhoDKosd36N8KYwEJJDamtu8mRbV6mEPgLuZ6a3EAKw1yC8nLfKaN/xYiWeVN7r
         unzFp5EmrcjKvdZ6qSEtNtTSjTIYwowdMp2mitMda1h30+5km8n1C7DjI/nHBKxCxr+q
         BsXg==
X-Gm-Message-State: APjAAAWk0qJOobHF+8ZsVitUAjdSVIIFO3Lc+sHCjArkMsxGvchFFaLL
        xojYa5U2XymcpMYWoRTYNE5p3g==
X-Google-Smtp-Source: APXvYqwCj3vkQhdXIGJu9EpWV0sc4q41te3mEjK0JRvTex2+xk1qSEGE3uWqGCe5EwjRzmV9owoA+A==
X-Received: by 2002:a17:902:7207:: with SMTP id ba7mr13779305plb.329.1556927890867;
        Fri, 03 May 2019 16:58:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id h127sm4092709pgc.31.2019.05.03.16.58.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 May 2019 16:58:10 -0700 (PDT)
Date:   Fri, 3 May 2019 16:58:09 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, briannorris@chromium.org,
        amstan@chromium.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Message-ID: <20190503235809.GD40515@google.com>
References: <20190503234814.230901-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190503234814.230901-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 03, 2019 at 04:48:14PM -0700, Douglas Anderson wrote:
> The rk3288-veyron-mickey device tree overrides the default "i2s" clock
> settings to add the clock for "i2s_clk_out".
> 
> That clock is only present in the bindings downstream Chrome OS 3.14
> tree.  Upstream the i2s port bindings doesn't specify that as a
> possible clock.
> 
> Let's remove it.
> 
> NOTE: for other rk3288-veyron devices this clock is consumed by
> 'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
> need to be consumed by something similar.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> index e852594417b5..f9c4ece3c0d3 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> @@ -142,8 +142,6 @@
>  
>  &i2s {
>  	status = "okay";
> -	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
> -	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
>  };
>  
>  &rk808 {

effectively, 'i2s_clk_out' is not use in the upstream kernel.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
