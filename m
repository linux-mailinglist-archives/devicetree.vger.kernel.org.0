Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C6FE5BBD45
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 11:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiIRJ7r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 05:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbiIRJ6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 05:58:18 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46E102A73B
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:56:47 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id j9so7689753ljg.2
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cz0sWC5cENZ7vP4TUISPsB3yoAy7s2V0KQsu6rxUMR0=;
        b=enEITnuIhSmNIoO0CSlQdEh0nMmnTE6WFwnBrsEQJoFKvcBjx6kQDApb38fGbFaL+4
         j7tQOBNFYDVlQaNrb93hDSdmTrDURv4SCMxsu7mEeisdUHzLvZhFoLT3K9in+IaE3iz5
         t43vCTSrtx7gErHYGIeIf3FuSHz7djo6bUXqaxGuRJbw2DR884/8PsuWfsVEVEBmdBRu
         jC0jQlePlXN40ndWhNPYJ8tCZ0kA1EZmZ5/36UJIJb+WdkCs7o7ez4gRWpfnUdegEQ2h
         imCVcVGWXvu2hmcdBGBYVQw+R6V8qmQJA2D8RAYJgkThAueiqR9Zw89j/+KnyN0ltfXZ
         FK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cz0sWC5cENZ7vP4TUISPsB3yoAy7s2V0KQsu6rxUMR0=;
        b=7gh9Wgsy2s2DY05Jd4/K59vkgZDW/G6IUTXQ2ToUR5HN64bCH/mk7PpYvrf0taazUL
         I2dSVQSY9Zg9F9EtN/8LIALjyOQ3D6HrdSzhWKPaEe/pm40eDowr88OGBuFdZdlinZZ7
         6W1ilcxb3Z+lp6vBp9I1ptrD6Xa+5Kcs6ofxa3GIUdiuPfrLrvULibet32WvRFlHXik9
         LOiMRyeIY7SGSl8v24bTgR9TSM3YeTV2eDcUDZr+g+y/tHs1blGl5/yBfakJ8ngdvC2A
         n7ynaUz86TIRWRuvnPNj8N9uQUvnO3oWnsfnYkQOlx09kboyzq1KQxcmhDNZJxKsy8zJ
         1qOQ==
X-Gm-Message-State: ACrzQf2mWsXkZh39d32N4SF7sLbzxpAvbIx2xCiXLEEIiIDyvr+a1VsZ
        GMHFCD/SlI46uJ15OiMcRXkbMg==
X-Google-Smtp-Source: AMsMyM6Ufdd1m8EK48b5T0NphdQ4gBfuybpVEH2MUvYOBg6UFSt32aSiPPhMSIgY6bwnTgAcJeDIxw==
X-Received: by 2002:a2e:9f17:0:b0:26c:43f6:fd9d with SMTP id u23-20020a2e9f17000000b0026c43f6fd9dmr1435543ljk.176.1663495005393;
        Sun, 18 Sep 2022 02:56:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512358500b0049482adb3basm4597506lfr.63.2022.09.18.02.56.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 02:56:44 -0700 (PDT)
Message-ID: <d279523c-5c66-dfe4-d4a3-116889498815@linaro.org>
Date:   Sun, 18 Sep 2022 10:56:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/3] dt-bindings: can: ctucanfd: add another clock for
 HW timestamping
Content-Language: en-US
To:     Matej Vasilevski <matej.vasilevski@seznam.cz>,
        Pavel Pisa <pisa@cmp.felk.cvut.cz>,
        Ondrej Ille <ondrej.ille@gmail.com>,
        Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220914231249.593643-1-matej.vasilevski@seznam.cz>
 <20220914231249.593643-2-matej.vasilevski@seznam.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220914231249.593643-2-matej.vasilevski@seznam.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 00:12, Matej Vasilevski wrote:
> Add second clock phandle to specify the timestamping clock.
> 
> Signed-off-by: Matej Vasilevski <matej.vasilevski@seznam.cz>
> ---
>  .../bindings/net/can/ctu,ctucanfd.yaml        | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 

Thank you for your patch. There is something to discuss/improve.

> diff --git a/Documentation/devicetree/bindings/net/can/ctu,ctucanfd.yaml b/Documentation/devicetree/bindings/net/can/ctu,ctucanfd.yaml
> index 4635cb96fc64..432f0e3ed828 100644
> --- a/Documentation/devicetree/bindings/net/can/ctu,ctucanfd.yaml
> +++ b/Documentation/devicetree/bindings/net/can/ctu,ctucanfd.yaml
> @@ -44,9 +44,19 @@ properties:
>  
>    clocks:
>      description: |
> -      phandle of reference clock (100 MHz is appropriate
> -      for FPGA implementation on Zynq-7000 system).
> -    maxItems: 1
> +      Phandle of reference clock (100 MHz is appropriate for FPGA
> +      implementation on Zynq-7000 system). Optionally add a phandle to
> +      the timestamping clock connected to timestamping counter, if used.
> +    minItems: 1
> +    items:
> +      - description: core clock
> +      - description: timestamping clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core-clk
> +      - const: ts-clk

Skip the -clk suffixes, so just "core" and "ts".


Best regards,
Krzysztof
