Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA2B75C06B
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 09:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjGUHw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 03:52:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229902AbjGUHwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 03:52:25 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46DEF2726
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 00:52:24 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e344efd75so3510043a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 00:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689925943; x=1690530743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tubfeJLXlOOQbBKP+IRKS7YUuXu1LWWYE1RXHioMvKw=;
        b=BIeqATePRYqimp1Y3zHSsjrDq6ltEkiOMkMVyMWK/rhsCQhWCrFi0GfuWNR3cURprm
         WQDa2Pyg2S8EG5Ji9TyBACGnxGaBi4Xa8syzuB0CwZ7b07e+yqyKK9Yd9cJ9O/oMIjo3
         /kJ0DhtE9NYaq0WeNTHs8kj1fAs+KnXMy+E/UO1zLW+wg2j6t1S4ELDfbX0g+kmHWoAz
         HEAQCGRDo2xNp6Yt12zEltY48K05xxe4vLX9LddKxHLOv+54wDOX5D0dpMuf4Y5qztj/
         /zLvm0bSX92GkSUarJH3irDsi2SoAlLmpcvTGhPsC0esUE+ayTCUuIOLhiqO3sKopOJK
         LArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689925943; x=1690530743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tubfeJLXlOOQbBKP+IRKS7YUuXu1LWWYE1RXHioMvKw=;
        b=IKBUufO00x4+UCj1i4DIaJhtTIX3rjyQD7LduM+ImMymE6HWDbY9MNybSQtoU/4Lcj
         gT+TK9X3s12wXSxy+68IAJOP6FJoYyf/VEiOMR/AVJh/b0OgVC6vQIMgOw4ICBXAitF2
         g3tMZ17n8RtYWVltsf3ddRZGW00HuxoPdF6C13bFcSvbDD5x3Su3iBOqDSs0MgwXgEVH
         BQW+C7uD9x6RKLbJyhAOp4Jm/mnSUz2uTo88NNs3pw6mh1aTZkl4ryyCXJXxLafc0Syt
         Z5oMyemXrmXj4E8wnmaG4XvNfpLo+JKfiEirQS7b7qB8YF5ToWAdi1ag8dhAtWk2qVmt
         qy0Q==
X-Gm-Message-State: ABy/qLZ5QMk7mOw/MRpfm4ma4oKD/ufIo4feePhF6g17aqPVKrbDpBqE
        ULcM7nJ9sIHKQtv5ZLi3NEG7MQ==
X-Google-Smtp-Source: APBJJlGmSml79bf2473nCH9lhpq2Pv6Adblvnrs0WjenVWxAjswr2B6m+qsnuVtGOZKDdKBWfsLVMQ==
X-Received: by 2002:a05:6402:1484:b0:521:d368:1628 with SMTP id e4-20020a056402148400b00521d3681628mr1202596edv.16.1689925942691;
        Fri, 21 Jul 2023 00:52:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n23-20020a056402515700b00521da86cbcdsm1753489edd.7.2023.07.21.00.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 00:52:22 -0700 (PDT)
Message-ID: <1eaaad13-f336-bbeb-77fc-7c5509afc15f@linaro.org>
Date:   Fri, 21 Jul 2023 09:52:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: fsl: Add VAR-SOM-MX6 SoM
To:     James Hilliard <james.hilliard1@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Andreas Kemnade <andreas@kemnade.info>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230721073626.3673429-1-james.hilliard1@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230721073626.3673429-1-james.hilliard1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 09:36, James Hilliard wrote:
> Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 2510eaa8906d..a3ab78429799 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -298,6 +298,7 @@ properties:
>                - udoo,imx6q-udoo           # Udoo i.MX6 Quad Board
>                - uniwest,imx6q-evi         # Uniwest Evi
>                - variscite,dt6customboard
> +              - variscite,var-som-imx6q   # i.MX6 Quad Variscite VAR-SOM-MX6 module

SoM cannot be used on its own.

Best regards,
Krzysztof

