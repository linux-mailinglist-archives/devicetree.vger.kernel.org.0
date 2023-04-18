Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D236C6E6A42
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 18:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbjDRQ4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 12:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbjDRQ4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 12:56:14 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F5C6E7E
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:56:12 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id fy21so31934177ejb.9
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681836970; x=1684428970;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E9r6vhrkko4zPYKv6JRFQGVQ2+t+vuWkDBddrUXbkwM=;
        b=bRjrSxqIkvgEmtgigbiL9yBNKslSQECi3N6Uep879t1YooBRUvYPCO9juJiO8aCMfW
         K/Mw2ReqyXBmN7ptsnNFmxhXh2YNlVfi0Fu82BPZwhABVY1kl3tu/AgzrMV7xa5c3uzL
         BoSZL54V5/mBc9C/ADcwH66C5BRLYXWQrBAj7LE7bLzO+eVW5Gon94QMdF/9HJ2gw2JI
         6/vjftyuShxpxF2B4McOMAmqWq0bs4eWBrX+UkqWXigd/hbMHCexXZOMFP15A2IVCOb+
         Gl2vLZ4+MvriFcEs0/cCpju3vE/U5Kp207NFLzfMEpfaGqfEiJRGvlT9oJRU32/37APp
         FhkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681836970; x=1684428970;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E9r6vhrkko4zPYKv6JRFQGVQ2+t+vuWkDBddrUXbkwM=;
        b=KGrrky+en4uVH/AzyvWl7QIhoEKruDjT6t53ETgoKsB7nNje9+tZ5q1xot2pTWXGDS
         MiwAbr8ZbynoJgRZFGuP9thFlsZGPSErCLGwL1tdYU+5HnBbNqMnG7A4B3/YKVVLeSIG
         dCETHifSD9DJJu2NSg1CSgHt4UI6G2SIXsfQ6+mzPeipsQT7NXy8mPTiSt+HajxnWerA
         KwRE1UaIkZRsOoUPShN6/ro2ZrtGnJb6dFfW5tLpOCQmww7u2SvplJra6/cEixlvFAzv
         ENxTeFViMdkWATKoQ0yQWp5bYqverN6IjoNzVr8KI2Xb55LoXyv2STM/1ps8xT0PcjFI
         pAjQ==
X-Gm-Message-State: AAQBX9flZaXO0PuqwB0mQwY8NkzI0teZ/YLuirgN/GhZUIb5WOM1RMcT
        IrDztnSjcuXOtSfKl0wrkLuXjA==
X-Google-Smtp-Source: AKy350bPoEMLpe5oSBrQOv/9HkbetIXsMdKgm2IFpkfjExHHMqyOhIiyDer8ofhdyFWf3ShL9TrHjw==
X-Received: by 2002:a17:906:3456:b0:94f:1a11:e07d with SMTP id d22-20020a170906345600b0094f1a11e07dmr10473537ejb.32.1681836970620;
        Tue, 18 Apr 2023 09:56:10 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id z18-20020a1709060ad200b0094f7b713e40sm3041286ejf.126.2023.04.18.09.56.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 09:56:10 -0700 (PDT)
Message-ID: <39307e05-adf7-3f6c-9b73-821bb55e2cda@linaro.org>
Date:   Tue, 18 Apr 2023 18:56:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sm8150: Drop duplicate
 function value "atest_usb2"
To:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230418150613.1528233-1-robh@kernel.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418150613.1528233-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 17:06, Rob Herring wrote:
> The enum value "atest_usb2" appears twice. Remove the duplicate. The
> meta-schema normally catches these, but schemas under "$defs" was not
> getting checked. A fix for that is pending.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

