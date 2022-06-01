Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB0453A46E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350742AbiFALz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243564AbiFALzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:55:23 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6366D6D965
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:55:21 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id jx22so3188915ejb.12
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4OpO3uKfRtKodys5+/EnMixlHpVSJs70BVrbM2XAtfI=;
        b=XLNphxDHaRzoOejyaPEbUl7phZ+HXq507aC+nEXNk7/SBkgJdljf+/nio0hIa05Ewz
         HlhdlQTrN66hw0qiQ79JNN37F72one4RmyfdykzPzFeA4bO8il8W88lB+RHmYwinEXl2
         6GfA6Mmvo3aZMeMmhATm/jKwGiZNTE/kx7MMu2j7yA+6nD4Rw4DC9CjSQhUbqlRVL/CL
         K1KtuC4RppDslOJl9J9CynIBTW2qogpgK9cEvGI946Ncg6XrCb5ZAKDjPcyLNdVkmBO9
         XVyvetr7WhsV4HBjZCO3OZsDuzmd3S3abCO6paJ/2I0o7lKRC/DhjLdDJVrw/0sJjSy8
         R8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4OpO3uKfRtKodys5+/EnMixlHpVSJs70BVrbM2XAtfI=;
        b=kjb9izeQjO8zNSWCYlvc9hU13yYqPzUgKoI5hnFlx+JJtZDh3MZ69v1ZvrZgHFM3cT
         8CuWyyaEpwfCgCoBqnckOHLI25p314qMhIDEMxFlsksjA58rxnp1cG650MZAH/nsTPPS
         vggamcJEY1DJ6EPYVFn8/+g8/c+1dUk9bcwMdl3Uc4x8KahWo2naGkj7reVy7u+/5CW+
         NYh/PKmOROISC8YF4dR/1rEKqHcxORNOKeA/nhQ9QNt1s4cv6JcdYKaEvi3RnJ89va7v
         hShUGuDBBic6+xSw5gZ7smlLE/vYZwu9klhT5W413TIl/dtaaqnQrl8gLTFk4Zf4OVDw
         amaA==
X-Gm-Message-State: AOAM530jxbqdfc+uV2C3K4CUwVHQhDkOTflHGxHVmHImPMXgZPWRFKai
        +S79bMjAcQxEwVlIp0QKpUmZZQ==
X-Google-Smtp-Source: ABdhPJzQpW3tl8/Gt3VogC+OWYGOrWx5aQpwt6DckwkqC0AbGuziXMIS9ExL1uGEI1ZQQd6JRPuIlw==
X-Received: by 2002:a17:906:e87:b0:6df:8602:5801 with SMTP id p7-20020a1709060e8700b006df86025801mr57845149ejf.140.1654084519977;
        Wed, 01 Jun 2022 04:55:19 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o13-20020a17090608cd00b006fedcb78854sm624896eje.164.2022.06.01.04.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 04:55:19 -0700 (PDT)
Message-ID: <cf90d9aa-1ba9-9619-35b7-8c2de436fc12@linaro.org>
Date:   Wed, 1 Jun 2022 13:55:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/8] dt-bindings: interconnect: imx8m: Add bindings for
 imx8mp noc
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, djakov@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        abel.vesa@nxp.com, abailon@baylibre.com, l.stach@pengutronix.de,
        laurent.pinchart@ideasonboard.com, marex@denx.de,
        paul.elder@ideasonboard.com, Markus.Niebel@ew.tq-group.com,
        aford173@gmail.com
Cc:     kernel@pengutronix.de, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        Peng Fan <peng.fan@nxp.com>
References: <20220601094156.3388454-1-peng.fan@oss.nxp.com>
 <20220601094156.3388454-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601094156.3388454-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 11:41, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8MP features same NoC/NIC as i.MX8MM/N/Q, and use two compatible
> strings.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/interconnect/fsl,imx8m-noc.yaml     | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> index b8204ed22dd5..0923cd28d6c6 100644
> --- a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> +++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> @@ -26,16 +26,22 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - fsl,imx8mp-nic

Please order the entries alphabetically, so 8mp goes after 8mm.

>                - fsl,imx8mn-nic
>                - fsl,imx8mm-nic
>                - fsl,imx8mq-nic
>            - const: fsl,imx8m-nic
>        - items:
>            - enum:
> +              - fsl,imx8mp-noc

ditto

>                - fsl,imx8mn-noc
>                - fsl,imx8mm-noc
>                - fsl,imx8mq-noc
>            - const: fsl,imx8m-noc
> +      - items:
> +          - const: fsl,imx8mp-noc
> +          - const: fsl,imx8m-noc
> +          - const: syscon

This is a bit confusing - why this is also fallbacked as syscon?

>        - const: fsl,imx8m-nic
>  
>    reg:


Best regards,
Krzysztof
