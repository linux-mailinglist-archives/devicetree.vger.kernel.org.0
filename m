Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3B045F2BB5
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:25:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230297AbiJCIZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiJCIZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:25:06 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 516A652DF2
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 00:59:12 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id b6so10842167ljr.10
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 00:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=5oUZ+iM4wdBSz3ZA6CCEvlNlq9mCNK9RQhVVWQGZIDc=;
        b=Z0Zt5nUFz3Mwt4bSmO1g382X0c05VjItD3VKgiIcNW3PtTEhvSSDavAfKb7MFO/wSE
         G+gcrNxMuaMomcLQRDQkT1wr7Y5L/3gmNUzSoFXS1sEHVYBR3rTMVV3R3OQotdbS2LUt
         Q8pgqBRIokeaMhMkvIGtsr01T1On5cwpas4WwalSd+FmMukNoWDdvHYcE64XLAynMMLI
         Cuhr05GcxknOY2/+pkge93e2GRWuwhmmyGjwJrXkzLdXN6b//wxnY9XVcIBtWK30nRND
         oZR6Apq+kBeAwkINDb4tPRFmgvsTCSt1HZbXba7Ve237IrGSoWqu539lJOCygePHqbNB
         eX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5oUZ+iM4wdBSz3ZA6CCEvlNlq9mCNK9RQhVVWQGZIDc=;
        b=GoWYxyLHe0iRFu6hX/PaBif2IAHc2enfLf6DPWzR7JwVTLoAqiqoDNwwwttRuXnV9f
         cInSY/uHhs+3t97hcMmxlyhOH3OdxAjweb9iBGdKJ9Yp1tzd0Z3u/uyxi/7Vuo8sh0Nb
         1WI/xOxC9VZgHE99CHCy1Xf+kNrsogyHBlAXiNjzTGOFCM3LU7UZHuySZ/stpxXZNGtk
         TcA/+NnQR71TO96b964841PjcA+LCDNo1/Xu+MxZtxxH1b7VhuWG4rCRxaCsU9Q6v8yv
         PkulWbFGzjBTGIGjaYLWnDxUHQOAAPBqnjAT1hzb0Uzx90Lo5jjGga4HE+bPl2i/B/zB
         deyw==
X-Gm-Message-State: ACrzQf35V/tXHyPOVOVkzHX/tW9l6MhGwPfnibacdBsMVdzaD6ynTpJa
        olsCoPI3OrkOl+7cCu2mdWaaeA==
X-Google-Smtp-Source: AMsMyM40qEwElI9i6VyfUV/Uzvgl9dVQPhk1MhTTNOeOTuNAeW3VubjQKTzbkRZd0nl95zwSe5Vgzg==
X-Received: by 2002:a05:651c:b08:b0:26c:6911:4e37 with SMTP id b8-20020a05651c0b0800b0026c69114e37mr5849342ljr.336.1664783892959;
        Mon, 03 Oct 2022 00:58:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bi12-20020a0565120e8c00b00492e3c8a986sm1351134lfb.264.2022.10.03.00.58.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 00:58:12 -0700 (PDT)
Message-ID: <22063373-6060-d605-62af-35d82ba1729c@linaro.org>
Date:   Mon, 3 Oct 2022 09:58:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v9 1/3] dt-bindings: mfd: Convert atmel-flexcom to
 json-schema
Content-Language: en-US
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        lee@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     robh+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, UNGLinuxDriver@microchip.com,
        sergiu.moga@microchip.com, Rob Herring <robh@kernel.org>
References: <20220916075744.1879428-1-kavyasree.kotagiri@microchip.com>
 <20220916075744.1879428-2-kavyasree.kotagiri@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916075744.1879428-2-kavyasree.kotagiri@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 09:57, Kavyasree Kotagiri wrote:
> Convert the Atmel flexcom device tree bindings to json schema.
> 
> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v8 -> v9:
>  - Use full schema path for i2c bindings.
> 
> Changing reference to SPI yaml bindings is covered in below patch series:
> https://lore.kernel.org/linux-arm-kernel/20220913142205.162399-6-sergiu.moga@microchip.com/
> https://lore.kernel.org/linux-arm-kernel/dad37ca0-a44b-59ec-0be9-fb121de12244@linaro.org/
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

