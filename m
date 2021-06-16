Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC9A63AA7A2
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231461AbhFPXqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:46:13 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:36355 "EHLO
        mail-il1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:46:13 -0400
Received: by mail-il1-f170.google.com with SMTP id i13so3829942ilk.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:44:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XtK7Sje9QYqTJypKYS5NBrxE/SEkcKONcSWT7xXJnl4=;
        b=mMOeJPI3Ny0C9+Z9CYL07V8XjPJDWRC8nJgmYyVSx1GIH5H2vHp2tWFmmO3x/drcB1
         1XhjmzJioA5YcUsVWljyfvWp0XjEhHNPbKNzE1IUGuEhhvDxTC19qB+lv3TYs+TwXZYS
         D9Ud9JnGU3qf5tgtkwsM2zAYAf9O6nICbeSbfa72nN5udGgzycn/moyVnky4DImk0Ooc
         vYuK3Q4EY/QMXKhy1NteCrP1l7mNiDwz+EyRg53xeEXjiFJ1U10yt62fwGpZbnjU3k7V
         dcAhoFvuXSnMmcje2/olRi2DFClg/0oFLgtUXRMqlo3JzCv4BCxIldI+L+I10qaUFnQ7
         IUIA==
X-Gm-Message-State: AOAM5333NvNQ/KxoXwKP7u0BFMtKeb9H51RfIimW0JLH1N9pyZRPWWTv
        SEXoqaaIeDITGqbtT6t8nQ==
X-Google-Smtp-Source: ABdhPJyvIoDKyGv2q+1wvKXxJ2Pqy018Yyk9PqhoReHiD0n2YQwXX/EdUva0R/jMf5Uo+YNkKUYODA==
X-Received: by 2002:a05:6e02:5a3:: with SMTP id k3mr1456449ils.302.1623887045709;
        Wed, 16 Jun 2021 16:44:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m7sm1867938ild.49.2021.06.16.16.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:44:03 -0700 (PDT)
Received: (nullmailer pid 305836 invoked by uid 1000);
        Wed, 16 Jun 2021 23:44:01 -0000
Date:   Wed, 16 Jun 2021 17:44:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/11] dt-bindings: mmc: imx-esdhc: Add imx8ulp compatibe
 string
Message-ID: <20210616234401.GA304797@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-4-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-4-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 07, 2021 at 04:39:13PM +0800, Jacky Bai wrote:
> For i.MX8ULP, it uses two compatible strings, so update
> the compatible string for i.MX8ULP.

typo in the subject

> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

> 
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 369471814496..aeee2be1e36a 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -42,6 +42,10 @@ properties:
>                - fsl,imx8qm-usdhc
>                - fsl,imx8qxp-usdhc
>            - const: fsl,imx7d-usdhc
> +      - items:
> +          - enum:
> +              - fsl,imx8ulp-usdhc
> +          - const: fsl,imx8mm-usdhc
>  
>    reg:
>      maxItems: 1
> -- 
> 2.26.2
