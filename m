Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9138F2B9395
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:23:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726644AbgKSNXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:23:20 -0500
Received: from mail-ed1-f68.google.com ([209.85.208.68]:33371 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726105AbgKSNXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 08:23:19 -0500
Received: by mail-ed1-f68.google.com with SMTP id k4so5831884edl.0
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 05:23:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WA0nL+uRBYwsDIs98/LB+HePgCtrLh/crA2JVTbLnmc=;
        b=Xj7RQZSXgJKXC2B5PSJkWCEgtV1rEfFiENxPs4vZBJMJM5Ms2GHtQ9vvwm9UwpUQiO
         MIQDiOOiBC8PdIEedV3p2l239PSpoLNCF4BWhHBAuvCjaAztnPRcHRkB3rkta3TZmKZu
         Y4+2ES659zBYlKCo0n1kLqQfSK28y3jxT1HBA+KgkY2XVSWZchQq+3IW0dK5EXFUtUn4
         nEkyg4rwh8DvcWTvgSFhVWI9U1rnNGgBVqM32m0ePwSryr1Pi8B2u4YjIrTXVvVQdMaH
         D52SX3RAGHDpHok1cfZ3XO30lIPcwCNU9HK9IzcuIt7kyIO6eY2wiyCuhBtU+9neY7EP
         L4fw==
X-Gm-Message-State: AOAM532OfAZHrnFyzR8xYZC7por/UQEumbMqxtwhJvoNyQPNelL3k1C6
        B3owDUeNHFKrIBC7A7yfVUXqhPO8muU=
X-Google-Smtp-Source: ABdhPJz99KEP5yZPrEJST9AR+fDcsV+YFZUpBSgTFb6NhnFRIOtwVzAY8XbxblIzVa5TBDaRpjOdQA==
X-Received: by 2002:a50:8562:: with SMTP id 89mr6186796edr.144.1605792196840;
        Thu, 19 Nov 2020 05:23:16 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id ov32sm2390694ejb.123.2020.11.19.05.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 05:23:16 -0800 (PST)
Date:   Thu, 19 Nov 2020 14:23:14 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: mailbox: mu: add imx8qm support
Message-ID: <20201119132314.GC348129@kozik-lap>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-3-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201119125304.1279-3-aisheng.dong@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 08:53:04PM +0800, Dong Aisheng wrote:
> Add imx8qm support
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> index 15cef82cd356..1a3dff277e2b 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> @@ -34,12 +34,15 @@ properties:
>                - fsl,imx8mm-mu
>                - fsl,imx8mn-mu
>                - fsl,imx8mp-mu
> +              - fsl,imx8qm-mu

You add the compatible below, so decide which one is it. Please provide
also users of this compatible - DTS.

Best regards,
Krzysztof

>                - fsl,imx8qxp-mu
>            - const: fsl,imx6sx-mu
>        - description: To communicate with i.MX8 SCU with fast IPC
>          items:
>            - const: fsl,imx8-mu-scu
> -          - const: fsl,imx8qxp-mu
> +          - enum:
> +              - fsl,imx8qm-mu
> +              - fsl,imx8qxp-mu
>            - const: fsl,imx6sx-mu
>  
>    reg:
> -- 
> 2.23.0
> 
