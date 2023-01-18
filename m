Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A99671BA9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 13:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbjARMPN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 07:15:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbjARMOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 07:14:38 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E0346D6F
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:34:55 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso1181630wmc.4
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmrZHvM1DlPNSOW3Xlkk3jNqiZi+8RsKuRw9Ed+dB6M=;
        b=soyoUjyM6lCyBm738nBiG3QZMffXSdK/FAbzUKQqOOnOa1KE2ODZHiW4vHSpHOAkWH
         nlnuprkLbTVnqi1A7qa3Awa/oQyrcNjg/L7DKmSm6W64tZR+JTG/QAZgZmeW3OfvIoG/
         o/6xscBJP90jIQPwbDIwnEd8lGR0NVafYEvz7yK2nRTP3HL2A3GlW60c+l35lzqdAmdB
         P/M8gGXfNWf1T1dyCYupm/TM/DtBF5vVW/DSNnsib+1GXYKfeZBov8cFJ4gnypsY8Wfi
         Q/CUdcrNIu57jnqT3/Txa1tbUBUTK6XFZeF6BJSUkJ8qeODvXHWWs0KVxa/l9xra8kLx
         hxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmrZHvM1DlPNSOW3Xlkk3jNqiZi+8RsKuRw9Ed+dB6M=;
        b=huxzEr0QUcweGEq9df9Nem9o3TrJ/Ab2dRqp7GYB4cu+KV76Kl7TCaYiOzlXbmBQFi
         aOEdYoB7lrFMlM05yG65Y6Glo8wneKPKSfsfop21DeDH6XGrMNKmMaZS/vwJp4eYHCq5
         KSg2ZEMndwOP9RJF30Kn5328LwxoDA5ec67m4fGzdrSEAaCumlKHvkOYAaloKuBSemVk
         mxunsVZxzTvPggkOO5Gl70BXI2t1LB/0IaOpQKOF2b5ZDH3cYXE1G98O2AhVAkaxU6fw
         3m7/t7C2NiK8Vk1alpI2fhjDh/aGXPgn3Uum1Q99s4/j1I6PkZJlQLwk2Y+18epPpfV/
         yvFw==
X-Gm-Message-State: AFqh2kq2rgNKvVS99e04lUQyxRcDAAFsQHoIVhzi1/wAn7NGUUZUCgEq
        XbiUhmDVyVirhNDLczlVYxFOcA==
X-Google-Smtp-Source: AMrXdXsLfr9LdA2Qpx9wkQv4kWlO1tu+d9Q9P47dtmh/jHU40qAohVcnlAkJVbaTTAmxwXJnbjnN4A==
X-Received: by 2002:a05:600c:c8d:b0:3da:fcee:2ef1 with SMTP id fj13-20020a05600c0c8d00b003dafcee2ef1mr6266128wmb.32.1674041694337;
        Wed, 18 Jan 2023 03:34:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c458900b003d35acb0fd7sm1716356wmo.34.2023.01.18.03.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 03:34:53 -0800 (PST)
Message-ID: <d2b84b4c-1529-8709-b9eb-3cf21ad8cc7e@linaro.org>
Date:   Wed, 18 Jan 2023 12:34:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clk: si521xx: Add Skyworks Si521xx
 I2C PCIe clock generators
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-clk@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-riscv@lists.infradead.org
References: <20230117231626.134588-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117231626.134588-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 00:16, Marek Vasut wrote:
> Add binding for Skyworks Si521xx PCIe clock generators. This binding
> is designed to support Si52144/Si52146/Si52147 series I2C PCIe clock
> generators, tested model is Si52144. It should be possible to add
> Si5213x series as well.
> 

Thank you for your patch. There is something to discuss/improve.

> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: XTal input clock
> +
> +  skyworks,out-amplitude-microvolt:
> +    enum: [ 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000 ]
> +    description: Output clock signal amplitude
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c@0 {

Just i2c {

> +        reg = <0x0 0x100>;

And drop this one.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

