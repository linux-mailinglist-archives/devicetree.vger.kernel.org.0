Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B76497573FD
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 08:23:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjGRGXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 02:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230232AbjGRGWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 02:22:53 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E4510C2
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:22:49 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51e29ede885so7565620a12.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689661368; x=1692253368;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OaCAD2RFHD1/f8l8QgguLroNAuxMv7fX4CZEpia6OyE=;
        b=OdPOLdIjn+Ss0Zh3816RQNMU4XVw69+1WBXavPjn8M73d62+xfW9qFf/fybnEgp/ov
         ma/Y6EgJgzA0MJlOm9Wa1P7lueL99gKLg17QW1fqCwJwAgrIW20/plz8q4OX/rUGkvas
         z7kT8d/csWuf5s1rF7ca6u8kIrsDojJFWMTSJf8mDTHmjQ1VLkOLnNukRFiHx9OeCm2X
         dQUHFLWSJ2Adc3nY+8EGzb2iljZblO1HGHRk6ZATWPC2RaS4SwCxiiy7kZZ5C+lAZ4AC
         TzlryVAjGhmnx8NDzzBnWzYv6cYsvqWUTxm4Z5TxDlKsbB/bHbKKaxg8hf83Lrz5tiap
         /7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689661368; x=1692253368;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OaCAD2RFHD1/f8l8QgguLroNAuxMv7fX4CZEpia6OyE=;
        b=Wd5Dg//XxJtMiLRY3N7tNO66O9udNU8rIsHThgbOYQctKjTSAxaaLbncwww+i62HSb
         pWI2oA2FJF10I6XJTNNWfZLVJpAs1/PS5PKmrRBeArDFZonfG3xJHlJ0shzC02uDVgOe
         lZVVqtmFkelsgqxK9L6Wk0GfIIGg4w9K/+D3bGk0HVT9ZCvf8VlgcfRVffqNVW2F/v2/
         VhU0IkRRsccTjknUxbblDf6csqVVZZZ/uT5oD+mnrVGuS/PMEHx1jYt/YIJUKlLCSzt3
         GTIjn7wLDNSR0WcfNPuumH9FB/+vT+jcNGK4zCOM3B+Y4JAmorNjn87iM8Jn4LX2NLFb
         R3Og==
X-Gm-Message-State: ABy/qLYVEs49lBUALZklqlQroPkovjPG2n1tDGNTX2ein3UCrs+QqvHn
        1V9l5lv7DcD8/KX8I3V7MQQxRg==
X-Google-Smtp-Source: APBJJlERbsW44KiGVECnZOWLQzo+ggoEelougNAtieJRx00obRFXnygLXlcSEMoxgkEM4BHnN2BSZQ==
X-Received: by 2002:aa7:d8d4:0:b0:51d:8ab1:5df4 with SMTP id k20-20020aa7d8d4000000b0051d8ab15df4mr12972330eds.21.1689661367886;
        Mon, 17 Jul 2023 23:22:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id c15-20020aa7df0f000000b005219de74217sm697424edy.43.2023.07.17.23.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 23:22:47 -0700 (PDT)
Message-ID: <1da4ef5f-c4b5-4415-c2c1-76f1ad7d06a3@linaro.org>
Date:   Tue, 18 Jul 2023 08:22:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 1/7] dt-bindings: mfd: qcom,tcsr: Add the compatible
 for SM6115
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        quic_schowdhu@quicinc.com, gregkh@linuxfoundation.org,
        stephan@gerhold.net
References: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
 <20230718061052.1332993-2-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230718061052.1332993-2-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 08:10, Bhupesh Sharma wrote:
> Document the qcom,sm6115-tcsr compatible.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

