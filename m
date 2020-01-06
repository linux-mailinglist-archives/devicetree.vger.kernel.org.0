Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA8B131AF4
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 23:03:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726939AbgAFWDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 17:03:18 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:38582 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726895AbgAFWDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 17:03:18 -0500
Received: by mail-oi1-f195.google.com with SMTP id l9so14254109oii.5
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 14:03:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=whyVDgNs4KCm1yOjF/vWGK9b0ag3HJcP6pF9Jl+67Ao=;
        b=BnxmefCM2xrvRb7WvTJ1YHlJ+uEBFa0I1vKssnULdS4AXD4XsB6G1k/VKlRPu5Vwdk
         /RRouQjpU/SE8aOpvAI3HN07Fqn7kbkaCl/YFOg01HF5nFzbI5OGAz/OLtZW0zds8ZaW
         J8UqqTft2RaGomgdQgyKNyZEYKPcRT5KH50/CVQt7fGWN8VZWyYfAfXuiggpfugQPP9j
         lOCRYYQvKfgZNby4sMwkIuK/TqsIDR/LiykJMZDR6NipQ/LfVnuv/WSbdae0T+bmeW+4
         lNnnnnYiJhw5OLEfEwfb6r8minRY83XZKIlHK2qCDYAVnDfDqi7QVCOseYm2fGcuF0cC
         eGEg==
X-Gm-Message-State: APjAAAXCxq3+P3Jb8rxNHaWiktttsrGEtsKhHwdb5GJCm6YUV4BQpcud
        6bFXtExH2r4MeqYG6YfajTZ6YbI=
X-Google-Smtp-Source: APXvYqzr/tQdhu1J1lpjwut/qhrlMg27x/zZPeiRDuNpnezurgMdtKh5Q8ATDhuBGYNHcvsSCQYy5A==
X-Received: by 2002:aca:d787:: with SMTP id o129mr6799911oig.75.1578348197240;
        Mon, 06 Jan 2020 14:03:17 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net. [70.5.121.225])
        by smtp.gmail.com with ESMTPSA id s145sm21842303oie.44.2020.01.06.14.03.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:03:16 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220d32
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 06 Jan 2020 16:03:13 -0600
Date:   Mon, 6 Jan 2020 16:03:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Faiz Abbas <faiz_abbas@ti.com>
Cc:     linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        kishon@ti.com, adrian.hunter@intel.com, mark.rutland@arm.com,
        ulf.hansson@linaro.org, tony@atomide.com
Subject: Re: [PATCH v4 08/11] dt-bindings: sdhci-omap: Add documentation for
 ti,needs-special-reset property
Message-ID: <20200106220313.GA6822@bogus>
References: <20200106110133.13791-1-faiz_abbas@ti.com>
 <20200106110133.13791-9-faiz_abbas@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200106110133.13791-9-faiz_abbas@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 06, 2020 at 04:31:30PM +0530, Faiz Abbas wrote:
> Some controllers need a special software reset sequence. Document the
> ti,needs-special-reset binding to indicate that a controller needs this.
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-omap.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt b/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
> index 97efb01617dd..0f5389c72bda 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-omap.txt
> @@ -21,6 +21,7 @@ Optional properties:
>  - dma-names:	List of DMA request names. These strings correspond 1:1 with the
>  		DMA specifiers listed in dmas. The string naming is to be "tx"
>  		and "rx" for TX and RX DMA requests, respectively.
> +- ti,needs-special-reset: Requires a special softreset sequence

Why can't this be implied by the compatible string?

Rob
