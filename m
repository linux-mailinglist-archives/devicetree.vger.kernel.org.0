Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0235B5E8118
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 19:49:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232406AbiIWRt1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 13:49:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232105AbiIWRt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 13:49:26 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE40614F82D
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 10:49:24 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id d42so1504627lfv.0
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 10:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HdvrftlRyQqTQoTlDeBTdBmMcZfxBFXOHDyKHrW5BYo=;
        b=gEbo9/6Ij4ZqttNQUIKlqqcit/PgIMUSwwYj9Gn1owZSH3635JkSkfvBkRro5AHsgu
         0vafFE4rhOHyLPgUGGZCHjWJa/IvHPn+M1TBiT3pagA4U92lm9V+mqLjP59R9BCNSoOA
         wuiudFiEQZdf41trVSTP/0eMDO1wA0m/Z2UyYxB56yr2/7rB0QzoWhCFbOseuaGOAZvS
         P8TCLzSTVwitVbSrpUIoNlbnoaU4cklnxJ6myXAxVGXE6EwJEznopZ7tF/LZPqqoZ8Nx
         OJ+jJNVO0yY8/yRn/1n0eT3ddZ9CacZmAjUNRO7SnSj2J2uQMOQPKesFVLzDLNaGBV5C
         OoUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HdvrftlRyQqTQoTlDeBTdBmMcZfxBFXOHDyKHrW5BYo=;
        b=0OapwEgeEY8oOx2JAH5c9I2zvPssyS4CTVnK3tRYNROsGiZlb6/+9yPFIH31bGOhVp
         BtojvWklzx3T2lUIl3oDkNfiqp6gIDfkA9rYmFDGz2rd1QJcrEbJuEy5pO+J3d+bRUBA
         OVEbw1rBSEHuXfk9DuaU5VGIUZxUx4GaShTRPTtxs1KOEGUqB7VKjIIa1XLq06T89TAN
         ZX98EPxJ9CVwt+fjGmaSbsyerRDY9CAUsKp2tI7pT+eyxwaOpCOvPSBPMfDXSpYukBJB
         f4QW10GtE4Ab9IupdCMZ2B/OjoJW1B3/LvJa0PeFrSpk/gEjRLfMOFk/hQSJBYr8Zys+
         f5fg==
X-Gm-Message-State: ACrzQf22YwajXOi+JfNT8Ay/XEw/ny+cVco4EGizptMBy1BLaezjs0vC
        pudUIfXQEDfAhPHVBL7WJ4yqyjHtRyAZdw==
X-Google-Smtp-Source: AMsMyM6fZ4WmmpIgtCAsa/zZUpZ4zWz5j4kJhqdHx6NUyFzaAoYpQPSOKNeOTiJWV0RMcGh/h7uEsw==
X-Received: by 2002:a05:6512:3e14:b0:499:1f71:1680 with SMTP id i20-20020a0565123e1400b004991f711680mr3737503lfv.114.1663955363194;
        Fri, 23 Sep 2022 10:49:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a8-20020a05651c010800b0026c3975f488sm1479001ljb.26.2022.09.23.10.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 10:49:22 -0700 (PDT)
Message-ID: <966b46f5-ed3b-9daa-4cfb-602a534a8bfc@linaro.org>
Date:   Fri, 23 Sep 2022 19:49:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCHv2 1/3] dt-bindings: mmc: synopsys-dw-mshc: document
 "altr,sysmgr-syscon"
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, jh80.chung@samsung.com
Cc:     ulf.hansson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220922220308.609422-1-dinguyen@kernel.org>
 <20220922220308.609422-2-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922220308.609422-2-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 00:03, Dinh Nguyen wrote:
> Document the optional "altr,sysmgr-syscon" binding that is used to
> access the System Manager register that controls the SDMMC clock
> phase.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>

Thank you for your patch. There is something to discuss/improve.

> ---
> v2: added
> ---
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml    | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index ae6d6fca79e2..aece6a337262 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -38,6 +38,18 @@ properties:
>        - const: biu
>        - const: ciu
>  
> +  altr,sysmgr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to the sysmgr node
> +          - description: register offset that controls the SDMMC clock phase
> +    description:
> +      Contains the phandle to System Manager block that contains
> +      the SDMMC clock-phase control register. The first value is the pointer
> +      to the sysmgr and the 2nd value is the register offset for the SDMMC
> +      clock phase register.

You need to restrict it per variant (altera). Move the allOf from top of
the file to place above unevaluatedProperties and add if:then: making it
false for other variants.

Best regards,
Krzysztof

