Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B486DC9FF
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 19:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbjDJR2C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 13:28:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjDJR2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 13:28:01 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 386B4E74
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 10:27:59 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gb34so14239521ejc.12
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 10:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681147678;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d9mHuc/0jkxbtCProBti3bz+sK5Di7+vyx8qV3tJ7YI=;
        b=R9adl5n07bSFGSJT0gB0RCP7MH8bgWX/Bbx4Wj5w3/wwG4PhmjGDgZjlxrD0t10/M2
         lfD+MMiH56z6PMJ7NoS82YTxQeNNzmp9BE8EV7RTsnA3+wbj5FRKE+4rLG0CAX1+vWGq
         6giF61LUf/qH0rIvdyic7EZifsb2wgLlK9jtcYNZ9H78UoIejZsiUawChqZO/tnBr0Fs
         7io8Mk+Vuta/8n8R3jTgruJoygMEaEa5vMPrDOLulmDJdU10YEzDbstJ1F4fo5MlQ8/w
         cSc+A2ZJc34P6+8h2kuW0jbgNhf82BTEZ4Wb0hIEdSlNGaEZk2FsspzHHCnLJamSHEI4
         x7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681147678;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d9mHuc/0jkxbtCProBti3bz+sK5Di7+vyx8qV3tJ7YI=;
        b=UijaaO8PuDduJ/mzc4AhCxbvoR/9YZ7sHOaN58I3s19zzfH3Ib7o9Yk6giFeu/nnqA
         CB8zOLNtuT9/QsP1yIwFpMJGIzR9s622lFwqi1IbFNV0/hEEFfB3svAQIDD5ik664tZh
         SCTnJ/qABGtbyqDBG7saYNq92LcGbotc4ND8OD0G5pyadD383y66CQeiQ/pgpxLD+YG/
         N5dkbnmXDsaLhZNyBrf6vOTN2kEtZaHAoNTVw8gSCiRNAbb4zvAD6dsTSBTqcwwssxsi
         GtZle+ZKvKHzHsHIIbOuBS7bdXEz/4B7IIRCkTUZXtVcABd/SgCxG5OueXv3AgIN7nR+
         sZMg==
X-Gm-Message-State: AAQBX9exMXwSw/RGq3HXaR8+uiF2Wr21cju0pvOcUaEKDuQgNhECrF0J
        0gt0VZ4SsZn6KO31eaAtmvoGCtu8mZWPFZO/ME673Q==
X-Google-Smtp-Source: AKy350YfN+2UEzC0NlN4x6X62S+nRiFw26ejYnSb99QGBYY/lmtcP5njB3CNLnqALOGz4qy5AbaRHw==
X-Received: by 2002:a17:906:80cc:b0:939:a610:fc32 with SMTP id a12-20020a17090680cc00b00939a610fc32mr7335057ejx.53.1681147677725;
        Mon, 10 Apr 2023 10:27:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1a6c:6968:e633:48df? ([2a02:810d:15c0:828:1a6c:6968:e633:48df])
        by smtp.gmail.com with ESMTPSA id gl2-20020a170906e0c200b00930aa50372csm5268807ejb.43.2023.04.10.10.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 10:27:57 -0700 (PDT)
Message-ID: <ffe813e4-e3ad-3dff-b8e5-42b0f82faed3@linaro.org>
Date:   Mon, 10 Apr 2023 19:27:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/4] dt-bindings: mfd: x-powers,axp152: Document the
 AXP15060 variant
Content-Language: en-US
To:     Shengyu Qu <wiagn233@outlook.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        wens@csie.org, lgirdwood@gmail.com, broonie@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230407141813.89-1-wiagn233@outlook.com>
 <TY3P286MB26117891DFB2DD615A7C54EF98969@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY3P286MB26117891DFB2DD615A7C54EF98969@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2023 16:18, Shengyu Qu wrote:
> The X-Powers AXP15060 is a PMIC seen on Starfive Visionfive 2 board. Add
> relative compatible item and CPUSLDO support for it.
> 
> Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
> ---
>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 3 ++-

I received cover letter disattached from rest of patchset and everything
duplicate. Please check your process of sending patches.

>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index b7a8747d5fa0..e150a8bf040a 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -92,6 +92,7 @@ properties:
>            - x-powers,axp806
>            - x-powers,axp809
>            - x-powers,axp813
> +          - x-powers,axp15060

So you have chosen order by absolute number, not alphabetically. That's
fine, but keep it for the future entries as well. :)



>        - items:
>            - const: x-powers,axp228
>            - const: x-powers,axp221
> @@ -260,7 +261,7 @@ properties:
>            Defines the work frequency of DC-DC in kHz.
>  
>      patternProperties:
> -      "^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|rtc(_|-)ldo|drivevbus|dc5ldo)$":
> +      "^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|cpusldo|(dc1)?sw|rtc(_|-)ldo|drivevbus|dc5ldo)$":

It seems fixed strings are at the end of entire pattern, so "cpusldo"
should be before "drivevbus".



Best regards,
Krzysztof

