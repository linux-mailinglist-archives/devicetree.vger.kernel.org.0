Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE43128549A
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 00:29:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726890AbgJFW37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 18:29:59 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43128 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726323AbgJFW37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 18:29:59 -0400
Received: by mail-oi1-f196.google.com with SMTP id l85so292353oih.10
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 15:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aYY+kkpT1iGA4FnolUDFEXKHG9S0svtGnPyhga1HN7A=;
        b=Z0H7Xf1Ocms4vYqpLBsUAALKJEVhpokjE1I8VF6lVjDqJC9njvaiXUnoFc34kxJLt8
         qgdRBi0H6EqEJlgpCm2G3EkGI/LxNOx49PYPxrD9vLMmTRCoFIbJr2Fgq4pu9FoSOuqx
         oeEmsax867l2A0Gp4G7HKrGy/a7du1777aNZuiF7XNCbSlvTKdck/KvDDanVTQmXTdKO
         CBSHcHqB2x39OEV3cj0KoZU0d7Q2kQR5sM87kA0JsQKQ0c8BWlShxGZirftYRabROrp1
         Ho9L5jsnxduCR3yO5Sr4Gj1ibuXsrtdpq1uFplVL0K1CNU5E35+smOL5FxRmvkemwLHC
         aijQ==
X-Gm-Message-State: AOAM532K1iRg5QIkDjJpLc8EycEbEue8nRhrTR9tKvoT7fAGHI2iG9Yj
        C3Vxjzs6CV8Lzd1nzll7Sg==
X-Google-Smtp-Source: ABdhPJz8lDyPeyUXQVjJr3C/sfLNl8D10gf1QVWw2H/KoaSdt3fClV+6sg+CG2Y4bK/TyPTEKbpUrw==
X-Received: by 2002:aca:f1d7:: with SMTP id p206mr277498oih.45.1602023398080;
        Tue, 06 Oct 2020 15:29:58 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n1sm102271otr.16.2020.10.06.15.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 15:29:57 -0700 (PDT)
Received: (nullmailer pid 2972751 invoked by uid 1000);
        Tue, 06 Oct 2020 22:29:56 -0000
Date:   Tue, 6 Oct 2020 17:29:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marlon Rac Cambasis <marlonrc08@gmail.com>
Cc:     devicetree@vger.kernel.org, trivial@kernel.org
Subject: Re: [PATCH] Docs: Fixing Spelling errors in
 Documentation/devicetree/bindings/
Message-ID: <20201006222956.GA2970299@bogus>
References: <20201006093541.GA10261@marlonpc-debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201006093541.GA10261@marlonpc-debian>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 06, 2020 at 08:35:41PM +1100, Marlon Rac Cambasis wrote:
> Fixing three spelling errors within Documentation/devicetree/bindings.
> "specfied" replaced with "specified" in all three files modified. This
> should hopefully reduce any confusion that a reader might have.
> 
> Signed-off-by: Marlon Rac Cambasis <marlonrc08@gmail.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt  | 2 +-
>  Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt | 2 +-
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt      | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
> index 70659c917bdc..372f473e80c4 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
> @@ -75,7 +75,7 @@ Required Properties:
>    The child node should contain a list of pin(s) on which a particular pin
>    function selection or pin configuration (or both) have to applied. This
>    list of pins is specified using the property name "samsung,pins". There
> -  should be atleast one pin specfied for this property and there is no upper
> +  should be atleast one pin specified for this property and there is no upper

Perhaps fix 'atleast' while here.

>    limit on the count of pins that can be specified. The pins are specified
>    using pin names which are derived from the hardware manual of the SoC. As
>    an example, the pins in GPA0 bank of the pin controller can be represented
> diff --git a/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt b/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
> index 6e802703af60..17b7a6a43a29 100644
> --- a/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
> +++ b/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
> @@ -9,7 +9,7 @@ Optional property:
>  - nuvoton,sw-reset-number - Contains the software reset number to restart the SoC.
>    NPCM7xx contain four software reset that represent numbers 1 to 4.
>  
> -  If 'nuvoton,sw-reset-number' is not specfied software reset is disabled.
> +  If 'nuvoton,sw-reset-number' is not specified software reset is disabled.
>  
>  Example:
>  	rstc: rstc@f0801000 {
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index d78d4a8fb868..a8197632d6d2 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -20,7 +20,7 @@ Optional properties:
>     This is useful in situations where another watchdog engine on chip is
>     to perform the reset.
>  
> -   If 'aspeed,reset-type=' is not specfied the default is to enable system
> +   If 'aspeed,reset-type=' is not specified the default is to enable system
>     reset.
>  
>     Reset types:
> -- 
> 2.20.1
> 
