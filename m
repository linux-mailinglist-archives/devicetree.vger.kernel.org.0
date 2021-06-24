Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7EF3B380C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 22:42:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232284AbhFXUop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 16:44:45 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:36746 "EHLO
        mail-io1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229525AbhFXUop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 16:44:45 -0400
Received: by mail-io1-f53.google.com with SMTP id s19so9911252ioc.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 13:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yhB3RCsDrtKOJ38YM/mCLl6DOdvaMXVp+jrCEZAFUIE=;
        b=HnbzkFJzFXNghQWEl3qcFMt1ePDLW8e5aoBQpMSiniCXr6LuamrW+NRq2ANukMaXPg
         yHDutJeExZ69ljkAFduGoMChM5Avi2oWgXKXCaVxI9D4pvFXLdB/TkbGrgXszQIog2WS
         3BgH5Ow+HnQaj7bbqzP1yrjOK/d/Ibf3l0BN5MUPCK6nn5r0BlzZ871bpKyv2xmIGbOA
         SPxF6p/wfosStqrMspjZZ9rV/fokx7Du4hUiKy6sAufdve8S1zf+ZYStJhlT18Nk6r7z
         ddJdtgOASPEv2ngMokmxC3A8LzJToqNLHTaOHEZQcTHumAKIJwy6FY/uDyHCsENr7+JQ
         rX8A==
X-Gm-Message-State: AOAM533SqIVSzaQwnUFqc8MKfwaXwPjlVnajTZ97irniJk/aupLssDvu
        irJtjdXfE4gjk38mzSaYxA==
X-Google-Smtp-Source: ABdhPJzF1iZdOrXcEQ3GKURigbtUVeh2PtwgKg58wc5qJado6qMwr06DZFwz3/wdEY5lQZWzJ69s7w==
X-Received: by 2002:a02:1988:: with SMTP id b130mr6362444jab.44.1624567344847;
        Thu, 24 Jun 2021 13:42:24 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i1sm1852094iol.16.2021.06.24.13.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 13:42:24 -0700 (PDT)
Received: (nullmailer pid 1954588 invoked by uid 1000);
        Thu, 24 Jun 2021 20:42:22 -0000
Date:   Thu, 24 Jun 2021 14:42:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kir Kolyshkin <kolyshkin@gmail.com>
Cc:     devicetree@vger.kernel.org, lee.jones@linaro.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] docs: fix bad cross-links in motorola-cpcap
Message-ID: <20210624204222.GA1953445@robh.at.kernel.org>
References: <20210614214527.208384-1-kolyshkin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210614214527.208384-1-kolyshkin@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 14, 2021 at 02:45:27PM -0700, Kir Kolyshkin wrote:
> Commits 3c5be0454 and ce49e4282 renamed the files being referenced,
> but forgot to modify the document that references them.
> 
> This fixes the following warnings:
> 
> > Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> > references a file that doesn't exist:
> > Documentation/devicetree/bindings/power/supply/cpcap-battery.txt
> 
> > Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> > references a file that doesn't exist:
> > Documentation/devicetree/bindings/power/supply/cpcap-charger.txt
> 
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/motorola-cpcap.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

There's already fixes for this in linux-next.

> 
> diff --git a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> index b52e7a33f0f9..190230216de8 100644
> --- a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> +++ b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> @@ -16,8 +16,8 @@ Optional subnodes:
>  The sub-functions of CPCAP get their own node with their own compatible values,
>  which are described in the following files:
>  
> -- Documentation/devicetree/bindings/power/supply/cpcap-battery.txt
> -- Documentation/devicetree/bindings/power/supply/cpcap-charger.txt
> +- Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
> +- Documentation/devicetree/bindings/power/supply/cpcap-charger.yaml
>  - Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
>  - Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt
>  - Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> -- 
> 2.31.1
> 
> 
