Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77378750180
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 10:29:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232421AbjGLI3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 04:29:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232129AbjGLI25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 04:28:57 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB215263
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:23:52 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-992b2249d82so847899266b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689150230; x=1691742230;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GoWAyxLM68nERAkQpmx0i5zgpgXqPVi7D6ZJJROAh9I=;
        b=Gj90BQgmuftkYvA0l4Ooh6N1Y2ExFLxV0JKw5LVaYCep1g+FD8fD81wuYazmUzOV6S
         QgyseppeIghxUAE8LcT8iNQ9m5V2jc5rSLXwAOI5PxczACAvXcKkQollsFKVp94zNh9K
         /QvkADuGCbi49oCNzRyLMPDJnn3O2N+LVbm8oDA2nh/bk2nedQVhFaDnMAQhAIjxQjiW
         QPy6ff0xPADmJAVpnT0jUkWDq3pK1lEbz6RTZM6h9EVJKYtyD1+54LKcO+BT6Kc9gwsc
         Zlg2upivsLSa/WMQvmq3pSe6zHAgQ+DGV6huo5kk3h0MltpiWaY6b1IN9TASx/nl3vlz
         Q1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689150230; x=1691742230;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GoWAyxLM68nERAkQpmx0i5zgpgXqPVi7D6ZJJROAh9I=;
        b=BOSod0KUShqXpigEBqoJKpgOLT+H6fSJGStv0mp5sVqcUCtxb6ykjEeb/hZ7AdVGS6
         ol7uj5T42zvNw4PXaK807+I5xr9qFPqKc+5yzQqDyOTIW2/2lpdfnpQeMa9u0I9mr1/N
         Yl6yq8V+jGpVlo5mZSpd5iJJghMBcZowq5ri2jwblAHp9sgpX8M34sV0dA8k42iDP9UU
         AepVJN/514ITKTWjevCZAhXHtPryc5WqPB7RWheuI02sSpj0qY7ePNvBFYlH6r+uY+aO
         m/Jwqlx6Df3Ga4mvSV0zhTFZNdtZdsqWfhEV/joq/Nd7zO4dk7HTkyp4GC6mAjlPrDMz
         Zf/Q==
X-Gm-Message-State: ABy/qLbW9svAwIbX1kc0PLYQ+2O9z8Tmyf0iyjU1WFTFILMt0iKTon1H
        8KqQZXrpgHcQp1sC6UHcxoO1jw==
X-Google-Smtp-Source: APBJJlEVDQQfQgUOLip5inCMiTiDTMsHjp3rA0fGmDo6HsHEM7grTTl4v9xfKo7wZYmdTEDQa5gXow==
X-Received: by 2002:a17:907:f97:b0:992:a618:c3c2 with SMTP id kb23-20020a1709070f9700b00992a618c3c2mr18039068ejc.76.1689150230655;
        Wed, 12 Jul 2023 01:23:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f26-20020a1709062c5a00b0098242730348sm2246342ejh.72.2023.07.12.01.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 01:23:49 -0700 (PDT)
Message-ID: <13854167-fe20-2568-4865-80f263898871@linaro.org>
Date:   Wed, 12 Jul 2023 10:23:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v1 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite V4
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230712073752.54624-1-Delphine_CC_Chiu@wiwynn.com>
 <20230712073752.54624-2-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712073752.54624-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 09:37, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Yosemite V4.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

