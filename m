Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8A544987F0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 19:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245063AbiAXSLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 13:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244983AbiAXSLC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 13:11:02 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2901C06173B
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 10:11:02 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id p203so10402652oih.10
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 10:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bLjR18B4+O+BIq4G++lcJm85fWQaGrH2dHhZhdZDiNg=;
        b=4Pwvu6wbVKNMT1IIQfGgwf/cWB5DOhgoxtmYK9b6CJBDR/cUI8aLbOZCfdjQK3m8Oy
         fYczIA0hgH9T+qPlgcE6d5o896j4zVri+HqCwa1ld7/XoTdCR1F2qd4oNDAFDyCAyjfc
         1e91X48DOh4n4D+LcPA17yp8DIYCconJ51xP7BnflNfJ/vSnPtRWU0GSjkiDJU0kV4Kc
         XLMa7fgbCO8Vyns+V1qjIAnOKSZGIDxf96+kQ+kHGz3tIBpgAFuflEDcENF7GRTgSxR5
         WzSvGjETaJE1YsmuJ2b0vU2pJw1+fsx0n5zBJrd+KI4zrRBgmZDKsqTWwd0R8IyjQGp3
         oGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bLjR18B4+O+BIq4G++lcJm85fWQaGrH2dHhZhdZDiNg=;
        b=t/D5tu8BW1BNAvP4wRudwYNVJa/eL4tMFWWLm6W+tpIJXt8RJJJBSXgMtYpSB9iyRy
         gW5MMR4TenB4SxU5VB77KCCygrmg4QWEwD9F9TGHZTby2yxH9bCHlsRldq43hQ4k5dmp
         ksr1u8V6rNnF6BTXK+039bjHxT89gbVCFItFBHEMRsglNi8MwFIlJfCWaradDkIHwPTh
         cvD6zHgkRnJyYLEWH/vXCdHoe3aSX+uaKaVgMKzOPApkWUQgMsL8alVP35LZlv9M3wxL
         s9sULQrZQ2XIhTKQKPRGlD6qh/YetK3Qde2/0YrFIXrjwIAyRbzGjaMnE/j5dRVZbs2g
         ETgQ==
X-Gm-Message-State: AOAM5334E+cM+UVRRd0Q8GmrTChLG7tXJvZVDPGEAvgCpFr537EGbiFS
        TOMXM3Bo38Btc91zfM+Y81ovZg==
X-Google-Smtp-Source: ABdhPJxJ2boFuR0dh+CNPK3ZdaELWLmFBxuDXsa8zlM+dj8aIG0igVhT92WI5bJwXPs1aRkb87N7PQ==
X-Received: by 2002:a05:6808:1644:: with SMTP id az4mr2599697oib.18.1643047860800;
        Mon, 24 Jan 2022 10:11:00 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
        by smtp.gmail.com with ESMTPSA id b7sm4602674ooq.30.2022.01.24.10.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 10:10:59 -0800 (PST)
Date:   Mon, 24 Jan 2022 15:10:53 -0300
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To:     Adam Ford <aford173@gmail.com>
Cc:     linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        shawnguo@kernel.org, aford@beaconembedded.com,
        Rob Herring <robh@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 04/10] dt-bindings: media: nxp, imx8mq-vpu: Split G1
 and G2 nodes
Message-ID: <Ye7rrQHtu1rnbdHm@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-5-aford173@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 23, 2022 at 08:31:18PM -0600, Adam Ford wrote:
> The G1 and G2 are independent and separate decoder blocks
> that are enabled by the vpu-blk-ctrl power-domain controller,
> which now has a proper driver.
> 
> Because these blocks only share the power-domain, and can be
> independently fused out, update the bindings to support separate
> nodes for the G1 and G2 decoders with vpu-blk-ctrl power-domain
> support.
> 
> The new DT + old kernel isn't a supported configuration.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..9c28d562112b 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,33 +15,20 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
> +      - const: nxp,imx8mq-vpu
> +        deprecated: true
> +      - const: nxp,imx8mq-vpu-g1
> +      - const: nxp,imx8mq-vpu-g2
>  
>    reg:
> -    maxItems: 3
> -
> -  reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    maxItems: 1
>  
>    interrupts:
> -    maxItems: 2
> -
> -  interrupt-names:
> -    items:
> -      - const: g1
> -      - const: g2
> +    maxItems: 1
>  
>    clocks:
> -    maxItems: 3
> -
> -  clock-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: bus
> +    maxItems: 1
>  
>    power-domains:
>      maxItems: 1
> @@ -49,31 +36,33 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - reg-names
>    - interrupts
> -  - interrupt-names
>    - clocks
> -  - clock-names
>  
>  additionalProperties: false
>  
>  examples:
>    - |
>          #include <dt-bindings/clock/imx8mq-clock.h>
> +        #include <dt-bindings/power/imx8mq-power.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu_g1: video-codec@38300000 {
> +                compatible = "nxp,imx8mq-vpu-g1";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +        };
> +  - |
> +        #include <dt-bindings/clock/imx8mq-clock.h>
> +        #include <dt-bindings/power/imx8mq-power.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> -        vpu: video-codec@38300000 {
> -                compatible = "nxp,imx8mq-vpu";
> -                reg = <0x38300000 0x10000>,
> -                      <0x38310000 0x10000>,
> -                      <0x38320000 0x10000>;
> -                reg-names = "g1", "g2", "ctrl";
> -                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -                interrupt-names = "g1", "g2";
> -                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> -                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> -                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> -                clock-names = "g1", "g2", "bus";
> -                power-domains = <&pgc_vpu>;
> +        vpu_g2: video-codec@38300000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38310000 0x10000>;
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
>          };
> -- 
> 2.32.0
> 
