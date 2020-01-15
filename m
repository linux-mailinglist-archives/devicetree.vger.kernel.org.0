Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B55213B73F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 02:50:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728884AbgAOBuk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 20:50:40 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:42816 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728862AbgAOBuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 20:50:40 -0500
Received: by mail-oi1-f196.google.com with SMTP id 18so13903174oin.9
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 17:50:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x+DC5uDF1yRidwXaAC7rLMyWxsUNF7MxyQx/Ttg6A48=;
        b=Ec9/BdRK/sBWCtfZ9ubuqAQDQe3S0ZrbDZ5EBhYAALHNV5SnO4VN2AHvug0CSNrV1f
         la6btzukHfRD2P4PQVzTc2adLA44VRadMDVSajoanbYJtIJNLa3yg50BXahRGUh2e9n+
         9y6DsRQ0Fii/8oRGblYtNZ30EbWIrRtSbzykJvdhVJ5btz4BOuYyjGYKtSHFV7v8sVuF
         m7FKxCNvNwp+YSkTVu0ARZspyYG8qQMwz/vf72XUE/h37sUQibwUpoTAghXkq311aXHm
         fEto7U/xda+dpQPtIctz650bisifWgB7W53uWQHzyAzMtgd/IIDAn1UZVczwaireRS9P
         AFpg==
X-Gm-Message-State: APjAAAX0myAxYnPl9n4H+B2Ioq96zH6Gkkh3ReUaoXqS1I+j4v93+MJ/
        DxMlDzU1Euv5Ci3SYJceJCuw5/8=
X-Google-Smtp-Source: APXvYqyZeYWSvvtcStQFI5tgnFaWCSr9AyKMhN1VWHcY03QpePPo5Z53gYHpeUyHWYC2Ot/O2cq8Lg==
X-Received: by 2002:aca:c692:: with SMTP id w140mr20186072oif.139.1579053039186;
        Tue, 14 Jan 2020 17:50:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e13sm5252825oie.0.2020.01.14.17.50.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 17:50:38 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220a2e
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 19:50:37 -0600
Date:   Tue, 14 Jan 2020 19:50:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Faiz Abbas <faiz_abbas@ti.com>
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, ulf.hansson@linaro.org,
        adrian.hunter@intel.com
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-am654: Update Output tap
 delay binding
Message-ID: <20200115015037.GA26114@bogus>
References: <20200108150920.14547-1-faiz_abbas@ti.com>
 <20200108150920.14547-2-faiz_abbas@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108150920.14547-2-faiz_abbas@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 08, 2020 at 08:39:18PM +0530, Faiz Abbas wrote:
> According to latest AM65x Data Manual[1], a different output tap delay
> value is recommended for all speed modes. Therefore, replace the
> ti,otap-del-sel binding with one ti,otap-del-sel- for each MMC/SD speed
> mode.
> 
> [1] http://www.ti.com/lit/gpn/am6526
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
>  .../devicetree/bindings/mmc/sdhci-am654.txt   | 21 +++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
> index 50e87df47971..c6ccecb9ae5a 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
> @@ -18,7 +18,20 @@ Required Properties:
>  	- clocks: Handles to the clock inputs.
>  	- clock-names: Tuple including "clk_xin" and "clk_ahb"
>  	- interrupts: Interrupt specifiers
> -	- ti,otap-del-sel: Output Tap Delay select
> +	Output tap delay for each speed mode:
> +	- ti,otap-del-sel-legacy
> +	- ti,otap-del-sel-mmc-hs
> +	- ti,otap-del-sel-sd-hs
> +	- ti,otap-del-sel-sdr12
> +	- ti,otap-del-sel-sdr25
> +	- ti,otap-del-sel-sdr50
> +	- ti,otap-del-sel-sdr104
> +	- ti,otap-del-sel-ddr50
> +	- ti,otap-del-sel-ddr52
> +	- ti,otap-del-sel-hs200
> +	- ti,otap-del-sel-hs400
> +	  These bindings must be provided otherwise the driver will disable the
> +	  corresponding speed mode (i.e. all nodes must provide at least -legacy)

Why not just extend the existing property to be an array. We already 
have properties to enable/disable speed modes.

>  
>  Optional Properties (Required for ti,am654-sdhci-5.1 and ti,j721e-sdhci-8bit):
>  	- ti,trm-icp: DLL trim select
> @@ -38,6 +51,10 @@ Example:
>  		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
>  		sdhci-caps-mask = <0x80000007 0x0>;
>  		mmc-ddr-1_8v;
> -		ti,otap-del-sel = <0x2>;
> +		ti,otap-del-sel-legacy = <0x0>;
> +		ti,otap-del-sel-mmc-hs = <0x0>;
> +		ti,otap-del-sel-ddr52 = <0x5>;
> +		ti,otap-del-sel-hs200 = <0x5>;
> +		ti,otap-del-sel-hs400 = <0x0>;
>  		ti,trm-icp = <0x8>;
>  	};
> -- 
> 2.19.2
> 
