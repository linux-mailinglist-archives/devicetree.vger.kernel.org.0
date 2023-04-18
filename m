Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46D4E6E5A54
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 09:23:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjDRHXD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 03:23:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230448AbjDRHXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 03:23:01 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A613C3A8C
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 00:22:59 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so23058764a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 00:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681802578; x=1684394578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N3T4qzQ386UMm1Jq1CVcwpetcL7Lh9seXXqAFFBWSFk=;
        b=RJ5M0AFQjbLXZ2h1tv8V456IdJFFK1o1tRX7zu4QYAORmnF0xm7RZcGN6NlTQkVEb2
         c0aGg8bt/LM6D6EdYZgEqvg22PNt69KuXIcsZRPrm55DnTaTbc+u8Z3kWsuLQczP/WYY
         1kWWUKkpdmdirc5br5UpDiqUWm/ZXOFly3S1GgXScxgK5pDky4DkH2qLh0Ya4WkZcuF4
         c1/ofyONceFivJOy3O7gcCurJiFHIfKuzGGz3InCsE3rb2FQ/1wFHn20qYAxR0da5ORH
         t7jNvJe0FT0XySQfyl6tCryGQHUwbrLtV8wJTt719orO7oMho8U+NL9Emt2rn1LY69uQ
         chBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681802578; x=1684394578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3T4qzQ386UMm1Jq1CVcwpetcL7Lh9seXXqAFFBWSFk=;
        b=ELVOtHWa9w6lPWF6QRtK8Po4+cv+icC69rwX9O9SlwUhmEehEjX6SDIJYVTqkmxG2u
         TL9S02YGM/UxjFUWBMtbUydF55mpTnyD2ofctgGY2kGP1OAAh70qqBHneBoc9FmwLnR9
         2ARKmWHCTrfazqsgUdMqfBaZO3OceAft9EcfYdRHHsNVVu80hy0URjDDm6//jsaGB8xq
         Pe99/rjcDLILyxht9weB5I31CZQpoUiOQttoKrA1y0jxBzv0FNxBSSQL5N972iKbVqpW
         RhNFGvq4KVNWY4DJYy4kEDUMS7MXs5l1aHpLA3cg7FhmtMlUFwrywec0QWbseWxhwgsr
         T7IQ==
X-Gm-Message-State: AAQBX9cE+BlA0omxHn53PNSiXuQiXmAFfSIm3H0rottpR7cfnNSd55dm
        GHM8aP0jw6hikb5toS90EUmqFg==
X-Google-Smtp-Source: AKy350ZjmGyY8bBRAkFWWouo7cz6/70JF0hWdv8/eM8JpUuTiuEQkdkR4ZqLDoHyPgQr8BCrdAbrRw==
X-Received: by 2002:aa7:c949:0:b0:504:9e79:e86f with SMTP id h9-20020aa7c949000000b005049e79e86fmr1391615edt.18.1681802578028;
        Tue, 18 Apr 2023 00:22:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id q6-20020aa7da86000000b00506a09795e6sm3018474eds.26.2023.04.18.00.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 00:22:57 -0700 (PDT)
Message-ID: <fde49fb8-c337-3a6b-811e-b9d7c3620393@linaro.org>
Date:   Tue, 18 Apr 2023 09:22:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] dt-bindings: mfd: stm32: Remove unnecessary blank
 lines
Content-Language: en-US
To:     Patrick Delaunay <patrick.delaunay@foss.st.com>,
        Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230417181342.v2.1.I483a676579cc7e3ac07e1db649091553743fecc8@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230417181342.v2.1.I483a676579cc7e3ac07e1db649091553743fecc8@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 18:14, Patrick Delaunay wrote:
> Remove double blank line.
> 
> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
> ---
> 
> Changes in v2:
> - update commit title and commit message to reflect what the change is
>   V1="dt-bindings: mfd: stm32: Fix STM32F4 DT include fil

More than one file has the same issue. This is quite a churn to handle
such patch one by one. Please fix all of them or just skip, as it is
harmless.

Best regards,
Krzysztof

