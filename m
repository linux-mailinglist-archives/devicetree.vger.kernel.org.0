Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A9F5770CFC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 01:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387464AbfGVXJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 19:09:38 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:42217 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733309AbfGVXJh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 19:09:37 -0400
Received: by mail-io1-f66.google.com with SMTP id e20so47385407iob.9
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 16:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JIVY0scrws0n+0lS4g7V+Mq86JsRh+PQcJfUzcwZnkc=;
        b=pXr4ruVl3+FklCsCOgHThIOErDasaNtCHfWQbzuSGZ79WnGrB+ICCZRSGZsqCkHK96
         VVyobP33Ytway8n+OsgcIoqKVIZIurBVbf4thW2HsmmyovvtBhPcF53pd5IxeBt0U4jN
         L53H2bHSCsRkoHmUq70zVsAKRvT2uHe9t8VxneiZaD120mHO8hvuF9IQuvbpWgm1EHIk
         hdtMhQcC/OWp0FSC6nqOQNtprnKQezsvcb05KNrMycbfKntzUM7ICyadGpsYm72Ouog7
         zdrcwFGLRveg2QZUwT8jixAGTdHb4qWcWbDuwFn5zzjy/SEQCpjQVy7nTh97FKszwHZc
         ZGMQ==
X-Gm-Message-State: APjAAAXR9WCjw5UMcVgh4hcNkiM3PpObzGMzXFn5d4vXTXm0Txx30l1I
        p+4KgTqOEVV2p1+F1Yx0zQ==
X-Google-Smtp-Source: APXvYqy9LgzrVPClKUkOR6sch9M8xhmpFW7pfZ2HI0ujejed2YdxMrSMy3Lx2Q76aZ3tL1ZxaCx5dg==
X-Received: by 2002:a02:340d:: with SMTP id x13mr76570423jae.125.1563836977019;
        Mon, 22 Jul 2019 16:09:37 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id p3sm59830908iom.7.2019.07.22.16.09.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 16:09:36 -0700 (PDT)
Date:   Mon, 22 Jul 2019 17:09:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: Re: [RESEND PATCH 1/3] dt-bindings: power: Add power domain binding
 for i.mx8m family
Message-ID: <20190722230935.GA12833@bogus>
References: <20190702100832.29718-1-ping.bai@nxp.com>
 <20190702100832.29718-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702100832.29718-2-ping.bai@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 10:03:41AM +0000, Jacky Bai wrote:
> Add the binding doc of power domain for i.MX8M SOC family.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  .../bindings/power/fsl,imx8m-genpd.txt        | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt b/Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt
> new file mode 100644
> index 000000000000..a92a7103de38
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/fsl,imx8m-genpd.txt
> @@ -0,0 +1,46 @@
> +Device Tree Bindings for Freescale i.MX8M Generic Power Domain
> +==============================================================
> +The binding for the i.MX8M Generic power Domain[1].
> +
> +[1] Documentation/devicetree/bindings/power/power_domain.txt
> +
> +Required properties:
> +
> + - compatible: should be of:
> +	- "fsl,imx8m-power-domain"
> + - #power-domain-cells: Number of cells in a PM domain Specifier, must be 0
> + - domain-index: should be the domain index number need to pass to TF-A
> + - domain-name: the name of this pm domain
> +
> +Optional properties:
> + - clocks: a number of phandles to clocks that need to be enabled during
> +   domain power-up sequence to ensure reset propagation into devices
> +   located inside this power domain

Isn't that firmware's problem?

> + - power-supply: Power supply used to power the domain
> + - parent-domains: the phandle to the parent power domain
> +
> +example:
> +	vpu_g1_pd: vpug1-pd {

What's this a child of?

Use generic node names.

> +		compatible = "fsl,imx8mm-pm-domain";
> +		#power-domain-cells = <0>;

I'm usually not a fan when I see a single domain per provider. Why can't 
you have firmware be a single provider with multiple domains?

> +		domain-index = <6>;

Don't create your own index properties.

> +		domain-name = "vpu_g1";

Not a standard name. Why do you need this? (Hint: we'd already have a 
standard name if you did.)

> +		parent-domains = <&vpumix_pd>;

We already have a standard way to do this.

> +		clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
> +	};
> +
> +
> +Specifying Power domain for IP modules
> +======================================
> +
> +IP cores belonging to a power domain should contain a 'power-domains'
> +property that is a phandle for PGC node representing the domain.
> +
> +Example of a device that is part of the vpu_g1 power domain:
> +	vpu_g1: vpu_g1@38300000 {

video-codec@...

> +		/* ... */
> +		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "irq_hantro";
> +		/* ... */
> +		power-domains = <&vpu_g1_pd>;
> +	};
> -- 
> 2.21.0
> 
