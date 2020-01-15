Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD02813C855
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 16:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726474AbgAOPuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 10:50:04 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:35989 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726473AbgAOPuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 10:50:03 -0500
Received: by mail-oi1-f193.google.com with SMTP id c16so15818769oic.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 07:50:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B7DX59sNSuvGuHSzjzaWJDesXQ6glcdz/pP97LB2HkM=;
        b=OVS1TWyw+BoLars1kzquwy2skE79N8PIHvHt3XNLRVxphCzbmMgizdYhzt5anU4YBn
         NSoQnXHO0/hkpTxdwjfUbpCdZp/WvcO3EvIPldv6k5N1m+c8ChrdvHl80duaDBLmCNDI
         SCa0lmlRJ/MLhzeN2P/8AyrkwyTFRwSo2oZdlMXFgCkrMYHOjUmiq0WdJuzKdMGV3EYx
         uyaCxYL9iSHliiFR/2hwdQC2BegrB4iX7++EwAmfVSHpD1dWc6WdNRjsFEjkP0EvIONF
         u7rkAJKLCvWYlH501DJzeWLcXKD7FwD7rM4dggGU/L+BpwSpeQUQWDKNQSAyIEiQTphJ
         Zecw==
X-Gm-Message-State: APjAAAWgI2xslzVFZrKX5P98Qz0fvinuKOmRMJpUo7ht7dQS3WIy0rF8
        Ve5hml3nYKdFVJl6ga2urU0J8WQ=
X-Google-Smtp-Source: APXvYqwV21oCzLnLW4q3QREHubGwDQXePg1OkgH8Yszcu2psunCS5ydfAKvq3uvSrYSUXVZRG3U3Hw==
X-Received: by 2002:aca:4ad5:: with SMTP id x204mr319777oia.162.1579103402992;
        Wed, 15 Jan 2020 07:50:02 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l23sm6637911otf.23.2020.01.15.07.50.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:50:02 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22040c
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 09:43:35 -0600
Date:   Wed, 15 Jan 2020 09:43:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     mark.rutland@arm.com, vkoul@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
        broonie@kernel.org, manivannan.sadhasivam@linaro.org,
        andrew.smirnov@gmail.com, rjones@gateworks.com,
        marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
        aisheng.dong@nxp.com, richard.hu@technexion.com, angus@akkea.ca,
        cosmin.stoica@nxp.com, l.stach@pengutronix.de,
        rabeeh@solid-run.com, leonard.crestez@nxp.com,
        daniel.baluta@nxp.com, jun.li@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, Linux-imx@nxp.com
Subject: Re: [PATCH V2 4/7] dt-bindings: spi: imx: Add
 i.MX8MM/i.MX8MN/i.MX8MP compatible
Message-ID: <20200115154335.GA15650@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578893602-14395-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 13, 2020 at 01:33:19PM +0800, Anson Huang wrote:
> Add compatbile for imx8mm/imx8mn/imx8mp.

checkpatch reports a typo.

Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> index 2d32641..33bc58f 100644
> --- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> +++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> @@ -10,7 +10,10 @@ Required properties:
>    - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
>    - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
>    - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
> -  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8M
> +  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
> +  - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
> +  - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
> +  - "fsl,imx8mp-ecspi" for SPI compatible with the one integrated on i.MX8MP
>  - reg : Offset and length of the register set for the device
>  - interrupts : Should contain CSPI/eCSPI interrupt
>  - clocks : Clock specifiers for both ipg and per clocks.
> -- 
> 2.7.4
> 
