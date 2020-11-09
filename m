Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139C02AC5D0
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 21:16:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729838AbgKIUQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 15:16:01 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:44157 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729243AbgKIUQB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 15:16:01 -0500
Received: by mail-oi1-f194.google.com with SMTP id t16so11585788oie.11
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 12:15:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=btm39YuDQKpwme030p3FXbT8kqnmECyn6yr1DXqSq5Y=;
        b=bR9EIg6u2VZq5kuobHAvJmmOs5fHetwLidXTFF5V/GaYIqTveDi38lwJrrNSsb/CI5
         r1PofWOmGcgnFrPhBhjkF3S7tRdYjoSGgpSTc+PZ6I2UjDUPMkG4bYVzRfpins+JJbX3
         48wYKhRQU+pkX3Z0VZ52bbgJ46rPQSm/lwMJKW6kXD3+YXSv+1xsbLHmJue/9TNXdcIS
         avbSWWPwzs0GVxXLacfBx5Ozati6ih1853R7RndXnLxmIMkUGo7Q4CUOdUIiysaViSXs
         JHcCSpHMuZNR+DVSiO0yNnqLUwFxnMmZh3a6sBJBUMcXtRBP1mCPjcpzYucmC5Fqw6cL
         N/aQ==
X-Gm-Message-State: AOAM5327BF1uDACdeCXhwFTyloNs0IA8xaYha6dJiOVCaW/E2+3tHigV
        LwJS25LSSYeQnZH9FNx9+g==
X-Google-Smtp-Source: ABdhPJwWTocdsvKRcxcHUK8pHyTsJZ5R4eb3YAL5c1EhxdJXgPlQHPoACrzWIsX/gRJZn8/w8SPqRg==
X-Received: by 2002:aca:54c9:: with SMTP id i192mr624642oib.19.1604952958680;
        Mon, 09 Nov 2020 12:15:58 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h28sm2656111ooc.42.2020.11.09.12.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 12:15:57 -0800 (PST)
Received: (nullmailer pid 1690909 invoked by uid 1000);
        Mon, 09 Nov 2020 20:15:57 -0000
Date:   Mon, 9 Nov 2020 14:15:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
Message-ID: <20201109201557.GA1690230@bogus>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-9-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201105174434.1817539-9-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
> For some domains the resets of the devices in the domain are not
> automatically triggered. Add an optional resets property to allow
> the GPC driver to trigger those resets explicitly.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> index a96e6dbf1858..4330c73a2c30 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> @@ -66,6 +66,13 @@ properties:
>  
>            power-supply: true
>  
> +          resets:
> +            description: |
> +              A number of phandles to resets that need to be asserted during
> +              power-up sequencing of the domain.
> +            minItems: 1
> +            maxItems: 4

You need to define what each reset is.

> +
>          required:
>            - '#power-domain-cells'
>            - reg
> -- 
> 2.20.1
> 
