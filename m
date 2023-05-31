Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 451D8718AF7
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 22:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbjEaUS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 16:18:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbjEaUS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 16:18:56 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498BB12C
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:18:50 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2af290cf9b7so987361fa.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685564328; x=1688156328;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xfW0uzgTADsWhcSoswaGkp1tdAOqlTEb9s1G6Pboe/Y=;
        b=Knwpl11wAJpByir5y9Ihgahijnbhr5aV5DLBxtRiuInO9UBfTXRZYStISf3LvlCSOr
         gTh5N9TlcXO86fcFvg7p65LNMPagDHpvXL0AZT6nguxBxKn10N2oszYyl3/XKT9dedpl
         avo05kphEPJbry9s9AgWXP1g7eSkxULHiKyPVG1HU4FtLNegjBNBEj7ABWvDJwP2suAv
         otuId3S+Ti2KVdRZ6IE7fV2CDRTLzhWnW/CWHCv4UFXvXU9HfTAN8Wo9OBGlmPIdBmRM
         vRdgynkumPFVK0XZ7mMAF6zN1NUsVRAIVUbOeUC/LGZdv9OQrcWPiRKxwIHTtttoBcYf
         hISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685564328; x=1688156328;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xfW0uzgTADsWhcSoswaGkp1tdAOqlTEb9s1G6Pboe/Y=;
        b=TTsK/a1AEo3lYFWQVBvWaveWAp5PyZLsp7P6lafvzjOrzyAuVS2a8OiK5i84aTbIJp
         g1ziER37DIjM2FvAqRurbDZa1CSRf23b1CrH73vIlh9eyvO3qcFHyQq3LUn4pJbKoFAr
         3TMxovyzCO4z9rDvC6OMBK/Svj0VRr6zpsjQTfJN2HuLhKwI3TZUlk/YEbMytgEdPZdQ
         K72WOzXayu9MYydvuUI2Uva1T9JS//sdb/JYyfvs2LmxCXeudXmr19gm26kOZIMBk2fN
         DKbRScY3GhJbAV4HZn6XGahR0/+Lg4z7GLq8MmiH1JldOdUqDV2FS13Il2XzETtq77hf
         uz2w==
X-Gm-Message-State: AC+VfDx6G/0w3KDcZ/sNGajRZIdbGFTyi5Pz2BfDLc0n8ab8pbDqoWFR
        BZNsk1ZkrTnXlXWFxX6p6L0DeA==
X-Google-Smtp-Source: ACHHUZ7MnLxIs+OPsxwSz9SByrSFUAFokzZIXJoW5Mr6QI6WE1tX+SQJSsrIHUQ4EFkbIlqgaPoTzA==
X-Received: by 2002:a2e:3013:0:b0:2af:1120:3f6a with SMTP id w19-20020a2e3013000000b002af11203f6amr3410946ljw.11.1685564328477;
        Wed, 31 May 2023 13:18:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id j11-20020a170906410b00b0096f689848desm9454874ejk.195.2023.05.31.13.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 13:18:48 -0700 (PDT)
Message-ID: <7b171f36-3a17-ac6a-6033-ef2d20e8538c@linaro.org>
Date:   Wed, 31 May 2023 22:18:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: samsung,mipi-dsim: Use port-base reference
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20230531014315.1198880-1-festevam@gmail.com>
 <eb2b71df-6767-40f3-afc1-ef1552aeaee6@linaro.org>
 <095bb5c25f120536bf38bf87df5900cb@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <095bb5c25f120536bf38bf87df5900cb@denx.de>
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

On 31/05/2023 21:12, Fabio Estevam wrote:
> On 31/05/2023 15:56, Krzysztof Kozlowski wrote:
> 
>> This would have sense if you kept original intention, so
>> additionalProperties: false
>>
>> Without it - you just break bindings to hide warning.
> 
> I am not sure I understood your suggestion.
> 
> Is this what you mean?

No. I meant that port-base is for cases when you extend the list of
properties and it needs additional/unevaluatedProps: false.

You don't have it, thus your fix is like this case:
1. We have DTS with wrong property, not accepted by bindings. What to do?
2. Let's change bindings "additionalProperties: false" to "true".
Problem solved!

No, not solved :)

The graph bindings are a bit tricky, so the best to look for existing
examples.

Best regards,
Krzysztof

