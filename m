Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F3ED64B7A3
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:45:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235972AbiLMOpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:45:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235837AbiLMOp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:45:29 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FA5CE1C
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:45:27 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id b13so5275441lfo.3
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EGhJetEBOfZKpra2/QnxuodvHdwOEKqqdsQPMpGt5u8=;
        b=xesQoVIj7OH5avrx3Fok5VTaZegZxo5wXs6+lteHbHsZ3bzKh1PLvnLXzMrTW74ZOj
         4O+fomw5SwodnfnweGIT6u4az6wPqD2shpekuc9O/5KloXHrRODWNPEtlfzFvItzKF+h
         hQBEFcaL6wO0wU+aH9u490yXsbMxXZwYu318s6kKmAeBiwMpRhjDOQhY7nHv005cckav
         Kwf37E88amtqer4dVj+5foohtm+yQel4pePhNJ5fB6rB1E819UTU9nGb+RxKgJCFt1TS
         0HjwaP+LR1pB6YFCxn1jNGe1K3zk9CWJBmdjMY5C2bxUEqAy68E1iTkxntKRY2o/E9yp
         HFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EGhJetEBOfZKpra2/QnxuodvHdwOEKqqdsQPMpGt5u8=;
        b=PWabe6b64xTnWVIH297aHZrhSsmq5ZzH0RylGeLmCGfMTCmZKtiu7Uvjjn13dvbJNU
         903zVZQskWjI9fuyWH5Q+O+p8kg6iNmd64Jjq3WuQS8M3I94XD+//Lus6G7XfWMOtV8E
         Ot31hTtlO89b4dZb0Z0n/ykKJ8xwYYcn2jNKrPFexOC7xhckMdvtelnKTWMdRt8BVw7r
         U9l07f7WhRHrlcSyjuL3/W+RfPT0SXAeRSl/3PKqBc7ZeVGXHV0nr6kQskzfhdxfv8Oa
         INmMEK25O8dVzE12pxT0EIxyxPlS+SUvfqKwxQICLUC+bDpCLDUYpmP1isx1BGQmMS7o
         ICyw==
X-Gm-Message-State: ANoB5pmFjtsxJviY5SkkRx+sM2CzdN9HzF6qnX8cpCvt5KcLkdsTeCaD
        z/QZpnrCcEr5Hseszy5rIH7YdQ==
X-Google-Smtp-Source: AA0mqf56DYuy9RnXWvmnGyA0Wan3w2WqtRbUDzK4AH/8JW+5t4RYLbKko/2AGPq11UeCHNsxq3EXCg==
X-Received: by 2002:a05:6512:2511:b0:4b6:ea42:de0d with SMTP id be17-20020a056512251100b004b6ea42de0dmr2868941lfb.39.1670942725456;
        Tue, 13 Dec 2022 06:45:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r18-20020ac25c12000000b004b4b69af17dsm390017lfp.214.2022.12.13.06.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:45:25 -0800 (PST)
Message-ID: <87fba38f-6b31-72cf-b46d-9c0b2c5a5a49@linaro.org>
Date:   Tue, 13 Dec 2022 15:45:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] dt-bindings: gpio: Convert Fujitsu MB86S7x GPIO to DT
 schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>
Cc:     Ard Biesheuvel <ardb@kernel.org>,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209171629.3351420-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221209171629.3351420-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 18:16, Rob Herring wrote:
> Convert the Fujitsu MB86S7x GPIO binding to DT schema format.
> 
> The "socionext,synquacer-gpio" compatible was not documented, but is
> compatible with "fujitsu,mb86s70-gpio" and is in use (in u-boot
> Synquacer dts).
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

