Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9F066DBD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236115AbjAQLGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:06:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236592AbjAQLFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:05:43 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA8230B24
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:05:41 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id t5so25764057wrq.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WkAch3cPlv0u9HLJEP9wT65kJ6jSPsixjJXREuqK/Wo=;
        b=XkqevF5dsEDoRoBJSq56XUMlWdzwqaOhj29iLZMnB5anXQ/3qz+bSaHppM+ZhfOUqq
         3l7qzJmcCnOUxKK1d/yqFQajCmQlhTWQcE3AQsDLHfMPLzRGUiHWY5jjy/rq6Gs+XqEg
         cXt4Vv6EFfX2Ou027dcFLewNxdiw89qUedqnD+7vNYR8j4VUkOgSvdAjQFDg9TPFSVMQ
         3l6YwvADl8HOLsN1jqs9cJzWZKqw1TsLMsGu17UqSNnfhVIKCqLUPAUZX/VBb3pWS0rZ
         0Fx0WUsmoLxFDlAyy+wPUBHXxpYD6YWkdYpk/YHV0u3UuoKXPbjpYOOaeUxuCJ0ICZC7
         wHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkAch3cPlv0u9HLJEP9wT65kJ6jSPsixjJXREuqK/Wo=;
        b=fMklSu+0paDfKILYGfUKvKr7CAESz1NhFQRBDycKU7noRtJAmTIqzymE3ZniNcgACM
         cwQBtnDujXVW82Jy7ZC7EOUKKER8vyR6r9GaKOT6P9IrjOMRip0rb8N3VV3N5Ewdar/x
         lpoTZDH/t65HsQqn8R6D9dckztiOSuERYO3Ex2WDL55g4jfmVlnZjobH2hPPiX0psVaV
         uAR1Usdz11NcHTwXAVvXYmuvl3RoAAjURCm9p4sBhtcJ2KHig8uZ5VXtPKkLTcyqh0jE
         e4w1sBGcpJLhA1/QN1zmFxJEAPy0EPpC9WBDYEZWtVw1U8no9bjMZq7va3qj3NyS92df
         sJBA==
X-Gm-Message-State: AFqh2koB7HmpvZdhC9mv1s03orUmnG2T4DbGX+N3gYR8zh/gRb2xyPpx
        2ys2NJvN8QhmxcMomMsKcTgCcw==
X-Google-Smtp-Source: AMrXdXt/Umjyw3OqUj4Zs66LDzH1XafK42kL2QUfsS7wOTJ8QQOs22oaeMdWBPRUEz335Y4Rdv5MyA==
X-Received: by 2002:a5d:5e85:0:b0:2bd:ec14:9c8 with SMTP id ck5-20020a5d5e85000000b002bdec1409c8mr2593689wrb.40.1673953540284;
        Tue, 17 Jan 2023 03:05:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bt19-20020a056000081300b002bdc3f5945dsm16265978wrb.89.2023.01.17.03.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:05:39 -0800 (PST)
Message-ID: <c266f909-e84f-3699-c658-a4e4880d57bd@linaro.org>
Date:   Tue, 17 Jan 2023 12:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: arm: rockchip: Add meaningful comments
 for Radxa CM3
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
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

On 17/01/2023 11:54, Jagan Teki wrote:
> Radxa produced several versions of the RK356x-based Compute modules
> called Radxa Compute Module 3(CM3) for consumer and industrial use
> with a variety of form factors.
> 
> So, adding meaningful comments on dt-bindings would help to understand
> more about specific module relevance.
> 
> This patch is trying to add comments on existing CM3 bindings and
> expecting the subsequent modules are following similar comments while
> adding dt-bindings to it.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

