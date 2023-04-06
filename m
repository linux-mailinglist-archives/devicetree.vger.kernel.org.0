Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 824616D91AB
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 10:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236294AbjDFIcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 04:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236118AbjDFIcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 04:32:53 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 645D37EE1
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 01:32:52 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id b20so147453483edd.1
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 01:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680769971;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BT2qFcfVRrSPbLmHGDYiFwGIJvbuDVrXM9ieD+KEetg=;
        b=mCYEIsC5QpSAr3Rk/Hd52mLlp+OxBWbLmbSc29ZDoUMcVryqDrZHztiCVnzMf+uAmI
         SuB7Y/g3J9ZCV58hnnLQoHLrrKDGtn6aYIbvks+FArhzOAe0uN6+9w3o0Y7eiGyqVsdz
         cKKLAWOdfytoiHDSMnnWZGxwq3uQf18H2+gL1tfskLPx4sVTFRmptsBDommEM70cZy4N
         u9vb7omR2+mGEInyh0Y/iJ0CfD2U7exUO0XeIs1p1I8eaX6fN/TMWJxMXTMfCO1kLAS1
         LZMRGS6VVOHPjcZi4QJoYHzxPAYmEB7uhi6KClJ02cmSMxhlgPRbMQhcCMIV1JSZKfvM
         9FRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680769971;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BT2qFcfVRrSPbLmHGDYiFwGIJvbuDVrXM9ieD+KEetg=;
        b=3bIKQ0ICDY0JDDjY3QeXCpI4IeqVbJEctT1eKBvl58UJ2pshGcyJbhBg7fCxdaRMuY
         sjaA1aVxd+kqQ9SM4g2OPh/TFyvk8RCCckShWseHROM9D9Cu4j6qLkS4SQeJkvfUfqzA
         tkgGWyYqqo70T31AFRPgiJAv5ya/nzt/rzJFdrc9DUkxDx3r28rAiZQk7VE+p9CHj8Eb
         Ih7QoXHwZG8nnl6AweiQtsNTre3lLyZ/+qGbtym0AZr8qajOtBQ5LrDwB+YpfMijRGGU
         2uZd5oFmjSh/svKK/sJodBkvp6IgF1/zV1Wa9UGuKTMjuwp07v1XGtp3yIZgsOp8HgZv
         j4Xg==
X-Gm-Message-State: AAQBX9doAI9DoOj+K+HrgagsJnFyk6d2zZhJcDm3H+ZopVD3o11RB68v
        2iTxdwKsDwmK6VBZyfKnz7CZbA==
X-Google-Smtp-Source: AKy350aWteAjATuSEazMZnJowUe1xwUDh+hPT2y1KxQkK1B38uDSyKB7xEZlzBF/8IBARLyMc98mlA==
X-Received: by 2002:a17:906:f850:b0:92e:e9c2:7b9e with SMTP id ks16-20020a170906f85000b0092ee9c27b9emr5371449ejb.41.1680769970783;
        Thu, 06 Apr 2023 01:32:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id r26-20020a50aada000000b004fc856b208asm425152edc.51.2023.04.06.01.32.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 01:32:50 -0700 (PDT)
Message-ID: <eb4cf82d-f523-d5af-be18-25c37678a95a@linaro.org>
Date:   Thu, 6 Apr 2023 10:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v6 1/2] dt-bindings: omap: Convert omap.txt to yaml
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tony@atomide.com, afd@ti.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org
References: <20230405161908.4312-1-andreas@kemnade.info>
 <20230405161908.4312-2-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230405161908.4312-2-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 18:19, Andreas Kemnade wrote:
> From: Andrew Davis <afd@ti.com>
> 
> Convert omap.txt to yaml.
> 


> +      - description: TI AM43 SoC based platforms
> +        items:
> +          - enum:
> +              - compulab,am437x-cm-t43
> +              - ti,am437x-gp-evm
> +              - ti,am437x-idk-evm
> +              - ti,am437x-sk-evm
> +          - pattern: '^ti,am4372[26789]$'
> +          - const: ti,am43
> +
> +      - description: TI AM57 SoC based platforms
> +        items:
> +          - enum:
> +              - beagle,am5729-beagleboneai
> +              - compulab,cl-som-am57x
> +              - ti,am5718-idk
> +              - ti,am5728-idk
> +              - ti,am5748-idk
> +          - pattern: '^ti,am57[0124][689]$'

I don't think my comments were resolved. I asked if it is possible to
make a board called "ti,am5718-idk" with "ti,am5749" or with "ti,am5708"?

What's more, you dropped several variations and compatibles against
original binding (all the "dra") and it is not explained in commit msg
at all.


Best regards,
Krzysztof

