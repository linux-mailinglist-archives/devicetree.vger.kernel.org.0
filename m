Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6EB36DC9F3
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 19:24:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbjDJRYQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 13:24:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjDJRYP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 13:24:15 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ADB31BFF
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 10:24:14 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id j17so4383012ejs.5
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 10:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681147453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=koWwD7fW2o4NGkmDSofMBeJGJHuscKeENe9f/diWRvI=;
        b=BKeRZ7uKzncioUs8Wm5Z6LzPr7+s0eVGV9atHat2aQYCOKvngm8cvIXAAHhEyyQjVn
         H5c/yCFjmc3qn8vqAXU9jnVKooXbUNIwrOXTmiA4dfTs7Gy+SB/V4Hcc426CijVBSwRQ
         algihzg48SFCXUO/1PZ+cyXWprw2xB7PBZVJa/Rxgebj/SvhjmCDvUo9kOUPymH3Jrhs
         RKv/c/xuI2DOBSnBqDqOTf3eqANMKDp3hj9IH887+esXGNF4dSk+aV98Oqm32HHYfZTI
         ChGiKzqZkLwnP9YMfF6RWwS88HXv5LX1nEysfgol/D0W4WC7ypWB/a827oS+HPzACxgH
         VFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681147453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=koWwD7fW2o4NGkmDSofMBeJGJHuscKeENe9f/diWRvI=;
        b=ibdjkzVE74ng0nbYqPlNJFsDW38sn+DG04+WRQwDyseob1Atd6oqx/0tm+QUFL1Epn
         JHMjlXhlBdbk6q7XHsqswVGzaX37XurRLTWozx1JZhPlQvoetQ/O5O6N1yPRBHEQhgWq
         +pUk7+DJmu9epiCFB7qFHlkWntjRTjlMsGBa4D66TLQQgVl81WW99b47gPVgQW86L/yB
         D4VK6g7ght6FUsfaooBWJG9gPhJnUkehDJPLUNewufQ9Iv0t0XoofdAypv8TzPY+nVMI
         161p+w9FW2YjnOmm4W4TlGFtrdO1Niwe3NNOyLKkV3nLBmQb+lSI2DA6xMkl2OqbYkWs
         4gxw==
X-Gm-Message-State: AAQBX9dfU2qf80E+OgRJ+TXWqnbmEo3TQxZNFL7iNFFokxVrIpa0j1gv
        9Qz3LQB718UVhvphqvkZs0KxWQ==
X-Google-Smtp-Source: AKy350aHmBeMFE3RfPQDws/WVojsdv2C6RNcYf6srvZlnz779IF9J9Qi5+YN9Nu5lJWz1TUFg8s7GQ==
X-Received: by 2002:a17:907:c319:b0:94c:2548:395 with SMTP id tl25-20020a170907c31900b0094c25480395mr1600084ejc.52.1681147453145;
        Mon, 10 Apr 2023 10:24:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1a6c:6968:e633:48df? ([2a02:810d:15c0:828:1a6c:6968:e633:48df])
        by smtp.gmail.com with ESMTPSA id ha19-20020a170906a89300b0094de0c3d152sm263989ejb.172.2023.04.10.10.24.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 10:24:12 -0700 (PDT)
Message-ID: <1f877bb4-e14a-fd29-ab97-228f9f11e7b4@linaro.org>
Date:   Mon, 10 Apr 2023 19:24:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 6/7] sARM: dts: imx28-tx28: Replace deprecated spi-gpio
 properties
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230407161444.1682038-1-festevam@gmail.com>
 <20230407161444.1682038-6-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230407161444.1682038-6-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2023 18:14, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,

Typo in subject prefix (ARM).

Best regards,
Krzysztof

