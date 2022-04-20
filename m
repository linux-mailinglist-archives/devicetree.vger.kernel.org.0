Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA8950818D
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 08:58:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350625AbiDTHBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 03:01:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242507AbiDTHBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 03:01:08 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B98335276
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 23:58:23 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id k23so1554520ejd.3
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 23:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=33oNGjsyzbbJJxqb3bfQQZjjh/w5lxTRnomNHvvUqU4=;
        b=ZcC3aoCsfQbOoc1cErTSMczgGpJa0Pbv34AteNKyB5gmUZl4i7240D1aYuTMRQVG/z
         um5HwzvgMVcTOFhmTEjQ4xxyA2IMEJitboFIgrfnIB5EmSv7/+rbBO6T8UaboHOPLjKz
         jS+Ps25YDbbdakYUitxzDcQWXNta53T96IYueZs3dY2AXGRz8hc9DlHvX6nDDQc2Hzuf
         YwPfbqLHEKQXozYsyyfMrJcbIQEM0Qtdn/aCxeRoO4aD+4r7EGEWSzj0SFWpzg4NuFfT
         SDsVkQ+SVv1wjbZFfUunqaVo/8oT9cnC8F3F92750/D1hm+Z/7dTj+DU6HqlLu3/pr6N
         MmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=33oNGjsyzbbJJxqb3bfQQZjjh/w5lxTRnomNHvvUqU4=;
        b=X6lNRJQJPCKl+3hM6FvqwS+GiaYs+L+fhkM7CZ0XqpHgZ8Xlbq55QkBMB2AdTYRQk+
         S2BnKa+9afSwsRg9y/PYZGWoTlpmjO+Cz/QTNNaS2coV85fsS1zMYzE/zckHODZH1Ipc
         WF3w3jgMhtQ2k4FzYS53f/C8HMGAaHeAAXgIbHZLLZMmTP8NjYnWFQuZAWEnPFNPJ2Ik
         8YhKuWsLyTlZ0ii+6btokjTNoTphRD64duAMgqiYNUNMexauqeZDz01f4tFfSvii65ej
         q6nriLl3+HzQSWoyIMLHs6TI2l18OIIUrNZ59n4iOHFvKzYZa+yv5ZAiu2YtFjQS8yBU
         jedw==
X-Gm-Message-State: AOAM531gi6lmTIiL5+oW0qas+hk+I4SD1Rtm9KJlDudvi56UWIA7JuU6
        i/q5Bl/cyrH8uoSfUaQq2WvDKg==
X-Google-Smtp-Source: ABdhPJz+YLZgxsZ8woz0si2sCw225f3/SoHbprqyRXC43LXutjFR1DWY4/pGsH9BeF8nQjAKechCWw==
X-Received: by 2002:a17:906:3707:b0:6e8:6bfe:da0e with SMTP id d7-20020a170906370700b006e86bfeda0emr17364717ejc.78.1650437901968;
        Tue, 19 Apr 2022 23:58:21 -0700 (PDT)
Received: from [192.168.0.222] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p24-20020a1709061b5800b006e88dfea127sm6375729ejg.3.2022.04.19.23.58.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 23:58:21 -0700 (PDT)
Message-ID: <4971b5f4-9a4f-40c9-ac32-a62b2e655544@linaro.org>
Date:   Wed, 20 Apr 2022 08:58:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2 v3] dt-bindings: dspi: added for semtech sx1301
Content-Language: en-US
To:     Changming Huang <jerry.huang@nxp.com>, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, shawnguo@kernel.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org
References: <20220420035045.33940-1-jerry.huang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220420035045.33940-1-jerry.huang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 05:50, Changming Huang wrote:
> Add DT Binding doc for semtech sx1301
> 
> Signed-off-by: Changming Huang <jerry.huang@nxp.com>
> ---
> changes in v3:
>   - add the dt-bindings
> 
>  .../bindings/spi/semtech,sx1301.yaml          | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/semtech,sx1301.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/semtech,sx1301.yaml b/Documentation/devicetree/bindings/spi/semtech,sx1301.yaml
> new file mode 100644
> index 000000000000..f65fb5809218
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/semtech,sx1301.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/semtech,sx1301.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Semtech sx1301 devicetree bindings

Remove "devicetree bindings" and add instead short description (type) of
the device (SPI controller?).

> +
> +allOf:
> +  - $ref: "spi-controller.yaml"

allOf after maintainers.

> +
> +maintainers:
> +  - Changming Huang <jerry.huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: semtech,sx1301
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency: true
> +
> +  fsl,spi-cs-sck-delay: true
> +
> +  fsl,spi-sck-cs-delay: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - spi-max-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mikrobus@0 {

Isn't MikroBUS more than SPI, but you implement here only it's part? If
so, name it just "spi".


Best regards,
Krzysztof
