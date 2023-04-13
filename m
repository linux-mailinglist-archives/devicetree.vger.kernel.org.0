Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 591C76E0919
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 10:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbjDMIl3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 04:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbjDMIl1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 04:41:27 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5F8686BA
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:41:26 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id z9so8497490ejx.11
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681375285; x=1683967285;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YiS7Xw21QmvVwpdnupwEjvYWlLbUE4ktfUHhlm6JOgE=;
        b=F3mLl0gwsnOMzwO1LNzFYYunfYUPEBGQSqbjGMGBJ3easv+cvP3SQNETEyZCbkETDE
         baYq60zQPa6LCLZlXHb/5/Nja7YloC60Rl6J92K2iR9c5+0OKWeTvqmIzFDqt53MbRCz
         l6otRVMxZDQ6obrBIq8Nps4mWafK4gXBBYLGhBOYJrfwGLQH5Oo1JCVzAPl4LpgSsj/c
         p8bSwJLo5T4lw2Edqno2ArBV/XrOOtLgMgllzYTCiQBc1YMUcE847WpoeFXIUkyRVxNg
         Zi6xRqNQ9IElsOxjEzLBLhoN7yD8gdCB1HByvnULBHHyrx9Z2+rSTMfCupGQ24tXLyMq
         Z7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681375285; x=1683967285;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YiS7Xw21QmvVwpdnupwEjvYWlLbUE4ktfUHhlm6JOgE=;
        b=fsdMHq8GLTmqeL69iKbUTl7emlAGBNRx+T3apMhf26W5VWk5G6jXPkcSHJ+YfLcwab
         N7ryTZsPFE2yYi1NWDllX0f+vjsWJ4FjyNFAYyHTDwOlMzkfFqO06h+UMeodTrLhekY6
         31/INYqTB6GU/nDXggnG0jRIowV3GyA37w6YWfMFH/OXciyxQld+Tg1xhjVmsqMgod0J
         KK1Jlxjw5ccqhmSM2Z9dXBk73oak3hlZa3jgMPRfKSIaRNE4Rg3sSvM6fCOCau6hV5YG
         knxEpskiAzwXl+ttHws/233wtT/Ut/Vwxa0ak1i1Bu5vhVtQg2+cCYeezbELBL+5U45T
         hbfA==
X-Gm-Message-State: AAQBX9cZC/mdgkfnmmsFnOldd6usinvq6FVp4tF8GSy3HaSdGdyBiMup
        iEYNiGGMviqRXO3N7VSZov9XIQ==
X-Google-Smtp-Source: AKy350bmE9xQnGU95nbPNivIp2OLCSM++q4Lju3jiZDXhGN5bSr9CoB4c7u3UIn/8rWC80ung91WjA==
X-Received: by 2002:a17:906:4bca:b0:94a:3ff1:53ad with SMTP id x10-20020a1709064bca00b0094a3ff153admr1989086ejv.75.1681375285316;
        Thu, 13 Apr 2023 01:41:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ec6f:1b33:ab3f:bfd7? ([2a02:810d:15c0:828:ec6f:1b33:ab3f:bfd7])
        by smtp.gmail.com with ESMTPSA id k13-20020a17090632cd00b0094e96e46cc0sm636865ejk.69.2023.04.13.01.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 01:41:24 -0700 (PDT)
Message-ID: <f0d82428-aaa5-3dd4-bc29-f1057fe749bc@linaro.org>
Date:   Thu, 13 Apr 2023 10:41:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To:     Changhuang Liang <changhuang.liang@starfivetech.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jack Zhu <jack.zhu@starfivetech.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
 <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
 <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
 <f6a4fb28-d635-4d99-44bb-d929cb41eef2@linaro.org>
 <b34a8d59-34e4-8358-9d2b-367f4707ca7c@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b34a8d59-34e4-8358-9d2b-367f4707ca7c@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 04:34, Changhuang Liang wrote:
>>>>> +  lane_maps:
>>>>
>>>> Why did this appear? Underscores are not allowed. It looks like you
>>>> re-implement some standard property.
>>>>
>>>
>>> Will change to lane-maps.
>>> Yes, according to Vinod advice, lane mapping table use device tree
>>> to parse makes sense.
>>
>> Hm, I have a feeling that I saw such property, so you should dig into
>> existing and in-flight bindings.
>>
>> Best regards,
>> Krzysztof
>>
> 
> A standard property? Like "clocks" or "resets"?

Like lane-polarities now submitted to one MIPI.

Anyway it does not look like a property of a board. You said it is fixed
per SoC, so it should be implied from the compatible. Otherwise please
explain in description and provide some rationale.

Best regards,
Krzysztof

