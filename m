Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 411A14734B8
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 20:15:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238018AbhLMTPv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 14:15:51 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:35600 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233743AbhLMTPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 14:15:50 -0500
Received: by mail-ot1-f52.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso18543812otr.2
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 11:15:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=16e1HfFxtcfwwmkLUyb20/1qiOCSvIHS7M0mF1ml9mI=;
        b=o3mkRLPgyTRtTbAxcrC8irUwMT5wIQfHloGzX3riFzuxaxuazPEZHwF27Aap9zGzH4
         f8IIJseFh4jexfq78552RlckcjRR0WhXuk3R4A0IMW8XiIOx6DHxoILSG70sEVFq7zHt
         oG/vbS6ZT8PBsdZFqGBtDGl5e1lH+NXzZ9ZG3hiGKohPnnS2nMw3BIavFeOFSuNGIqmc
         GtlzObT+2UtKi0ZL4vkPo23NJRt+jY6REimGGMG3VSZowndZ/Cr+TfqV8B3xMlTvbyj+
         YJiD9GzbWzV01IJR0wU4oPO3/8mwyxwUyWkV1IO/dfihA5P1CdL56TPamG0IyNu9XPNY
         bswA==
X-Gm-Message-State: AOAM532y/9IMp1j6mDZFL420iDBEffzRHL+ITH6Wn45inw9UyB9rkT/D
        kIeukXwMzBEvBTsrB6dXFw==
X-Google-Smtp-Source: ABdhPJzVa0W2V/rohpLCRuJlg9x83XZI/BE79xLSeEW4JCwi36dY8pa5cSoWmZjNr1LsxdrIv7m1bA==
X-Received: by 2002:a9d:7289:: with SMTP id t9mr419304otj.1.1639422950366;
        Mon, 13 Dec 2021 11:15:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id j5sm2336967oou.23.2021.12.13.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 11:15:49 -0800 (PST)
Received: (nullmailer pid 1406565 invoked by uid 1000);
        Mon, 13 Dec 2021 19:15:48 -0000
Date:   Mon, 13 Dec 2021 13:15:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        soc@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        linux@rempel-privat.de, festevam@gmail.com, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: Re: [PATCH 1/4] dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri
 i.MX6 ULL
Message-ID: <Ybeb5I/mP3JFrDsQ@robh.at.kernel.org>
References: <20211201125327.3704500-1-andrej.picej@norik.com>
 <20211201125327.3704500-2-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211201125327.3704500-2-andrej.picej@norik.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 01, 2021 at 01:53:24PM +0100, Andrej Picej wrote:
> Add devicetree bindings for phyGATE Tauri board with phyCORE-i.MX6 ULL.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 0b595b26061f..9c37f22b6c61 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -602,6 +602,15 @@ properties:
>            - const: phytec,imx6ull-pcl063  # PHYTEC phyCORE-i.MX 6ULL
>            - const: fsl,imx6ull
>  
> +      - description: i.MX6ULL PHYTEC phyGATE-Tauri
> +        items:
> +          - enum:
> +              - phytec,imx6ull-phygate-tauri-emmc
> +              - phytec,imx6ull-phygate-tauri-nand
> +          - const: phytec,imx6ull-phygate-tauri # PHYTEC phyGATE-Tauri with i.MX6 ULL

Is there really a need for 2 compatibles here? Either 
phytec,imx6ull-phygate-tauri is specific enough (as nand/emmc can be 
described elsewhere) or you need 
phytec,imx6ull-phygate-tauri-emmc/phytec,imx6ull-phygate-tauri-nand.


> +          - const: phytec,imx6ull-pcl063        # PHYTEC phyCORE-i.MX 6ULL
> +          - const: fsl,imx6ull
> +
>        - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Modules
>          items:
>            - enum:
> -- 
> 2.25.1
> 
> 
