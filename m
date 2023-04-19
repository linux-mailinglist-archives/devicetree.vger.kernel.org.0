Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58DB06E7A36
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 15:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232953AbjDSNCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 09:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232543AbjDSNCt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 09:02:49 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F285FC7
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 06:02:47 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id fw30so28671828ejc.5
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 06:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681909366; x=1684501366;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8km01v+AsIzRKdAlrr0KvdJekH9kf5ltyq2aXyHrieo=;
        b=D5O1qyYGjSQa+JcJwDfFlH9YdTiHAPcBDMKcQLbRXflYJ7RR8V49omri0rgWes/mjM
         zDbapRCM8PgTdMpoXbXZ132R3h5Juf/1sNcIUhnlIy9YplcDJMQaGuFsnk4U1/Lx39B5
         9KrNsRlwIv6GjLrisG/CUAYyYGphYAxU2VQThBe3H/7/3wZjakiuOT7jbWPVmS1PIu8A
         Yvtt6Gvv26X1Kn91RD4O1ARdCnEQb11MSmS3lznTpdq8Vc2NcprYF9ZOBkWIiMI0v94w
         Eo3vT+3LSQQQZdMF726HqGFTL2mZ3rUJVMbz/rQQjUjrOEYpguC+Ij0/uC0UN+jLczjU
         Wakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681909366; x=1684501366;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8km01v+AsIzRKdAlrr0KvdJekH9kf5ltyq2aXyHrieo=;
        b=dBmF5OX2rIrEOPXC5Ne9elZgp1/qVpdMa4xkRTdrmPJ+4CeYIeFLjFMs8RqTC6CDBA
         PnfY1XIff3QJ3+J62o7QT6qZsJO2ALxrDzEA2Qi+zTMcTHww3HiE9eIGrza4d7Q++6QF
         YpQo1tB7dxNA/VwsE28Xlryr+XV3JYY5yYOoi6C7OD7+wG1cfM7v5O5d0NCooHX9gvIc
         OGCB1hrMYdakcMX6jxWUjhHvXFRxPFTZ50IChcm6fLo7t3D0MeoY8xo4ZZprCGvzbm2h
         cmppK1AAdUMEjKOakX9MviNhrmi2REt/J89pjBHDAsub0Q2TuKTKeLRBfHY54bAmT4Rs
         eV8w==
X-Gm-Message-State: AAQBX9d86udRQrfhUB0B81GR2osC5TSZ43AMuNFYmkUQisSrqdsT2XhS
        i20CNhtcmOzh+78F+CihNSAdsw==
X-Google-Smtp-Source: AKy350bQj5ebLuFff0NLlfexWn17JrgpMNYHvclyn0mKtEsAvSL3yB1BiISTdmAZ7D0RmkSMgxP4uw==
X-Received: by 2002:a17:906:82c5:b0:94b:88c6:9282 with SMTP id a5-20020a17090682c500b0094b88c69282mr17830189ejy.22.1681909366372;
        Wed, 19 Apr 2023 06:02:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b7d8:d88b:1fac:c802? ([2a02:810d:15c0:828:b7d8:d88b:1fac:c802])
        by smtp.gmail.com with ESMTPSA id f10-20020a1709064dca00b0094f2dca017fsm5971762ejw.50.2023.04.19.06.02.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 06:02:46 -0700 (PDT)
Message-ID: <c568f571-22ee-0d85-043f-4673d76bf364@linaro.org>
Date:   Wed, 19 Apr 2023 15:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 2/7] arm64: dts: imx93-11x11-evk: added ele-mu
Content-Language: en-US
To:     Pankaj Gupta <pankaj.gupta@nxp.com>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        gaurav.jain@nxp.com, sahil.malhotra@nxp.com, aisheng.dong@nxp.com,
        V.Sethi@nxp.com
References: <20230419175538.855493-1-pankaj.gupta@nxp.com>
 <20230419175538.855493-3-pankaj.gupta@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419175538.855493-3-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 19:55, Pankaj Gupta wrote:
> adde support for ele-mu for imx93-11x11-evk.

Typo, missing capital letter.

> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 41efd97dd6d6..ffb7cb8ed228 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
> - * Copyright 2022 NXP
> + * Copyright 2022-2022 NXP

?


>   */
>  
>  #include <dt-bindings/clock/imx93-clock.h>
> @@ -741,5 +741,14 @@ media_blk_ctrl: system-controller@4ac10000 {
>  			#power-domain-cells = <1>;
>  			status = "disabled";
>  		};

Missing blank line.

> +		ele_mu: ele-mu {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "fsl,imx93-ele";
> +			mboxes = <&s4muap 0 0 &s4muap 1 0>;

Two phandles, not one.

> +			mbox-names = "tx", "rx";
> +			fsl,ele_mu_did = <3>;
> +			fsl,ele_mu_id = <2>;
> +			fsl,ele_mu_max_users = <4>;
> +			status = "okay";

Why do you need it?

Run your patches through internal review to fix such obvious mistakes.
There is entire NXP to help you, instead of relying on us to fix trivial
code style.

> +		};
>  	};
>  };

Best regards,
Krzysztof

