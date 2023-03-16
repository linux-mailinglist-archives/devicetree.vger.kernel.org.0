Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 993086BD8B2
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 20:16:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbjCPTQf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 15:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjCPTQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 15:16:33 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7626EB96
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:16:32 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id y4so11812732edo.2
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678994191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p4dswHx01qFyh/CKCq0Z4NfZll3Xh2LeviJSxwsyG5w=;
        b=Gg8uFCNztqtT+wsx6xfWshpbc7uY5YbBmQpPWxiTPhbH/vb/RnRJpPq1QHfjjEqXum
         c5YGUzOEXLuppCYlyR2TflIgEWSBklB545MHNItGSMNe7vilB/lhQWlCMscI66FpohrE
         l+8MpyDM18ayd5wzIpDouqQlOliR7bbBGLT3U5nqkRfCXlf1qaYTNPjTo/NhP+jfqLfs
         3PyjkLbl3ha2wEpXY1b3+18L0Glh3IF7SmqYoRPqu6Yl70dyB1YnoWeZ3Ar1oWOMW99g
         K4gl2h+urC73/gWy4DsrMr8j2FJ0vqhAl3oyCropv7qsYaTuyWJni0RzzP9CsHY8UOzb
         WtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678994191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p4dswHx01qFyh/CKCq0Z4NfZll3Xh2LeviJSxwsyG5w=;
        b=jXAXEoIt1ryyni2sfua1w+SNevQ1EQteoWnN3jZtxxyxerWC2R33c5dKBcVadp4QFT
         XAqLhTWYOI4hY8BwehV2ndlZ2wqz94JSPWdaiVutOdXVPU1WY0kykjA2yi9YLPSHehzG
         6zT7h0eUU9B6u8YVqQD/tkOpEZ9pIqLH8KSK22tYTIsifqkghnHs6GrAeH6qqCMOgEKj
         9kN3fFDOu+eCibnR2erZMZQQ2FC0N6n+2COzHXKbFZ8pvp1czVfg/qaY8bWo8+zZD+qT
         Voi5BN69piJUjMfk+u7hU7JOMiVX+xGrK1FVWIVlESVqp+AcTR06YqjHmTKNYUlCE5OL
         YuKQ==
X-Gm-Message-State: AO0yUKVADPExNDYm7w4BsSVVAmll5n+UM+qWtwxaBp96kljrMwLU0FGN
        GGCeenSFslPXuSNHbiNE6p9rFw==
X-Google-Smtp-Source: AK7set9jYWsIjNheBCK32m5C4J/UE6srSN1wMLPMWS2c5BWJd9JjV2zVQLvhuTL0ER5eoAGFzo+/8Q==
X-Received: by 2002:aa7:d6d0:0:b0:4fb:fd22:29c0 with SMTP id x16-20020aa7d6d0000000b004fbfd2229c0mr636983edr.26.1678994191211;
        Thu, 16 Mar 2023 12:16:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id o2-20020a509b02000000b004faa1636758sm144187edi.68.2023.03.16.12.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 12:16:30 -0700 (PDT)
Message-ID: <a3f7b1bf-b37a-1e42-1e43-02b82fbd895b@linaro.org>
Date:   Thu, 16 Mar 2023 20:16:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: adi,adau17x1: Convert to DT schema
To:     Mark Brown <broonie@kernel.org>, lgirdwood@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vijaya Anand <sunrockers8@gmail.com>
Cc:     Daniel Baluta <daniel.baluta@nxp.com>
References: <20230315231055.3067-1-sunrockers8@gmail.com>
 <167897628543.92626.6326219364017588458.b4-ty@kernel.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <167897628543.92626.6326219364017588458.b4-ty@kernel.org>
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

On 16/03/2023 15:18, Mark Brown wrote:
> On Thu, 16 Mar 2023 04:40:55 +0530, Vijaya Anand wrote:
>> Convert the binding document for adi,adau17x1 from txt to yaml
>> so one could validate dt-entries correctly and any future additions
>> can go into yaml format. Add address and size cells to example to
>> prevent errors regarding reg format.
>>
>>
> 
> Applied to
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> 
> Thanks!
> 
> [1/1] ASoC: dt-bindings: adi,adau17x1: Convert to DT schema
>       commit: 87771c94025890246a6dfec9773eb62bd41c4c5a

Hi Mark,

There was a warning from Rob's bot. Can you drop the patch or you expect
follow-up?

Best regards,
Krzysztof

