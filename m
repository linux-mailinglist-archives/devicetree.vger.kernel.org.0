Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2880D9827D
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 20:15:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728050AbfHUSPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 14:15:00 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:43519 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727780AbfHUSPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 14:15:00 -0400
Received: by mail-oi1-f193.google.com with SMTP id y8so2302400oih.10
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 11:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=m5nuLuMsfkxZNIzHnYqhL4fj6+pQ1WScxNpfqvSjJaI=;
        b=aF8BAD8kmmIdN2aA66WcFBo1q6xBRJ82/1z74YUKP3/ZJDF7s7/0ZpMuFKAdZqTCMt
         bMymf/d6SNpdFvmIGxsyfvbwhnYWjz6a+kFMBqNSeSAuU1WaeAB02d4mgQ9V0YEvqple
         wxj+B4tdrEmhKlXuWfev6IDt9xn5iW9rqGTblFUriTvJrQUaHwH3VMaMUVIWJxY6eTZY
         M5TVSQezp7L8FfAVpAqPz/uMPvSKiIjV6YUCBc0Tw4bYKgBssUl2XVrXiFw9xGk2xMgu
         EayahTumVm+0MXnRITBazCDqgmtXtMB5LlLjKAHl6B5FM5qQyFFN9E3VpElCsTzxD769
         nuuA==
X-Gm-Message-State: APjAAAUhIGjvE9BF5SpoMJ2EcC9om05S7e9Pf6rjgR1mxSfnyBPpnoHp
        9n24nCL60HlkqtOmllCqCA==
X-Google-Smtp-Source: APXvYqzwhKlJjpqtFevAij5ECQaAFh8CyzecW1FB3eA+DYuuqoWkt1MaKqYsC9EIdtIdbe4Chhf4HQ==
X-Received: by 2002:aca:b989:: with SMTP id j131mr951663oif.147.1566411299295;
        Wed, 21 Aug 2019 11:14:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p11sm7874311oto.4.2019.08.21.11.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 11:14:58 -0700 (PDT)
Date:   Wed, 21 Aug 2019 13:14:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Carlo Caione <ccaione@baylibre.com>
Cc:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, tglx@linutronix.de, jbrunet@baylibre.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
Message-ID: <20190821181458.GA2886@bogus>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:
> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
> 
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> index 2e0723ab3384..f7b3ed74db54 100644
> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible: should be "amlogic,meson-gxbb-efuse"
>  - clocks: phandle to the efuse peripheral clock provided by the
>  	  clock controller.
> +- secure-monitor: phandle to the secure-monitor node
>  
>  = Data cells =
>  Are child nodes of eFuse, bindings of which as described in
> @@ -16,6 +17,7 @@ Example:
>  		clocks = <&clkc CLKID_EFUSE>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		secure-monitor = <&sm>;
>  
>  		sn: sn@14 {
>  			reg = <0x14 0x10>;
> @@ -30,6 +32,10 @@ Example:
>  		};
>  	};
>  
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +	};

I guess I acked this a while back, but I'm not sure I would today. It 
seems incomplete and a node with only a compatible string and no 
resources doesn't need to be in DT. But that's already done...

There's no need for 'secure-monitor' anyways. Just do 
'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search 
for the driver directly. It's not like there's more than one secure 
monitor...

Rob
