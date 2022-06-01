Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEEAF53A02B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 11:19:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350100AbiFAJTN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 05:19:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344771AbiFAJTM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 05:19:12 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F118917AB6
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 02:19:10 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id gi33so2467355ejc.3
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 02:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w0q7w7agqeVzeJoFI0aW/0pLwg+C1kvsWYmBalugg8Q=;
        b=VixWWPTJ2XezaiMDn6QH/mc8juwDFuC9uioDoU9V+mrWz6fabTxHi48gVF79fLkNZI
         CAEjE4jKF00zgp2R4UuRtTGQ/V2DI9Wa6gfA8F0TkWEPQA58c1oHeIwhZFYibE4CuRTN
         50joB2Zrq8ilMbr0GLmGfkchBBwuKjG/57DOTnBEr0zMiRcYrofNk933/tjhE6RX1A7x
         bLhyouUfCQCxLBhzjHo7kDDau9QgFwxecgC1mSCpMa12H5P+EdtH9vNDg2PcVGvxwDeu
         y3dptNbRzcQ1FMT4qajLIVJTLchACkZhMaHHabSNjF/6TCbkzeoi4pCduF/NGL07I2nF
         x/DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w0q7w7agqeVzeJoFI0aW/0pLwg+C1kvsWYmBalugg8Q=;
        b=i5i3EKbz32ZYuFnbZ2RN513LMXUj5vlVDNGdfBqbqbeYiFgpG32KPeJOXc/EJKm1r7
         yXfnInUh5FEWmsnNzcKAUKnU3MisK59x1bG6q8vk3CLel+ofMBwM7evLliTv4xFHXT3w
         bMd/5BC49UiJ0kdKhn3CAl9ga3enr1xFxhWGnzwIv8W+NqPIXcbl0C8yM+nw5UFmsrI+
         e8cFk1XZRFJBSz2bUBZaf3yOdugx3BIEIxK+xJmLp7p7UtgC1HPzlZHqr79mpnzjRVz3
         AxE+vkvuYlIzC/Pm1M067XQuWU/NlTxrQr3Z6TTflp4fpAma4UzdmnGdGwarLFaaOUJn
         FAcg==
X-Gm-Message-State: AOAM533uKw7VCF32bW0IM/S2wZE+ExF6BTJ1MqJsZoCiqqFI/8mlRy24
        KwBgMuabwDfnzjOeM1uKg357jg==
X-Google-Smtp-Source: ABdhPJxIz5yKljtZ01n/8e8Iqvz6i01vdsc3Tj+8YIjD1XxI182o5dWwgzHRLoMv1YfZoH7CLyT2yA==
X-Received: by 2002:a17:907:7f20:b0:6fe:f0c8:8e6f with SMTP id qf32-20020a1709077f2000b006fef0c88e6fmr40303647ejc.453.1654075149570;
        Wed, 01 Jun 2022 02:19:09 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u9-20020aa7d889000000b0042b5cf75d6esm630769edq.97.2022.06.01.02.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:19:09 -0700 (PDT)
Message-ID: <d1ffbc04-0c80-369e-a1dc-e47e50f52340@linaro.org>
Date:   Wed, 1 Jun 2022 11:19:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 4/5] dt-bindings: crypto: add documentation for aspeed
 hace
Content-Language: en-US
To:     Neal Liu <neal_liu@aspeedtech.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Johnny Huang <johnny_huang@aspeedtech.com>
Cc:     "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20220601054204.1522976-1-neal_liu@aspeedtech.com>
 <20220601054204.1522976-5-neal_liu@aspeedtech.com>
 <dca283db-0b2e-1fc1-bc76-811c4c918fb5@linaro.org>
 <HK0PR06MB3202D6A6C66480BF60ED829080DF9@HK0PR06MB3202.apcprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <HK0PR06MB3202D6A6C66480BF60ED829080DF9@HK0PR06MB3202.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 10:01, Neal Liu wrote:
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  clock-names:
>>> +    maxItems: 1
>>
>> You need to list clock names, however usually it does not make sense to have
>> names for just one main device clock.
>>
> I think list clock-names is optional, I'll remove it from required list.

I actually suggest to remove the clock-names property entirely, if is
has one generic entry called "clk" (or "vclk" - the same). Do you
already expect adding here more clocks?


Best regards,
Krzysztof
