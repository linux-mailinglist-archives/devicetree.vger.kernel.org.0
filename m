Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708126DF458
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 13:55:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231207AbjDLLzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 07:55:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231304AbjDLLzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 07:55:13 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D696A6B
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 04:55:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id jg21so27765807ejc.2
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 04:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681300504;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vaw7v7vO/oKVX4Uxi9UX9K87XLU6z7jRE7Ed3MeCDXg=;
        b=gJeYVcXnn1xD5Pxsg7p7L5fA5zrquYCjYT0TIGWdbX8uerPPcSzm+JeUX4aqb7K6Fx
         0RU3fYSiQt39SkP9xseCS/Vg+Jk15uYbdfPkJOSXwHiJe88V41snCUryv6BA6z6i5JbB
         8Wqms5M0QquP1Ay8d5rX/XfLEEVnpWz5VbHnmcAoiiZSsViDiNMiPLzs/7XP/9d414nl
         TnCTNJ92Y2ahXOs7W75/KrimWds+Gd/8O6H/UAXGbo99p6XlF/OhvVfN71piY/rD3u3h
         c3ogBCzOYbmlmbYTGRaOqSEBNF1HwylhP8guvf37Sl+/mQbL79tymOo97gIPSu5wL7wS
         VKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681300504;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vaw7v7vO/oKVX4Uxi9UX9K87XLU6z7jRE7Ed3MeCDXg=;
        b=XRDf1/QUiIqr6Pzuk0yIKWRShfBxYWtyFbx2quvyZR5LElW+CLIAHGUTirMd6NvFN5
         4pGHkAv3MoeQU6XaKfInyLO7zAW3t1EK5aGwRFirYnYNH58V1B4GmWk1+ewEbdyduP8D
         6RtlscoKZ5u7LVvBpFDm1jfG7X1YOBA2Y7/zkwoLqNtjvtQEjhPQbYkTFDYaluPLFYiP
         ZK4OP2e8ysrtjNkdTFsRHgzHqbFXs5vPL3ezOO6H5+e7FzlGEJNISWb4XrP01Lo/bdef
         1Zu+bRqgWE7oYFzhftHLmDerduZeLSLA6ogk35/4nnxiMssm539pSqnoTmtGUYpNlEJD
         1M1A==
X-Gm-Message-State: AAQBX9c/FWQD7/PsP1i2t+dsXn8QNEemI/yMMDp8rPwQ3KJTCmukBW24
        MeUoO3j6+N7RhJccUrCRukNipQbN2zpfEpBJ7Ck=
X-Google-Smtp-Source: AKy350Z/vdtfYpcDrw4Phu2XMyWh0qpi38QfAAclHhxzO229oyEcGbo0IN1jqg6ZLsY6wJ8XGleLkA==
X-Received: by 2002:a17:907:7f0e:b0:93f:f70:b2e6 with SMTP id qf14-20020a1709077f0e00b0093f0f70b2e6mr6908882ejc.0.1681300504182;
        Wed, 12 Apr 2023 04:55:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id s5-20020a170906454500b0094e4684e5c0sm1024293ejq.25.2023.04.12.04.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 04:55:03 -0700 (PDT)
Message-ID: <1f8fc036-380b-0a42-bb29-a3e275ed6a33@linaro.org>
Date:   Wed, 12 Apr 2023 13:55:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller: mpm: Pass MSG
 RAM slice through phandle
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marc Zyngier <maz@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230328-topic-msgram_mpm-v2-0-e24a48e57f0d@linaro.org>
 <20230328-topic-msgram_mpm-v2-1-e24a48e57f0d@linaro.org>
 <168069726278.2356075.14351594478003012447.robh@kernel.org>
 <20230405134727.GA2461305-robh@kernel.org>
 <1e6e2590-ac78-400b-35ce-321d5e52f385@linaro.org>
 <9df12111-ec84-c4f7-fbcb-bccaef91b048@linaro.org>
 <3ce9b5ec-8b02-537a-c663-c849e80cab66@linaro.org>
 <ZDAAToSzNLVo6le8@gerhold.net>
 <198523f5-d06f-15cd-af6c-f391c02bcaa9@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <198523f5-d06f-15cd-af6c-f391c02bcaa9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 13:47, Konrad Dybcio wrote:
>> For unrelated reasons I actually have some patches for this, that switch
>> the /smd top-level node to a "remoteproc-like" node dedicated to the
>> RPM, similar to how WCNSS/ADSP/Modem/etc are represented. I need this to
>> add additional (optional) properties like "resets" and "iommus" for the
>> RPM, but it would allow adding arbitrary subnodes as well:
>>
>> https://github.com/msm8916-mainline/linux/commit/35231ac28703805daa8220f1233847c7df34589e
>>
>> I could finish those up and post them if that would help...
> Krzysztof, what do you think?

I don't know what is there in MSM8916 and how it should be represented.

Best regards,
Krzysztof

