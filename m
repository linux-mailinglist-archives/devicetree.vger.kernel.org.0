Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 229AB46E68E
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 11:26:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234335AbhLIK3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 05:29:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234319AbhLIK3x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 05:29:53 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2EF7C0617A2
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 02:26:19 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id r15so9854059uao.3
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 02:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=n1e+HtRg9maQtc2GLxQiCgRrqKPDjfCHzrqnIVz2IyI=;
        b=hIhiw8NfbkDX84PoIgWiuo2LnvGpIzgmT1aR76Z0WPIXHtxQWDaNb1/Q6SbUwXUs77
         7vTvAtsrCiOx5Gb7h8GSvNCGPmca7yXkUZti+RAdqWIWgoC3aHNvoa68hCL5akLSsO6c
         4rIZbaD0hBixRCLygqOA9+BJTGhi1j4IIL1v6uUS1G9sizof0JNtncXfUMjF0d07e8CW
         HCy4BPujk8eQSwQcQbYcU6+aF44t02BlfWGeQfbD9Wl4ywSvDBq7krGRdsHr4KTiJt0L
         rbiEWP6AUbf5kZJwC9/ROPA0gNp22ydzbxkN/l+tMej6/31N9D0rHhgKk5PGfhYfbZx9
         jS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=n1e+HtRg9maQtc2GLxQiCgRrqKPDjfCHzrqnIVz2IyI=;
        b=bDZYGOlI5+0HFN1Uadkh+QNLmifO0XZ96l1DXLAPbd8ZUgqi0CESBsCryheZYSfkaf
         d9O08bD5MgpRcOvDnAp32F6v8ETK0IpuzZkQ7LmKWRnyMCYlapCWEA5DvDVAZrmUIjFg
         PmqtZmWDk1LmzJuR+rbTEcTbVwLOvwnKdsiB63I4qnRzg4rfCU6D+Awv2BtJITXBERuq
         kTs2+W6FcSeuHJiyE1AeGzU2HosnfpO4UvLO97qoUkJGfo+szgp/Xkn9L8/ISorbMGW7
         86QaftJqR1Yrlvkr2OQJKzPAaF3HsLt3Bw7q6eOVc99nbs/9T4m2JjdUmA4L7k2MX1xG
         X3gw==
X-Gm-Message-State: AOAM533d/8RlDFNxAKx9Ks60sA8IXO2xe7VqXyCUcmAKqmq9yH+10ya0
        jvvpM4JCWYd0aHETgDMwHddzLA==
X-Google-Smtp-Source: ABdhPJwJv3mXRM/g6+dEqNxe+KKZgULXoBaIC5TH7Y0NcdNLGdr+N3FNJpkSYLsYjEsMxvQvMtvoVQ==
X-Received: by 2002:a67:d78c:: with SMTP id q12mr6398800vsj.35.1639045578937;
        Thu, 09 Dec 2021 02:26:18 -0800 (PST)
Received: from eze-laptop ([186.122.18.54])
        by smtp.gmail.com with ESMTPSA id t132sm3543495vkb.19.2021.12.09.02.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 02:26:17 -0800 (PST)
Date:   Thu, 9 Dec 2021 07:26:07 -0300
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To:     Adam Ford <aford173@gmail.com>
Cc:     linux-media@vger.kernel.org, benjamin.gaignard@collabora.com,
        cphealy@gmail.com, aford@beaconembedded.com, nicolas@ndufresne.ca,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-staging@lists.linux.dev
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
Message-ID: <YbHZvysazqYeZ8h3@eze-laptop>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208225030.2018923-5-aford173@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thanks for the patch.

On Wed, Dec 08, 2021 at 04:50:23PM -0600, Adam Ford wrote:
> The G1 and G2 are separate decoder blocks that are enabled by the
> vpu-blk-ctrl power-domain controller, which now has a proper driver.
> Update the bindings to support separate nodes for the G1 and G2
> decoders using the proper driver or the older unified node with
> the legacy controls.
> 
> To be compatible with older DT the driver, mark certain items as
> deprecated and retain the backwards compatible example.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
>  1 file changed, 64 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..eeb7bd6281f9 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,29 +15,39 @@ description:
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
> +    minItems: 1
>      maxItems: 3

Is it really useful to keep the deprecated binding nxp,imx8mq-vpu
as something supported by the binding file?

In other words, can we drop the deprecated binding from this file,
while keeping the support in the driver for legacy device-trees?

[..]
> +
> +  # VPU G1 with vpu-blk-ctrl
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/power/imx8mq-power.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vpu_g1: video-codec@38300000 {
> +        compatible = "nxp,imx8mq-vpu-g1";
> +        reg = <0x38300000 0x10000>;
> +        reg-names "g1";
> +        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "g1";
> +        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> +        clock-names = "g1";

reg-names, interrupt-names and clock-names should be removed
given for this device there's only one of each.

This will make the binding actually quite easier, but it also
means you need to make some changes to struct hantro_variant imx8mq_vpu_g1_variant
to make it work properly.

See Rob's feedback on the SAMA5 VPU binding:

https://yhbt.net/lore/all/20210324151715.GA3070006@robh.at.kernel.org/

Also, take a look at drivers/staging/media/hantro/sama5d4_vdec_hw.c
for reference.

> +        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +    };
> +
> +  # VPU G2 with vpu-blk-ctrl
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/power/imx8mq-power.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vpu_g2: video-codec@38310000 {
> +        compatible = "nxp,imx8mq-vpu-g2";
> +        reg = <0x38310000 0x10000>;
> +        reg-names "g2";

And same here.

Thanks!
Ezequiel
