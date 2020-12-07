Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 274412D0FEF
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 13:01:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726921AbgLGMAn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 07:00:43 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52665 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbgLGMAm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 07:00:42 -0500
Received: by mail-wm1-f67.google.com with SMTP id a6so11244391wmc.2
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 04:00:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vOunm2rd7VYEU+GMvrZhI9ZSgRLlRUff5kTw0kGo6uw=;
        b=R5TmMgd1HuGPt7U8Fqggct/sPSUoAgCom0BWRX/4kwzmsZ8WBlDjquurZ862JFGdlS
         pk/XavRdO77nn/hQ/Jx47CNpE9OR1bc9SHbKSQNflwzNFjqcO9XixFhX3zemJol5obzJ
         TnhpJ/AVojIUxc7IhYYAgfDSC6bjPuYI3dTMeKSRTTdIDxO9psqPdiwpuimvrmEa7Lh2
         WDrORf1e6+UrJs8s61UZM7Z5lsu0vZLFgC30PsWs6aUkq+Y9vD0ygI+iWaouhUYumKpm
         AC1iG2Dnlko5nJ+fD+qxEet/JGKqR0gPbOW8l95BsI8lKUi8sXof6alb1OtK8OUm8hIR
         5QhQ==
X-Gm-Message-State: AOAM532vazQ61t93IkMJ0KWqoD7cBC0s6J2C4+ih5+eI04k/OJVsfBLW
        3J3IGJPP+bYv2WTDwXLEAqU=
X-Google-Smtp-Source: ABdhPJxXJzP/7kQjTBSNOmxtX/mkOC9tdSiWnjAr4HGQFWc9glcpAtImoNYkapfMNXVbBJhMRJXLug==
X-Received: by 2002:a1c:27c4:: with SMTP id n187mr17801924wmn.157.1607342401071;
        Mon, 07 Dec 2020 04:00:01 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id l24sm15325320wrb.28.2020.12.07.03.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 04:00:00 -0800 (PST)
Date:   Mon, 7 Dec 2020 12:59:58 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree
 bindings
Message-ID: <20201207115958.GA27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-4-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1607113982-109524-4-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 04, 2020 at 09:33:01PM +0100, Teresa Remmet wrote:
> Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
> and phyBOARD-Pollux RDK.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 934289446abb..880d93092f37 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -433,6 +433,13 @@ properties:
>                - fsl,imx8mp-evk            # i.MX8MP EVK Board
>            - const: fsl,imx8mp
>  
> +      - description: PHYTEC phyCORE-i.MX8MP SoM based boards
> +        items:
> +          - enum:
> +              - phytec,imx8mp-phycore-som         # phyCORE-i.MX8MP SoM
> +              - phytec,imx8mp-phyboard-pollux-rdk # phyBOARD-Pollux RDK

These do not look correct. In this way, you should include them in
"i.MX8MP based Boards" entry. Probably you wanted all "const" instead.

Best regards,
Krzysztof


> +          - const: fsl,imx8mp
> +
