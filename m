Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C43DE78550A
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 12:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbjHWKM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 06:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233174AbjHWKMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 06:12:18 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 125B219A7
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 03:11:35 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso721604066b.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 03:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692785493; x=1693390293;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dvslABVAzipNPoJ0/nMorPgjdJDeEiU1OWTU9lLS3kA=;
        b=OON8aWjILlJycM7UAOV9v22NHL7g2NLcPhovcRfjt9/sThvwb0vfv7NheaxZiWRtcy
         CFlJSR8foCvqWl6ysitOhxDqqkZ791gtnP/+Bmbba7YiazziCs94PXyS0x7GUQP23+gW
         Lnkvc4RGMCVlR6NCGK2vYg7e9URhp9RWwyV9MU+kmxt0y/HUWUZcgxjxcMETenVVZcHa
         c7nyuU6VHqKVZJsSM+aWOxGjqQe6pQfsiyX0NgfhOj3LPqh++sGMHEQMx9jnkFfQHsJW
         C4e/UWzxhuBw1+pyPiiv70yOpTA2UB5EwFtipWpeROTnfOacx7/7Ls+6qvMqraD906nI
         lftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692785493; x=1693390293;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dvslABVAzipNPoJ0/nMorPgjdJDeEiU1OWTU9lLS3kA=;
        b=SoLeOztXAk+ZlXxn3lnwy6OG/ytT1L2WXb9lODzE6gWYRkFIay5INS6Z4UHTdj8P8A
         pJLsFWHcQItpoovqpOB+sHw8wiqf/N72WuLjMq455PKXM1aUKEkZ7TaJ3ct0QLruJEKK
         dGLL4JnjUmUVdszWYKdEbpi08aM+Zxsou9ro75kLGBOoL42ZsmhDljeaCVcSTduXfYNI
         o3x5K8k7Y459t7zUz/MjvYTbZhJ2/Y9o6OmuDwJNpUcLZ5SAe9622U4hymy3GjyxShAP
         AA+DETBGavyAxnFaq7fIW/jnSK1Dj9TDrINSaHvjqIK4auJG0pTqlUW/dQKnFKhZ/2V/
         AZuQ==
X-Gm-Message-State: AOJu0Yy+AH+RxgtrqNvVI3BradOpyAmft3WpDZPL54XLJL8ZRiX8zRQM
        fiUlYwL2aJqElQ6mUn3tPjNoye2Q0FVSDeXFWFk=
X-Google-Smtp-Source: AGHT+IFCsrzpCCo/w0vb67w/GTeqDE92TtqZG3dnlfwygN0cphkCqy57NVBQ8FMxkIoTdiW3A2Audw==
X-Received: by 2002:a17:906:cc16:b0:99c:4c94:1aa5 with SMTP id ml22-20020a170906cc1600b0099c4c941aa5mr9806323ejb.51.1692785493592;
        Wed, 23 Aug 2023 03:11:33 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id n12-20020a170906688c00b00982be08a9besm9828868ejr.172.2023.08.23.03.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 03:11:33 -0700 (PDT)
Message-ID: <692b7775-eeda-3c5b-cc24-c5dbdbb38c71@linaro.org>
Date:   Wed, 23 Aug 2023 12:11:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 2/4] dt-bindings: clock: add qca8386/qca8084 clock and
 reset definitions
Content-Language: en-US
To:     Luo Jie <quic_luoj@quicinc.com>, andersson@kernel.org,
        agross@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com
References: <20230823085031.27252-1-quic_luoj@quicinc.com>
 <20230823085031.27252-3-quic_luoj@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823085031.27252-3-quic_luoj@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 10:50, Luo Jie wrote:
> QCA8386/QCA8084 includes the clock & reset controller that is
> accessed by MDIO bus. Two work modes are supported, qca8386 works
> as switch mode, qca8084 works as PHY mode.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>

You ignored tag, so I wrote you friendly reminder. You responded:

"Okay, got it, thanks Krzysztof for the reminder."

so again you ignored the tag?

No, come on. Doing mistakes is fine. Doing the same mistakes over and
over is not fine.

Best regards,
Krzysztof

