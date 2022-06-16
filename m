Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E283254E560
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 16:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232898AbiFPOvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 10:51:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377036AbiFPOvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 10:51:53 -0400
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08BF943EFB
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:51:52 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id u2so1091515iln.2
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 07:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PR2+j0XKc7kxq9qUw/LZ08UDsXjVm34iPJ7eBAlPrKs=;
        b=O1XCbbHU1ck0V1xipMMuG+6f0NT8T/fRQL2/e12nkKhCm2GCtdtkXJ+voFmTnKGSoV
         sltBQdiS4ec2kDON0n2MLSW+dzFC7mXtWK8jj9nI4IkIvXXVlTuHPifWEzF6SSSOZlpx
         92YUerB6AuLJRqthziyhvf5HR2gLG3eq1v7pWIgkjSOjMo/eJZbKzaQZdML080SBnF83
         KiE0fUvFUsJVO87ipFpmPBrs7T82dM6JgrGZt/qej0B9nD3IwLaCVu+djZSH0dherP5K
         +T2awMx5AyZzDBasDPHQsgz3Csq02/y4Dm8oFoKKn8pD3bN8GTKgNRNU2fJ7NPbeCdO0
         BNfg==
X-Gm-Message-State: AJIora9WY9c5yj9xxt3iYGXuPU5WDaAbXtOjV+u+gYZMrNEkXRkpjNr0
        wcmtDFRj7Rpt3p1Qu9SifQ==
X-Google-Smtp-Source: AGRyM1uK68+yUUZNrbnY/BvPr0lHr19GdrOEhSpiLbVtDFniEjDcAo8F6LcmQL0hF/lsqkxi+1c3AQ==
X-Received: by 2002:a05:6e02:1583:b0:2d7:a75d:888f with SMTP id m3-20020a056e02158300b002d7a75d888fmr3194366ilu.13.1655391111210;
        Thu, 16 Jun 2022 07:51:51 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id d141-20020a6bb493000000b00669d92868dasm1249925iof.11.2022.06.16.07.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 07:51:50 -0700 (PDT)
Received: (nullmailer pid 3456627 invoked by uid 1000);
        Thu, 16 Jun 2022 14:51:49 -0000
Date:   Thu, 16 Jun 2022 08:51:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marcel.ziswiler@toradex.com,
        francesco.dolcini@toradex.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Decrease the line length
Message-ID: <20220616145149.GA3451750-robh@kernel.org>
References: <20220614173206.2885817-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614173206.2885817-1-festevam@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 14, 2022 at 02:32:06PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Decrease the line length of the toradex,colibri-imx6ull-emmc boards
> to fix the following build warning:
> 
> ./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
> line too long (111 > 110 characters) (line-length)

110 is not really the goal, but 80 with some 100 exceptions. Same as 
kernel. It's set to 110 because there were more than I cared to fixed.

> 
> Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7e5cd4fe5809..1d757af4d05c 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -680,11 +680,11 @@ properties:
>        - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL 1GB (eMMC) Module
>          items:
>            - enum:
> -              - toradex,colibri-imx6ull-emmc-aster     # Colibri iMX6ULL 1GB (eMMC) on Aster Carrier Board
> -              - toradex,colibri-imx6ull-emmc-eval      # Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation B. V3
> -              - toradex,colibri-imx6ull-emmc-iris      # Colibri iMX6ULL 1GB (eMMC) on Iris Carrier Board
> -              - toradex,colibri-imx6ull-emmc-iris-v2   # Colibri iMX6ULL 1GB (eMMC) on Iris V2 Carrier Board
> -          - const: toradex,colibri-imx6ull-emmc        # Colibri iMX6ULL 1GB (eMMC) Module
> +              - toradex,colibri-imx6ull-emmc-aster    # Colibri iMX6ULL 1GB (eMMC) on Aster Carrier Board
> +              - toradex,colibri-imx6ull-emmc-eval     # Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation B. V3
> +              - toradex,colibri-imx6ull-emmc-iris     # Colibri iMX6ULL 1GB (eMMC) on Iris Carrier Board
> +              - toradex,colibri-imx6ull-emmc-iris-v2  # Colibri iMX6ULL 1GB (eMMC) on Iris V2 Carrier Board
> +          - const: toradex,colibri-imx6ull-emmc       # Colibri iMX6ULL 1GB (eMMC) Module

The description already says 'Colibri iMX6ULL 1GB (eMMC)'. Why repeat 
that everywhere?

>            - const: fsl,imx6ull
>  
>        - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Wi-Fi / BT Modules
> -- 
> 2.25.1
> 
> 
