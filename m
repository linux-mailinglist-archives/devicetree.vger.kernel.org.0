Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF7556507D
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 11:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233070AbiGDJMP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 05:12:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiGDJMO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 05:12:14 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D1751D2
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 02:12:13 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id k15so14655291lfv.11
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 02:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sMtVrpezShBuwcHrneDKoHxgcFVzeJwm+MAWXmI0nU0=;
        b=mNZIydifEE1JBpfDgkjlLPbKlyOUQeRSUqQa6CQLT9OF8XkeW/ZJ4oYcDIqK/5MlYf
         r1XNVgLhiovGfrpwGprmRTWiisNvOjAzP2kq33ajN18dz3zZhNKo7ISuB7HaRTi3Ygrp
         iw7+oZdHsM4ZrtCpzwPmZ0xJQKlOrVOBatiOWp21Mh7CjiPesSfSaxx9GU1txYSPDfxi
         hXpREtW03SMrXzu5ba0AdD9f9e86mFDiv9XsPpSV5Zq9hW6VnO57um+FTB+THdSWBKHv
         cyhlUics8AQB6hAa8fIltFEQVJjsTJR76zKCC8woVm6EG/V87ORn1IVp74H9olw33EjD
         GLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sMtVrpezShBuwcHrneDKoHxgcFVzeJwm+MAWXmI0nU0=;
        b=VD8/OYtHEBd+QJyhxCAOXzx2c/f+hYwSjXguEzxm6GiNYDeQBUT/w8IroygK8ElGuQ
         lJFgfeq7X6rCFG8mo/D3cv5pKDmvUD3bWMJ4SnypoLkpBeRfDiFCJCCgn872HF0RNBou
         Dc0l0qPetk9LdDAcbG/3XeUpeRxfoC8t1koLmnuHFQekca4GgipmxMkcbtGQE/TLkCSZ
         M246nYtsoEq7ad//+Ysq0eckvO37bQmJ3uEv7jPpl/UUFP0vHXjiM/pmWrrksNgHt4i2
         OmuzpYks2iair8ww/FHYkqCwfonowdVuwbuS2+//PPhTVjQwQY/pjVgh1vIrHKdnlOG4
         jaAg==
X-Gm-Message-State: AJIora+PdgL7yIGKLp6dvI1yfafGLJU2rNbYZyTOWQOLWTDVoPgVXtnv
        NzdLWB64krIWReqfB7XuLp5C/g==
X-Google-Smtp-Source: AGRyM1vDjFRe/KRpPzDWJe4ostTBzue/9izXe/wL6YMqW/loMLucg9g2bltguu+0oMfcBHrPwHwzWw==
X-Received: by 2002:a05:6512:2254:b0:481:4eab:7e39 with SMTP id i20-20020a056512225400b004814eab7e39mr13673738lfu.468.1656925931437;
        Mon, 04 Jul 2022 02:12:11 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y9-20020a196409000000b00481541fb42asm2077966lfb.308.2022.07.04.02.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 02:12:10 -0700 (PDT)
Message-ID: <ef7e501a-b351-77f9-c4f7-74ab10283ed6@linaro.org>
Date:   Mon, 4 Jul 2022 11:12:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] dt-bings: net: fsl,fec: update compatible item
Content-Language: en-US
To:     Wei Fang <wei.fang@nxp.com>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, peng.fan@nxp.com,
        ping.bai@nxp.com, sudeep.holla@arm.com,
        linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com
References: <20220704101056.24821-1-wei.fang@nxp.com>
 <20220704101056.24821-2-wei.fang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220704101056.24821-2-wei.fang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2022 12:10, Wei Fang wrote:
> Add compatible item for i.MX8ULP platform.

Wrong subject prefix (dt-bindings).

Wrong subject contents - do not use some generic sentences like "update
X", just write what you are doing or what you want to achieve. For example:
dt-bindings: net: fsl,fec: add i.MX8 ULP FEC

> 
> Signed-off-by: Wei Fang <wei.fang@nxp.com>
> ---
>  Documentation/devicetree/bindings/net/fsl,fec.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/fsl,fec.yaml b/Documentation/devicetree/bindings/net/fsl,fec.yaml
> index daa2f79a294f..6642c246951b 100644
> --- a/Documentation/devicetree/bindings/net/fsl,fec.yaml
> +++ b/Documentation/devicetree/bindings/net/fsl,fec.yaml
> @@ -40,6 +40,10 @@ properties:
>            - enum:
>                - fsl,imx7d-fec
>            - const: fsl,imx6sx-fec
> +      - items:
> +          - enum:
> +              - fsl,imx8ulp-fec
> +          - const: fsl,imx6ul-fec

This is wrong.  fsl,imx6ul-fec has to be followed by fsl,imx6q-fec. I
think someone made similar mistakes earlier so this is a mess.

>        - items:
>            - const: fsl,imx8mq-fec
>            - const: fsl,imx6sx-fec


Best regards,
Krzysztof
