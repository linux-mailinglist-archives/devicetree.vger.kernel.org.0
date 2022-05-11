Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F3C452381D
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 18:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235088AbiEKQH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 12:07:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230114AbiEKQH6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 12:07:58 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4497F6B651
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 09:07:57 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id l18so5017375ejc.7
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 09:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=r8lfBq49CvpqwCcxIZTebGdOGfYEQH4rNVpXiGqsOY4=;
        b=zBrDVbZ+aoW9LO2HjaKaE5TxzqbWcPqbqtbgVWQixSh6GRQ20DEfCklDX1LJ/IWEMh
         wRD2A1nQt0PilHzHcjFm1BHq+rVxD/vDM0KxPjw6mcU2Dv3flUPxKGuHK18KJ02q8tCR
         +HnyPolC332d6F+n/uK3KRrj2lND77MlHsPHJfmYbrkyPxbcdTYLRt0MlOG5RlFXsMfh
         27fT2mpXGXVtB/fymMcwSGGjhLVV1ks2IoS3TkAxUm4It1nJuERh+PywdbN7/063J63w
         gRIhPSii9vCqFx5rFN9E6FTxNwDRL0Ua0+BrsiPk6tfMXrXd+bF8FjKUuQJ2V2w/VY8i
         Whag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r8lfBq49CvpqwCcxIZTebGdOGfYEQH4rNVpXiGqsOY4=;
        b=4k7+NVoGJRMREnZYWQxfRmwXKjxp1TQ1dRMVxm8ssZJFdNdaYoI3N9UNShGfbRyAHz
         zwCSNgBpMkfe229IouKoi20AtL57c8hnFvEXz1XZRR+UU/QKUYvsdkZjbdeI6w7Y52Wi
         ZinC8aMQLvgzITfD1naNSrwKPg3Cear8PPDJyLX4tIJVLL268wMqJ/ND0DgmH8wkiql1
         dc35JbyZE+tDEPASMkASSUZm1RHCmqN9/lY9YgWaRoDlKeDHNv7KlH9iUUlZfRJZNKww
         s+iBUAn8ZF8LBSdy5eL/h6YDbdzLpoEa33xUymO9b8dTOFVeQvMSDfOHKfcDym8m1sla
         MQLA==
X-Gm-Message-State: AOAM531pyWUzs7hYB4w5r1DuyjRdFc07CdKSFuVRnfNAcbxJ/5n0jT1z
        bY1t3B0LZx0Br+BtbASU51NQVQ==
X-Google-Smtp-Source: ABdhPJztaxLoLolaMvsN/SCV1RH7GIA07aUJUlY/wRpTHca7AQITjd2axM8ICmxJk2CXFDJSQu/ixA==
X-Received: by 2002:a17:907:9690:b0:6f5:160a:25b8 with SMTP id hd16-20020a170907969000b006f5160a25b8mr25695788ejc.504.1652285275795;
        Wed, 11 May 2022 09:07:55 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id rv23-20020a17090710d700b006f3ef214e22sm1087837ejb.136.2022.05.11.09.07.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 09:07:50 -0700 (PDT)
Message-ID: <e5055507-1841-1c46-c817-8b1d95ea973e@linaro.org>
Date:   Wed, 11 May 2022 18:07:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: vc5: Add 5P49V6975
Content-Language: en-US
To:     Matthias Fend <matthias.fend@emfend.at>,
        Luca Ceresoli <luca@lucaceresoli.net>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20220511053455.360335-1-matthias.fend@emfend.at>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511053455.360335-1-matthias.fend@emfend.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2022 07:34, Matthias Fend wrote:
> The 5P49V6975 is a member of the VersaClock 6E family and supports four
> fractional dividers (FODs), five clock outputs and an internal oscillator.
> 
> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
> ---
>  Documentation/devicetree/bindings/clock/idt,versaclock5.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
