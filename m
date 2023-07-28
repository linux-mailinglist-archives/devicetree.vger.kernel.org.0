Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68B4E767228
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 18:43:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233956AbjG1Qng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 12:43:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235318AbjG1QnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 12:43:21 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BBB4483
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:43:06 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fe0e34f498so3851079e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690562585; x=1691167385;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2uOpN0VV7J1FlR7qL2Aly16/RraKO4tx9phQ8ZS+ixw=;
        b=m9q8KAf8JlOrKy2I7zgz4bxq1ewNubSCsnZ65MM/ZaGtGc9R2nLW9UXEOksFTGME58
         tzwTSe7DXdUtzP5zvIadumaoxIdzMspHav9rEbbxcdCEaJbbe8dGsSaIsbyMx6qfilL7
         Rsm+b2sTy5gk44a/vVWNmVtiWljTmrsBVNrkGJLQ17XAVvW01vFG/31LbNjsl0DmCJku
         5JRc6hEFwYhxFZlrANwzmC4OZ+vxuuIL7KzKDsFdTtmDeWcbvZQ5sdg+GE6G+5ID2OGr
         0GowpmByvUCgyUomtw5+Hm/zLioCV4ZxiCMmcvvtFpf6C6Y8AZUkANc9ONYYqiUeHwu4
         Wipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690562585; x=1691167385;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2uOpN0VV7J1FlR7qL2Aly16/RraKO4tx9phQ8ZS+ixw=;
        b=WiZS5v7KaYySpzUlVnCVi54wDSwVxTvcKrkQNpCqZfSXRqL1vJso954QtnrlMS8ztQ
         ibam9wF3v6YLAxOQb+ewnDslKsTycIRwgZgJTN+d939D749aeJ/4DjIknA6DE0EB9DzX
         uNHr2Cwh9dPnfM4g71R0q2cLHpqHq+OnvHGZxlhxi/xRF0dB00pnnrao6a6nMGOLOLoj
         0qwfY2u4AvYQCwmKDbTCADsC/fdsPz3rGKODcqufioxkottNzmkfTJag/XQ17RNuZL2N
         knV6C9INkw8cywSpS1dwBsMDD/KNOGkWAfFQTdwuUQpwPgMbBnwJoEO6h9OkGeDJ4Cr+
         6kgQ==
X-Gm-Message-State: ABy/qLYXztZOcK4EU4Rldvaw9k/IaI3gFv/qBTNT4s37ho3bcnL3sbo3
        mWhfExCcdYakWedo6W/pDP7m5JpcDB6rgGb+DEI7IA==
X-Google-Smtp-Source: APBJJlGoE3aoNvtCgYaY6825L8hzP7nz6v0p3eXc3znPdnKJvP8nrC3tsSkFpoUBKTZ1tl/Z8d/npw==
X-Received: by 2002:a05:6512:3b82:b0:4fb:81f2:4228 with SMTP id g2-20020a0565123b8200b004fb81f24228mr2495966lfv.31.1690562584889;
        Fri, 28 Jul 2023 09:43:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id w5-20020a056402128500b005227da4bb9esm1963929edv.62.2023.07.28.09.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 09:43:04 -0700 (PDT)
Message-ID: <5e5c72b7-67cd-5659-fd31-1214b5a043b2@linaro.org>
Date:   Fri, 28 Jul 2023 18:43:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 17/50] dt-bindings: atmel-smc: add microchip,sam9x7-smc
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102550.266134-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102550.266134-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 12:25, Varshini Rajendran wrote:
> Add microchip,sam9x7-smc to DT bindings documentation.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

