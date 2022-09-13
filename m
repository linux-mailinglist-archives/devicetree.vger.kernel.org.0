Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3BE5B7329
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 17:05:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232475AbiIMPEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 11:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235372AbiIMPEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 11:04:16 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B1D6B8C6
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 07:30:07 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id h8so14108301wrf.3
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 07:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=GdCZkIFjdClxi+04hng0a7G/PMlIDrFRIuLM/UuEOzs=;
        b=Y0rQYv9z8beilzQx2ugOfa92UcpqtypBzYziOGjbc06KtET4+8LgctThDgk38PA3Ap
         1O+JSIIsyci3bP1SW2JFp5rqIe0G+8kMnHfcnVIa0uIZoPdEuMe4Pt2whD0LMvvVp3FW
         VpZRd+n8LGLqIq+fcSPCx7y62bZRwILmW3ct1e3SbnGg4tE2TntChCCEHZYxQlYcxs5I
         ZUuyfM8Ce9QfkzMOMssRo1IeBefHkv2qdOX26DjzEp3X26o+0014Hndv+HxcVZ3ur+FH
         bCYQkl5/zO/DUW4C2kRzvM7skiIS2mLHOZeO82pfbHUtS6OHUJr3Me+wlmkMjoNb4ghU
         1e1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=GdCZkIFjdClxi+04hng0a7G/PMlIDrFRIuLM/UuEOzs=;
        b=Kat3jmNcA007nzqfxRJDu/koNEiQGMjfzNxFCWe558Kn2x2tzfDsJj6gkc3c9rVMOL
         MlCCD5pEM7jfuEH5HIc9RzYzL/8P9rD3crmQfeai0Oc5s7REdpInAOXzmfpWsfxQRazr
         xJWj73zcoGeVlCk5T2LKHOxnEzYLPrmQchft32fGTp68cjx7sat5HE0vayXfow1fUaOp
         Rbd6FOsOgmYtPdFb1ZbMr32wDMdumQ5GheVr7L2HB4YyELTZD21F342IUZ/PNlmYT+f3
         QAbVrKWuNtkMcnNH3nqsQuk+vvM6m4yJdmmYebE35T2wffuS6hSvMD5OkHe5p0RlQGYV
         Q5Hg==
X-Gm-Message-State: ACgBeo1KF69nzV3oXpYRz4Rgy6rlzQPlv8TLsKRI5bayhftEOaWPBwj+
        Es7Y47qLhWpH6O9nrWhxbIOjlA==
X-Google-Smtp-Source: AA6agR7PeWmSBtKuOC1mG30e5zw+xbQsmAU90w5V231Ig4DCodUPhBcpEgZgQwBke/+4NDhIQ1m22w==
X-Received: by 2002:adf:f2c5:0:b0:226:e838:3ed8 with SMTP id d5-20020adff2c5000000b00226e8383ed8mr17490014wrp.545.1663079299598;
        Tue, 13 Sep 2022 07:28:19 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c4f9000b003a5c7a942edsm14437149wmq.28.2022.09.13.07.28.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 07:28:19 -0700 (PDT)
Message-ID: <4f201ad4-ea4a-43af-9ec8-c2a3c1b80d2c@linaro.org>
Date:   Tue, 13 Sep 2022 16:28:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 06/14] dt-bindings: serial: atmel,at91-usart: convert
 to json-schema
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, radu_nicolae.pirea@upb.ro,
        richard.genoud@gmail.com, gregkh@linuxfoundation.org,
        broonie@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        jirislaby@kernel.org, admin@hifiphile.com,
        kavyasree.kotagiri@microchip.com, tudor.ambarus@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220913142205.162399-1-sergiu.moga@microchip.com>
 <20220913142205.162399-7-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220913142205.162399-7-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 16:21, Sergiu Moga wrote:
> Convert at91 USART DT Binding for Atmel/Microchip SoCs to
> json-schema format. Furthermore, move this binding to the
> serial directory, since binding directories match hardware,
> unlike the driver subsystems which match Linux convention.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
> 
> 
> v1 -> v2:
> - only do what the commit says, split the addition of other compatibles and
> properties in other patches
> - remove unnecessary "|"'s
> - mention header in `atmel,usart-mode`'s description
> - place `if:` under `allOf:`
> - respect order of spi0's DT properties: compatible, then reg then the reset of properties
> 
> v2 -> v3:
> - Previously [PATCH 5]
> - Check value of `atmel,usart-mode` instead of the node regex
> - Define all properties top level and disallow them explicitly for other type,
> since additionalProperties:false conflicts with referencing other schemas
> - Remove useless else if: after else:
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
