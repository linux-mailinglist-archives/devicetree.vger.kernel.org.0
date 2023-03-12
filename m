Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D7B26B651D
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 11:53:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbjCLKxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 06:53:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjCLKxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 06:53:31 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBDC41ACD5
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 03:53:29 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id x3so37728475edb.10
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 03:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678618408;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KDgh3TknbmiCf9s5DB9Gz3iSw4R2xeve7Km/8RLVnf4=;
        b=HkZpWGwJREJqDZQikjfKjHaIJngkUxd4ELvmStTTwt/H/j1Rz2ggHSPXlTn2UmdaeB
         fK20JJX3qFJO9x1t08yWKJDUEi98z3aByu3GGoHXm6IXLrR67VpA1nY6CXX71Y2mtMHp
         TnmC8TAu9m9RnBk6ocmTDKh3YGpWEmEzjdWEihg3/ib9joNpBXSoKWyXSwJYI5YeqjYA
         WxkEKDaEw9fofMvYKVmELeAe+2/+eFJRRdWpAkJJcPGG2aM85/6Z8IR+ZfDCQJIO0Kwg
         FaO7CrYSEKBjuUzirOUqob6VtlVo1h6tOCF9DNGc6UdI5LJDO9/nCX6f2VFsMOtlHDlR
         Hb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678618408;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KDgh3TknbmiCf9s5DB9Gz3iSw4R2xeve7Km/8RLVnf4=;
        b=5T4dsGdkbx9a0Shqv3s1XzFx8NDi4NhQnFOATpOD1qgyQUBmAgU+pdX2k5MZMJyBw2
         dDCXUFPaIeipCpvpQMjRlT+f4t2WeBK42tA/o3KEMogSj6Q6DnZfdDtBd7J/gGFPQFnW
         eNnMQneUJDdV3gK23PKKCL73aH4XFT2jj2RbRlhOEYLZSEMxgbAfogkWeKCO4f+bgsdq
         XZCatZ0s0gmejdTl3axezOe4bpzzPePveVGdwcGD11Um0EEWBb1k1H/7lXLc0x1F1FHD
         boISp3uTFjC1vDWHpndgNFWq91StlU5rs+3bux1OaXc3YN8C9sFDakueXtwC+hfvprEU
         2tHQ==
X-Gm-Message-State: AO0yUKV8JmfNWD3m891kPL1k+CbVx96ok6cm2a8aCzXYSTNie/tNLG3s
        KMS+kgScYC4lbQcBzBB4B24OvlmIbfc2Hy0lFKc=
X-Google-Smtp-Source: AK7set+XxjaL3DjEjXJy9nMY+u0ze34tQDgIslNmdhYHn3RhxWs81Lxo/05eqsrtNMO4dMzhbmPcjQ==
X-Received: by 2002:a50:ed8c:0:b0:4c3:b607:f5a2 with SMTP id h12-20020a50ed8c000000b004c3b607f5a2mr27404830edr.11.1678618408337;
        Sun, 12 Mar 2023 03:53:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id s18-20020a056402037200b004fc1bb4285fsm222049edw.93.2023.03.12.03.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 03:53:28 -0700 (PDT)
Message-ID: <b65d54e3-b78b-654b-4932-03afefa2e950@linaro.org>
Date:   Sun, 12 Mar 2023 11:53:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
Content-Language: en-US
To:     Sergey Lisov <sleirsgoevy@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <640dae27.2e0a0220.d5632.151c@mx.google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <640dae27.2e0a0220.d5632.151c@mx.google.com>
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

On 12/03/2023 11:49, Sergey Lisov wrote:
>>
>> Anyway, I said last time this looks compatible-specific, so I don't
>> think we need another property.
>>
>> Best regards,
>> Krzysztof
> 
> I agree, but I'm afraid of introducing regressions by enabling this
> workaround on systems that don't actually need it.

I don't understand why would you enable it for systems which do not need it?

Best regards,
Krzysztof

