Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE9C53B3BC
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 08:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbiFBGmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 02:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbiFBGmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 02:42:12 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0815E33372
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 23:42:10 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id fu3so6574975ejc.7
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 23:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YcVxfDa9LvCUOkqeRnWeJHFwW9LiD3rmlRjajceH05M=;
        b=MJXE1rnhYI4EtbgnAGDkzJmgeAz5fHOoCVrAd7HfHDIK4UKQTyK3j+GfE6/mDGwnMe
         IkOjUpb2DVq2VAD7M5BZYUsn/2jBIpzfKERlpGokDCM+jIJe+q/dZziGQMoBiny+HN9m
         Bh0jT7xuHaPt/137bjd4VVJzkYpgITu/W2fi3sWXsk1IP1rJ8mwSF14HwiaHHNcopaD4
         Ch+NyQTsIegQfpouRCcN5awRjiWR5RYaSZLPGsH8nub20euyI07Uiy1UPBiLxJlofmvH
         utu7pZvoqMHMtamUPH8zH1QkO3WSBuat/f2k1EF/zMQfZ+DTIFjjXAS9goBT8mHa7klX
         +d1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YcVxfDa9LvCUOkqeRnWeJHFwW9LiD3rmlRjajceH05M=;
        b=hvjTM3OmUbJRepNl2CmRuYfhST2WeP0b5ty7Ff15woUjd1GiNRxqxKK/6dI605IIsV
         v2THQO/miLKWeUkHsfiQOml6ehWFO7pWGntGOmkVRFWt+M8SYx6VOlqpEGPTSXnVBZIl
         zVStSHrfGNsOScrhp7mlmVuNdglXOdweoUM1bDZnxUNvYcrwV0qG7fxJOl5gmsfTzR5D
         Hiw2f217sqQ8jbCcZWN9WwbFJvrphwuT2MVvvlbu0P4bLnTmTz8WBpwhsogT1NvjoM+u
         zp7fZ6WRVic4CKpte8EDRLJ2EVRcfn/Pp5bxuzQ+csGQb0JNBFJNrUpLwiQBeQHPwBoH
         Soug==
X-Gm-Message-State: AOAM531GJJAmefTHMm6BHyfvXzUmOTdN6MUWhSzZt7lvSC1/IoeIdevE
        iKk8CFbOjjrZ2sP0EIZW/FDxgw==
X-Google-Smtp-Source: ABdhPJw8/Sb3u1AXrdJHsfhBh0XKfSg6ceuAhBGJDSd8b17kHdSaHMdFbuG171xpt21Hmqv9rRT5DA==
X-Received: by 2002:a17:907:6d14:b0:6fe:d86e:7e1a with SMTP id sa20-20020a1709076d1400b006fed86e7e1amr2829800ejc.615.1654152128590;
        Wed, 01 Jun 2022 23:42:08 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j12-20020a170906254c00b0070759e37183sm1392910ejb.59.2022.06.01.23.42.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 23:42:08 -0700 (PDT)
Message-ID: <4f82e7e6-5c36-928c-0b76-c342dbb1e5ba@linaro.org>
Date:   Thu, 2 Jun 2022 08:42:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 5/5] dt-bindings: altera: Add Chameleon v3 board
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com
References: <20220601154647.80071-1-pan@semihalf.com>
 <20220601154647.80071-6-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601154647.80071-6-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 17:46, Paweł Anikiel wrote:
> Add Chameleon v3 to Arria 10 boards.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 5e2017c0a051..400543fbe78d 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -26,6 +26,7 @@ properties:
>            - enum:
>                - altr,socfpga-arria10-socdk
>                - enclustra,mercury-aa1
> +              - google,chameleon-v3

This won't work like that. You need separate group. Please install
dtschema and run `make dtbs_check`.


Best regards,
Krzysztof
