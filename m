Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29A8A71FAA4
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 09:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234277AbjFBHGF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 03:06:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234245AbjFBHFY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 03:05:24 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3AEBE51
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 00:04:59 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5149c51fd5bso2456798a12.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 00:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685689498; x=1688281498;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bTldhXkJo+cnlPsMiyCFVYTORfO665ew2Q6qnXi/yLo=;
        b=sBMXqZHZXSDjAfm8mLeFJV1iN23CaLp6LqXrHrsVFpwfGt+CIvw/C0ByuyIQeZwbmJ
         /L7K5OnKtwAx1Jygl17TPQs4leiyOOw9Q9x8rWPiiSfCRxmMiO6BkZ0Zc0X3wRD77NWl
         WBQxLJJ5oHBAkrbOO7rdf4jHHwCO0u5TwKIx3/NrjTU7p0hCLD3PuOazo+QoEFIU6adV
         vKeeqHerSGh1b+gSRdnwlAaeQM0lE85Jg7yetfDPv+2DCFLHz7PFFCftELaU2JfvQK6y
         jjVEfDd1USAdDz/m1qS/X+4aunh+P8wWembNpw8IyEjc/NPW5YXen6zi86Vs+Pjdaejf
         UhtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685689498; x=1688281498;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bTldhXkJo+cnlPsMiyCFVYTORfO665ew2Q6qnXi/yLo=;
        b=eHWCu7mXsPGIF70ft/ecVmA8O451ST1DMF09sSIGjGF4MPlZcsCjCoTu6TeMCPhYe6
         d8YmVXC85JlJNPRT1sGu/K7kjtNUgWN0nPiaXLwPg3VVqHpveZOv8tLoWIuaAsVjy6bp
         F3QFgi0BglkRuEH+DkAKbOP/Yzs75nU9BpHl9v0F8KIZxw0ejhHxI8kkElYbkXkzfkz7
         yr9s1xlULQSi09l/CTZoiG5ASUfmFZcjf087NamCeuMePAeQmhkXq2w8NS9ANi82rTpK
         THZQpCcSgIIwt9LOYpDzWi4NZ/AXmdfViVq805f7atsqGhsnRhznO7/JEnrusnJX+IMg
         PrkQ==
X-Gm-Message-State: AC+VfDw9BlelMaXpCYCRsMRjV8JH4nDDW1bzijOucA9+qefcSFxHbD3x
        uRNHmK0JLbEe2BfP3sQHecK86w==
X-Google-Smtp-Source: ACHHUZ6JiA9aoo407geZBJrdz30BszRHsc7rn452xdM9ZiQQBPOavzi55F4oX+jPMfGjaWILCx/iWA==
X-Received: by 2002:aa7:ccd2:0:b0:514:9eae:b099 with SMTP id y18-20020aa7ccd2000000b005149eaeb099mr1404008edt.17.1685689498442;
        Fri, 02 Jun 2023 00:04:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id l10-20020a1709066b8a00b00974556e50a6sm389290ejr.114.2023.06.02.00.04.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 00:04:58 -0700 (PDT)
Message-ID: <3ca449ae-6e7b-6e3c-df4c-8ae92c20f77f@linaro.org>
Date:   Fri, 2 Jun 2023 09:04:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH RESEND 3/4] dt-bindings: arm: qcom: document MI01.9 board
 based on IPQ5332 family
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230601042054.29075-1-quic_kathirav@quicinc.com>
 <20230601042054.29075-4-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601042054.29075-4-quic_kathirav@quicinc.com>
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

On 01/06/2023 06:20, Kathiravan T wrote:
> Document the MI01.9 (Reference Design Platform 474) board based on IPQ5332
> family of SoCs.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

