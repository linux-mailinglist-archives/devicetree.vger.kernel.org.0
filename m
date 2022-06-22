Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98E595543D6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 10:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231675AbiFVIKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 04:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351503AbiFVIKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 04:10:13 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F84C37AAC
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:10:11 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v14so22229328wra.5
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=R4bw93UekXSuHSNQNFdF25jj0RvEbEo1Y6oF5ocRdUA=;
        b=y8KcT8rvsYu8HA14LSGX6EEHr0vF1AvJn3gOJM2PNGWVaNv+JrHT5dp0/8UBB81s0L
         hIZxJA+HfXeXAxxAonODbCzkA5b2ELnT2H5j5MqrniEKrRucdiUhiP4cCzrOfB7fUbTE
         fdLa3TcWvZ7Npq/jDcHWKionjAd9HHNZd/izAqKwvwVCEzyjEEIhYnOe7ibVuSXhV3Zu
         OBRlwUMsVYSHUUzG0oIVt/aO52FbNs1I06gZ60iU1cnEpA4ek2NwGUJKIAU0BSxmGVLj
         6iZEZQZ5oepqx3M2fAieIRigKER9FGocGEP5Lc4v2paguhy9yCdLqEViYWGuXLlKB7aQ
         05KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=R4bw93UekXSuHSNQNFdF25jj0RvEbEo1Y6oF5ocRdUA=;
        b=ePRbnNMJFEhxj76pL6o7k72EAOFhgjdhJLkF/sivYGzta7M6dICcygqGK7TWP/azmg
         Fl2QKPlDglyVdbjycs5R8J2XNMT+EyzCGIbaupsvmJmSDwU2eRQ/CHi1H7VaEsIBDeTe
         A7HdVmT8ReBXvTb7nviCk1ENtWR2ziqQPWJwLjQoHY1XWPaZpQjLpzf2tZRDnju3waH3
         Zqim4Tg7skJai9FJpZINWnZRR//UbcwKXrVW9ThbWEuqvpRz9lfHNFd1O0Q68GjjH1An
         pmBVSX7RAWSc8FsAvysGJfAyIebS2j8Jf9TaR1hwrDwAsR843v+99lH1wzl0nhb9Vtr9
         MN1Q==
X-Gm-Message-State: AJIora9NI04caokaJfVyHNBarvKD7JEcHuDLXxWV8PMztAZfZswnn0dN
        i3+lu231uwUr1x32vocaXJl6zA==
X-Google-Smtp-Source: AGRyM1voQW/E38nFU688OGDk6JDbvoKpvS+nN9DwGpbMQI2UNcJ9Leh1CU28PlIW7x/VWyEl9Jkyjw==
X-Received: by 2002:a5d:648e:0:b0:217:d2cb:d6b2 with SMTP id o14-20020a5d648e000000b00217d2cbd6b2mr1974096wri.433.1655885410015;
        Wed, 22 Jun 2022 01:10:10 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d4c51000000b0021b962f4256sm4673759wrt.80.2022.06.22.01.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 01:10:09 -0700 (PDT)
Message-ID: <5251a825-0093-e54e-e652-1bf86edbe5fa@linaro.org>
Date:   Wed, 22 Jun 2022 10:10:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 01/12] dt-bindings: vendor-prefixes: add Shift GmbH
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
 <1334adaa-83f4-8682-7033-1549cfd8af49@linaro.org>
In-Reply-To: <1334adaa-83f4-8682-7033-1549cfd8af49@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 12:56, Krzysztof Kozlowski wrote:
> On 21/05/2022 18:45, Krzysztof Kozlowski wrote:
>> Add prefix for SHIFT GmbH, phone manufacturer
>> (https://www.shiftphones.com/en/).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Bjorn,
> 
> A lot of new boards and patches might conflict with these series, so can
> you pick it up early?

Okay... so I'll take it.

Best regards,
Krzysztof
