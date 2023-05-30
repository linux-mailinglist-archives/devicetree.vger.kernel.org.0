Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E82C7165D0
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 17:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232821AbjE3PDY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 11:03:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232587AbjE3PDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 11:03:21 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 065AA121
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 08:03:13 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-96fe2a1db26so810850466b.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 08:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458991; x=1688050991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aEQIS/yFx71ksD8fqCte2hKOWxpFvygsifDUrj8phvs=;
        b=aN/gac4kaiXeacQLi7VjMayPi1MFte4yfPUgsI1CsRSGdTsepky2Hj41IkxLP3s+AX
         7y+s02gUNv1muYqXr7R2YxL/i1ZWjwXxK1AEuS4n4iGbt3FGT63R9R/B5FoczB7MRko1
         PQX4u0u+jado2AmqHECpiaDyiMonRZdZqFDFZ+qt0vNTRTaWRbUAMxkfRKJR5FeoZAJ8
         yn0AAtyWy01+4/ImyA8E/X2t1SLu1SfijO83m58Y1rVpaswsYAFmdZmjwFADhwqL/x4l
         xiXfcf6fXpW/ZE/6VDG+GgMytXPxRxtPAOrIJOy10OGG3LNg4DkJlLcD0ClZtQL/IqMm
         1nbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458991; x=1688050991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aEQIS/yFx71ksD8fqCte2hKOWxpFvygsifDUrj8phvs=;
        b=SXIOaydAAsFCuqztYRtlOu4XPnP9Cl5JLvqxKInoNhHShMS4Tv7KeEDAv6uWW1lQqF
         iDLJKGTRpcHY0gL7KFgVy/m1QqOpdfDHwACDy5ECYpz/hVAvV7zNm19NJ/1YpGT/hd9E
         lAuYN1H0ldHuxT5o9CuBt1pCQkx7Ica4wD1D+0gfh8kMq54Ty4ZdpYQWdpatt/Gt9SmS
         O0T0kJo0Zb3chFnzKpDB4gIxKtchB/uAw8XxkjDiD3f30x386DwpHcyVvj84kGwRQAN3
         Bj9Vst3YCXXqI3GB2SxucpCi2uAm60xHMqnLfWjF2RfScRDBNUvfsQ61uRCJbtpEqo7z
         N9aA==
X-Gm-Message-State: AC+VfDzF4gF00S970imXI21RNt5KNyOQVRQQb6m5gCSnT/bm22JslfE/
        3iprewXjKZ7xp1y+ThTOiYAbrg==
X-Google-Smtp-Source: ACHHUZ6XvwXoHtKC8YDdDZKazBHpDWhj1BoSeeIbpL9HLB6seooGiaMn7Rbk26lp9ksoPRaeY/+3hQ==
X-Received: by 2002:a17:907:d16:b0:960:ddba:e5c3 with SMTP id gn22-20020a1709070d1600b00960ddbae5c3mr2787944ejc.32.1685458991445;
        Tue, 30 May 2023 08:03:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id f11-20020a1709062c4b00b0096a6bf89259sm7374073ejh.167.2023.05.30.08.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 08:03:10 -0700 (PDT)
Message-ID: <9218c23d-91f2-9eda-47b1-f2f38bf13535@linaro.org>
Date:   Tue, 30 May 2023 17:03:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: power: reset: bcm21664-resetmgr: convert to
 YAML
Content-Language: en-US
To:     Stanislav Jakubek <stano.jakubek@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230527141222.GA5048@standask-GA-A55M-S2HP>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230527141222.GA5048@standask-GA-A55M-S2HP>
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

On 27/05/2023 16:12, Stanislav Jakubek wrote:
> Convert Broadcom Kona family reset manager bindings to DT schema.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---
>  .../power/reset/brcm,bcm21664-resetmgr.txt    | 14 ---------

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

