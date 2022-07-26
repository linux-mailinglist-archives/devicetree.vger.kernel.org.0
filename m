Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A51C581072
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:57:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232871AbiGZJ5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:57:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232883AbiGZJ5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:57:09 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01A232F03B
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:57:08 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id w15so13849265lft.11
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=I73BOjVPhMR1wc1m6D3pt9KtMoseeendX/4GKU5hxhU=;
        b=uEAVBlqVVpEO4CRjG+b8EQKwATuT7yiqOEkQv2ZTiLFyrJ2jiaeYPaMsuRlf6yjGgI
         ZJMG1YC33LrAUnOLH0nIZwePRnjLOcyXgb5hUEmvl/VN0qoOyXr476hzGEvNh9WAbOgg
         HOmiqK27ag6K9Va5mWQyMOG4FYVmDG9FefW5OasSubq2C8mu++pER4+2qanR+JG5faBM
         F6yTP57/+k08+9lUA2BdtAR4Baq509d11FRvQSade9qtzPtSEB/RRK9P8nD3D174hQAC
         od5Bui/cx6nCgtoU7ZnLVGaHE73DLFShMwVJLzuV1kxlf+ShM1s8kLlPRbt3OymhUCb3
         xB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I73BOjVPhMR1wc1m6D3pt9KtMoseeendX/4GKU5hxhU=;
        b=drtvSm97IZrP3z2ouNuXP8+gJj3j1u1v9/O6p52rHIIoX4hnU4hRnPKDejw/yO69nz
         r7Q0nZVl4xLvnp1pfiTGEKGDi7GpldNfM/8RvLc7cm/DDrCUOCtbFf8ZaM/qQU8AxYOj
         hPN8ca8mNEAxQ9ZlOwoZ8Pf2q3/0pvrK2Fp1Alo/hdOy0OAsSjxAQj/YKEJmXzEbCZnI
         R/HTVYTn1BORVJwlk7SemD4zVygXKQkw8TH4Z/knqnXafowSKUsXbFosLVwYOvX70kq2
         Eb/cxJUjCEBmvw8K9gjSxYin2ZUhYlkmmaL2iU007Npj56HiwG2gx+0kPyCtm3mJMgRL
         XV1g==
X-Gm-Message-State: AJIora+3dEm2Ksw5fcMYP+nD5HwFK+q3YfCrYXYA6FA3zTsxuvWGDvjx
        EoPbunTpSfjYiBpJ3TOhqpqBfI+B98uBzYcj
X-Google-Smtp-Source: AGRyM1sK7VXFeDB7oQjs/mToNuKVBnT8UhRL+0xdhS1pEpYSUMMEDkLwMhuiBIzgXwdUH2Gx8I5lRg==
X-Received: by 2002:a05:6512:1288:b0:48a:aa31:2838 with SMTP id u8-20020a056512128800b0048aaa312838mr424327lfs.683.1658829426372;
        Tue, 26 Jul 2022 02:57:06 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512325400b0048a98b7bad3sm605377lfr.197.2022.07.26.02.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 02:57:05 -0700 (PDT)
Message-ID: <d34ff61c-d9b9-9f34-a00f-34a0304e47ee@linaro.org>
Date:   Tue, 26 Jul 2022 11:57:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/2] dt-binding: spi: npcm-pspi: Add npcm845 compatible
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, Rob Herring <robh@kernel.org>
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        linux-spi@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
References: <20220722114136.251415-1-tmaimon77@gmail.com>
 <20220722114136.251415-2-tmaimon77@gmail.com>
 <20220725225650.GA2898332-robh@kernel.org>
 <CAP6Zq1j0pKHsX20t4ep9-6B_5pTe5MzkU__245F6tW7wFJESiw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1j0pKHsX20t4ep9-6B_5pTe5MzkU__245F6tW7wFJESiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 11:30, Tomer Maimon wrote:

>> To answer your question on fallback, just put:
>>
>>     "nuvoton,npcm845-pspi", "nuvoton,npcm750-pspi" for NPCM8XX BMC
> In the document?
> because I don't remember doing so in other documents that I use fallback.

If they also you fallbacks, then the other documents have now incorrect
text.

> I need to do it in ymal files as well?

Depends on what you want to add and what you actually added... Let's be
specific - point to specific commits or files in linux-next. If they
were not applied - give lore.kernel.org link.


Best regards,
Krzysztof
