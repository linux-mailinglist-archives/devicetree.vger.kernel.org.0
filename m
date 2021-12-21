Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E38147C186
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 15:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbhLUOb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 09:31:27 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:41475 "EHLO
        mail-qk1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238479AbhLUOb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 09:31:26 -0500
Received: by mail-qk1-f171.google.com with SMTP id t83so12663089qke.8
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 06:31:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZCiw0bZKYIpEoDjhVNnDiHVYSk1x/IQUJgn5e6PHxuI=;
        b=Za1BET45FVHEyShSb7nfWbxYg1CF+eg+PvID59fzTEzeGSk1DnO47vINQo1Ixu9Qjp
         4N+gVDAqb88g7w93Ay3pKBVwGeBPAXfGcV2/o6cHBvrrJTBFPF3WQpoHitj2z1rRhog0
         WcF63UylJkAhECxDwn0Yuxt5Kr8Obyp4G7lgsigGnWWww36nc0cBh7QSN06kns/nOnFD
         WEABD1lZvRpvXsoFqSFT0XEpr3wuMJjaHv4/HTSPVz73mzOpvQRXPhZg+l1/EUUx6Q+K
         25zA7lZy+91FyhCoHdX7mKJjy6cotrSNmQ7jQ1ekKN3ggF7yBLi7+5sYCfaqDeSiMccF
         43jw==
X-Gm-Message-State: AOAM5328s47/oHVn3VQ/PMLymxKN7EJua1ImJjv90NaC/HLntdrJbSKq
        PFDvtYTmp2XaLmkme2sZZg==
X-Google-Smtp-Source: ABdhPJwbiZg2cLWCqLWG6kO5T5YieBNWdxELfhYlFtD+O7MYmC3zikpr/lWeCSO3xNhRskwxyCeFrQ==
X-Received: by 2002:a05:620a:470e:: with SMTP id bs14mr2147958qkb.210.1640097086038;
        Tue, 21 Dec 2021 06:31:26 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id f8sm17586444qtk.1.2021.12.21.06.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 06:31:25 -0800 (PST)
Received: (nullmailer pid 1358250 invoked by uid 1000);
        Tue, 21 Dec 2021 14:31:23 -0000
Date:   Tue, 21 Dec 2021 10:31:23 -0400
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Message-ID: <YcHlO/m/tGEEMnX9@robh.at.kernel.org>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211220110630.3521121-9-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.

The problem with this series is it breaks an old kernel with new dt. You 
can partially mitigate that with stable kernel backport, but IMO keeping 
the old name is not a burden to maintain.

And given RK3399 is widely used including by me, we should not be 
breaking compatibility.

So allow for ref in addition to vpll if you like, but only use 'ref' for 
new users. And add a comment in the schema to that effect.

Rob

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 6e09dd2ee05ac..3b40219e3ea60 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -47,11 +47,12 @@ properties:
>        - enum:
>            - cec
>            - grf
> -          - vpll
> +          - ref
>        - enum:
>            - grf
> -          - vpll
> -      - const: vpll
> +          - ref
> +      - const:
> +          - ref
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> -- 
> 2.30.2
> 
> 
