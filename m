Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFB6A6C443F
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 08:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbjCVHnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 03:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjCVHnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 03:43:42 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9FA31E1E0
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 00:43:40 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id ek18so69158884edb.6
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 00:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679471019;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lA/e5G4rNQAHj7RMOPW1MBRBFjvSz849rKiCbqJsGfE=;
        b=EwFlWF2cjR6CZPirutu+NzIF17PyFWTqM0QmVqPa21qP4fNUtatuFNMLOIFmv8cEHv
         wonTIvW5UkPfbnb3zBKJJTDTn6Sc+8ot6BaQLeDsJcxxA7A/0pWtelw1mRlSba4SCRXj
         MWlmeLXdHWINvkBcmLJ/qnqQZ1slXM/M7aXnQTXzIX33NZ9SOeEKZN/3X6XQEgitSPnT
         GcRcTqCWKS3vEBwuU4dgO4T42HGxYu9tlQ2KyQpXowX0K86VakA1HIVyBMQqKvrsy94I
         5VLpP5E6B86NaJ/c7pHRX+5vNKfsdup4v4UDwq9+RWMgnkDlqIPVCR9gCdkU8Rp0iESf
         iJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679471019;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lA/e5G4rNQAHj7RMOPW1MBRBFjvSz849rKiCbqJsGfE=;
        b=zpwztMS57wJaDuRMVe4y9Es5vyXtsK2f+JcdNJamHw3wwMBY1nybOoEQn8xTMwX1G6
         lntf5du7hY4yvq03Q9mnQjqEH9IqmxSMJPlK4rsjnYJWrtRhGZohQJP9beJwdeFvFgsg
         2XRX2e+NfrSqXK+E5rbVg0evCb8+j2y55IaIJIPDNJVhxVOvrjcWy9e6I1GIdQxXh0pe
         SWnwjn1pp2JpwHO1HQv7aQPOFSw+BbHmDxwVW7GRHZ/sdZ1BWjurzRaQDg0flz2EMapi
         qgwzD6xNH0usXdlz1dIoxQ6S8BsJLt0I5LPcDDVQWMJfF4Ofuz8AacRKCwv6CRXXqvsg
         HHpg==
X-Gm-Message-State: AO0yUKXQm2c9FpT3uQjyybqXVygKO4G9P1KpFkg+n9ZOZfuWnROrKKJG
        YdqKFaBgtHDHW4RcZEfySLeLAg==
X-Google-Smtp-Source: AK7set+KqGAe4h2S0x3hml78os967F/lJ7W/0E6k2aOGzB+GYvorVjsRALdeum2WSRMclS9WBLJIcg==
X-Received: by 2002:a17:906:3389:b0:8eb:d3a5:b9f0 with SMTP id v9-20020a170906338900b008ebd3a5b9f0mr5450530eja.67.1679471019394;
        Wed, 22 Mar 2023 00:43:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5050:151b:e755:1c6? ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id t7-20020a1709064f0700b008cda6560404sm6761659eju.193.2023.03.22.00.43.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 00:43:39 -0700 (PDT)
Message-ID: <6e4b135b-8cfe-f77c-1fe3-3dc62704f851@linaro.org>
Date:   Wed, 22 Mar 2023 08:43:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/5] dt-bindings: trivial-devices: Add acbel,fsg032
Content-Language: en-US
To:     Lakshmi Yadlapati <lakshmiy@us.ibm.com>, robh+dt@kernel.org,
        linux@roeck-us.net, jdelvare@suse.com,
        krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
        eajames@linux.ibm.com
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230321190914.2266216-1-lakshmiy@us.ibm.com>
 <20230321190914.2266216-3-lakshmiy@us.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230321190914.2266216-3-lakshmiy@us.ibm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 20:09, Lakshmi Yadlapati wrote:
> Add new Acbel FSG032 power supply to trivial devices.
> 
> Signed-off-by: Lakshmi Yadlapati <lakshmiy@us.ibm.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 6f482a254a1d..6fbfa79de343 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -30,6 +30,8 @@ properties:
>      items:
>        - enum:
>              # SMBus/I2C Digital Temperature Sensor in 6-Pin SOT with SMBus Alert and Over Temperature Pin
> +            # Acbel fsg032 power supply
> +          - acbel,fsg032

No, still wrong. Open the file and look at the lines where you put the
code. It seems you add it in random places.

Best regards,
Krzysztof

