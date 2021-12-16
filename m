Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84269476B63
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 09:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234702AbhLPIFF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 03:05:05 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:43064 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234701AbhLPIFE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 03:05:04 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 749E761C61
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 08:05:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96E00C36AE2;
        Thu, 16 Dec 2021 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639641903;
        bh=w04h3S8nXv1GZAq8rEZ+wVVgJ/r35tYaTmDNm94rCFk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YGdHG2xvmAfePdgpxNhFdh3UdNV2tLDTlrg/YCd+fjpc26yzQghJK40TXhcSIkzcb
         lgyqIzyusztw/za/e5Jip9n2Ej3LwbGZ8oVO9GhgQkiBzG9gaK1d0/oKApe8GQSgvw
         KloqIchz/Iv+lIMbRrLnLnjAB7zbdF1JqkqIoFBu7N7B6W9rKWukcR736T8P53I90g
         2Og2F3jY4lMXiRabiIWYCDcGC65AshkXURl1RtqNunMIXuO8+Ao8n3ixl4m1WNA1g1
         ToXZb+65/5O4S2zKh1baFmc+8HftW36fLN4c41qzAfp62bViHrdX9JZUOmnVqZiB93
         OSh3+4v3MlDwA==
Date:   Thu, 16 Dec 2021 16:04:58 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: imx: add Protonic PRT8MM board
 compatible
Message-ID: <20211216080457.GZ4216@dragon>
References: <20211213203909.1260909-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213203909.1260909-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 13, 2021 at 09:39:08PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Please do not leave commit log empty.

Shawn

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 0b595b26061f..645ceb271405 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -732,6 +732,7 @@ properties:
>                - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
>                - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
>                - variscite,var-som-mx8mm   # i.MX8MM Variscite VAR-SOM-MX8MM module
> +              - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
>            - const: fsl,imx8mm
>  
>        - description: Engicam i.Core MX8M Mini SoM based boards
> -- 
> 2.30.2
> 
