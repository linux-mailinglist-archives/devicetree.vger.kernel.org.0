Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98BC0786835
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 09:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234530AbjHXHTM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 03:19:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240303AbjHXHSc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 03:18:32 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1928E7C
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 00:18:30 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so7989998a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 00:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692861509; x=1693466309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+jrKqRkmU8w7XJNGtuc7xd6gu0lGzcy/INNpKyR106g=;
        b=FnkSV4GGEaHncIQRHrpa5IKfq2pfVj66tXsHw72ftlradrJxvDbpDTAqGOKQ9vw549
         yF1vRVzJrSdb4XCce0WAiXJKR7YHVfvRORMwYN+37kh5Hs/JIzj4YIBvSUsAFlCIlKsg
         AAcu53+bAoEGL3jnQ+obiFdD/QuJIysgLJmB+H8Hk7u4p65zVJZaxO4Jr9/HMDf+n0Wm
         3KgS3UnoxgveiJpDw9BkaAMJhX7rWznGqYDSAi8JxERyfrh5q9qKfw2UvW6GUBHK61TU
         qqhO/4seu2C5/uutgsud39hRcD1ICOJFCV09lsj/LcaxGSST4sS9gZhEX3E9iRZO751v
         OVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692861509; x=1693466309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+jrKqRkmU8w7XJNGtuc7xd6gu0lGzcy/INNpKyR106g=;
        b=aVSLhUOh/QVThmo5C4srm+Bfl0Uc+k7z/NlR9w4+LgmDwJksUVBYthmk7H89AwNCwy
         8ok7fphmhQYtYMrG4cfRp23xTcOZRmRqbU691Tdq7+COQC/iHmyPLkY+spei+wBwdMxw
         gxYvY5ANoIxh6cY5WQ7+V1X5kxxvwez7RBfPk85vv7F72l7Ms6xU6a+DgJNQTqViz3x+
         wMfWBUvzeOy6N9gY2CzS2gx3a+KpHaSyoBKQPjQILHEGfXcDPMGqOR/GckQmUiYqTF9/
         UyVzodd1s8lNQRpeh+G1359pT/ffZyuaxtKHTY0HcVx8lDfy6TFTpRuS9bEl/ev7dH7H
         rBTQ==
X-Gm-Message-State: AOJu0YwPWZBap88DmU5IaiHhgNFf+11bEq4HGSXe2VTVr1ekr8DEYFME
        iIBpQhTycgppAeovDJ6YiTssqw==
X-Google-Smtp-Source: AGHT+IFcjKjHkCuBTPVVykJBcWy2+2HshxuF4UkguJycVvPs5AXGhcZlKWxuTzFVqVkZxq8V6MKPCw==
X-Received: by 2002:a17:907:271a:b0:9a1:d7cd:6028 with SMTP id w26-20020a170907271a00b009a1d7cd6028mr2900756ejk.56.1692861509227;
        Thu, 24 Aug 2023 00:18:29 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id bv17-20020a170906b1d100b00992e265495csm10537159ejb.212.2023.08.24.00.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 00:18:28 -0700 (PDT)
Message-ID: <cd1985cf-f13b-8d5b-1f67-f93bae98ce7d@linaro.org>
Date:   Thu, 24 Aug 2023 09:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: imx8mm-thermal: Document
 'nxp,reboot-on-critical'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230823173334.304201-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823173334.304201-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 19:33, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Currently, after the board reaches the critical temperature, the system
> goes through a poweroff mechanism.
> 
> In some cases, such behavior does not suit well, as the board may be
> unattended in the field and rebooting may be a better approach.
> 
> The bootloader may also check the temperature and only allow the boot to
> proceed when the temperature is below a certain threshold.
> 
> Introduce the 'nxp,reboot-on-critical' property to indicate that the
> board will go through a reboot after the critical temperature is reached.
> 
> When this property is absent, the default behavior of forcing a shutdown
> is kept.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> index d2c1e4573c32..9ac70360fd35 100644
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -32,6 +32,12 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  nxp,reboot-on-critical:
> +    description: Property to indicate that the system will go through a reboot
> +      after the critical temperature is reached. If absent, the system will
> +      go through shutdown after the critical temperature is reached.

And if Linux changes the behavior of critical temperature to be "reboot"
instead of "poweroff", what happens with this property? You add now
property for a SW policy depending on one given implementation. Not
suitable for bindings, sorry.

Best regards,
Krzysztof

