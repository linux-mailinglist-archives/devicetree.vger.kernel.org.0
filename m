Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CCC15B45D7
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 11:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbiIJJ5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 05:57:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbiIJJ5B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 05:57:01 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A8ED61B30
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:57:00 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id q21so6889886lfo.0
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lygMYUYxRPSYT5H0Ya1zp0m+glPknn5XdqgvO7ucKO4=;
        b=aUTrdmNZNdelst6a64h9mY3uUDJcPU0pg50MSjlAKs5YR5X0wdvf6iNhx0Jjg50uww
         CI00+eYfWq0cYxW9ZmLcyPjCvS3FPRISPPk/wcH4ZtnWpe7EzrcobC+WFGF/8tj2Alf6
         99rfEtVHsO65/G0ljd28gZ0Dr/8UWjV7IzmDAU9ajTJXYimq3wl85+Yla9Z8za9qr2wD
         rA/EYxIC6wYIHLc5RJVWXgLyY5nLct3/nzqiRf+LxFhanQP1eA72BdvXb8DfvgHLBCYl
         7jW5DJqDCodgc4yajpFlxuTg9nl0OunS8AbCmIzGbKeJcm0K45XGgbEIdYqca2CBHz5C
         V8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lygMYUYxRPSYT5H0Ya1zp0m+glPknn5XdqgvO7ucKO4=;
        b=70tEWJ7GUyjDvTBuG52TBvYS6fw+KJ2IKKGPbFnM2by4DqySi2GxVjHzevpxeL4zv+
         ybkCUIUNQaqx1mJKeAaa7bqlcwnXk8+LPbZ6V052zah4+l6UgSk9VrVQhzwCr+68BY6T
         ymVNeYLpVxO4OUqXPdEnmfv5imdUQYXAC1t/YOAfvy88o+R0jE7r/iboxbDFdgo8+Kv8
         wsQc9VsrE3gtKBjT3Qx9ApmZX4obSBsAEdDUkpl7rxC46HbOlQ3/u7V9V0HK55bKtv8w
         PjpK+EHk9skbSItnncnRVThbmNsq0w944POQjhd7+emtfzj4jT4JIgjXVaSI9aME7mYS
         Vk3Q==
X-Gm-Message-State: ACgBeo0xxzTwkp6iE5Sc5Ct+W9uBLn672E308zaVmwbpajvqx/43ZB89
        AIVvAV3Nd6Zo8lXNWxd62n4yUpoiKNuGew==
X-Google-Smtp-Source: AA6agR4iEi9ObHgqEcSaW+6uqCOgJkuRc2bFmxCpEJwBhpNpdXS8KvebgVM1+Z42Z9URFo2Q7JBdYg==
X-Received: by 2002:ac2:4c42:0:b0:497:9dfe:e870 with SMTP id o2-20020ac24c42000000b004979dfee870mr5500481lfk.184.1662803818793;
        Sat, 10 Sep 2022 02:56:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u5-20020a2eb805000000b0026ad058ba51sm289922ljo.45.2022.09.10.02.56.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 02:56:58 -0700 (PDT)
Message-ID: <82dcf030-dd74-19f6-1069-82f1a6d89769@linaro.org>
Date:   Sat, 10 Sep 2022 11:56:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [RFC PATCH 03/10] dt-bindings: apple,aic2: Add CPU PMU per-cpu
 pseudo-interrupts
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, asahi@lists.linux.dev
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Hector Martin <marcan@marcan.st>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sven Peter <sven@svenpeter.dev>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220909135103.98179-1-j@jannau.net>
 <20220909135103.98179-4-j@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909135103.98179-4-j@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 15:50, Janne Grunau wrote:
> Advertise the two pseudo-interrupts that tied to the two PMU
> flavours present in the Apple M1 Pro/Max/Ultra SoC.
> 
> We choose the expose two different pseudo-interrupts to the OS
> as the e-core PMU is obviously different from the p-core one,
> effectively presenting two different devices.
> 
> Imported from "apple,aic".


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
