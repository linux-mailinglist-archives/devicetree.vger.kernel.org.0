Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5034B4F9874
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 16:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232016AbiDHOqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 10:46:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233966AbiDHOqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 10:46:32 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1974F3A7C
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 07:44:27 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id i20so80079wrb.13
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 07:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4x/upSoWHiog4isXgyEOmPfG0ImFBqCVE6uW1bG0IPk=;
        b=EQ935yiFvjCehYb9frNX6P21JAaTBgnRMF4VC64YzYGDjyJmMoF7rk0IL/tLlp+vcZ
         galZCnkCYTKrz4vqZBOTVxxBa4Om1jSOiCo2jnDkD0nokKAMFaL0SXAIHijkkzVnGR2H
         Af5XQ8aJJ9+Yyj8q6kO8awGTXKZ2iI4VYvCO9U+u7YKzTIs8GSm44TjLXnr7CVIfl2RL
         BtMEGj/UNdeVhp6B8NSFaoQa4SUmguLqphfT2dHdDICAXbBHtvwkQWWHvksqbSfgl9xz
         UMY3A/67I9ZNPaKLbs7mSu4uS9xh51EFpNXCv2kx+mSN5c+OUHN4s4HKW6S6g79eKAeL
         Iwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4x/upSoWHiog4isXgyEOmPfG0ImFBqCVE6uW1bG0IPk=;
        b=KH0c5+k0wlQTDm4iiw0umkNgJkl0+lc0jBjwOy6CuH88/5EvrcBvANUYGmCy3WoiMe
         +fWpbgJvC+g7gJGDA0G59OqWlsgdVEY0wiY2OJ5ZlNL+n++5q/T0lsD1a75UuJph7Bz2
         bQg5+t6ItxuQKz6a+40RNGt+gnnBV3lAcHDhpz8b+lWf6YQbElQK5owE9wPJLsX4dLzX
         nPJCHI2NqQnfOmgpU2e5j89pln+A7kSbij2/HBzdPaCR/LgQ9SsnyW1PILDFN/cNDM+g
         BK4iU2TsgSLdyZ5dMKR/HaLFG1Z0bD/cQOQVG17T93wJ1g/n1NgRf6mI6ME1DI3ReSOm
         C+Ww==
X-Gm-Message-State: AOAM532dhnqoG7AzPLV6tWDFMm6oUtnQv7WhYNxCKy1OurdJC5Xgv1JX
        p2+YS9jWTieZEURmfp9b4JX++w==
X-Google-Smtp-Source: ABdhPJwAlPDRFgSScU2FS28hlbqjFhs06rEn6gMszy6CYMDp7CRzwGmxAoN5ZCZHh7cqWO0JQSLtTQ==
X-Received: by 2002:a05:6000:2cd:b0:204:1bf4:e4f8 with SMTP id o13-20020a05600002cd00b002041bf4e4f8mr15235444wry.682.1649429066390;
        Fri, 08 Apr 2022 07:44:26 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:3c94:dc25:f0c5:7ff7? ([2a01:e34:ed2f:f020:3c94:dc25:f0c5:7ff7])
        by smtp.googlemail.com with ESMTPSA id o19-20020a05600c511300b0038d0d8f67e5sm10533343wms.16.2022.04.08.07.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 07:44:23 -0700 (PDT)
Message-ID: <4035e567-7096-eda5-5a22-4c6e7a0f7514@linaro.org>
Date:   Fri, 8 Apr 2022 16:44:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 05/10] dt-bindings: thermal: tsens: Add SM6350 compatible
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>, linux-kernel@vger.kernel.org,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, devicetree@vger.kernel.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        linux-pm@vger.kernel.org, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
 <20211213082614.22651-6-luca.weiss@fairphone.com>
 <YbpLqwFJI/nfvxd9@robh.at.kernel.org> <CJ4TKNHK955X.2YYNAV248UMK8@otso>
 <YlBGfqNex49CgXze@robh.at.kernel.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <YlBGfqNex49CgXze@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 16:28, Rob Herring wrote:
> On Fri, Apr 08, 2022 at 01:25:26PM +0200, Luca Weiss wrote:
>> Hi all,
>>
>> On Wed Dec 15, 2021 at 9:10 PM CET, Rob Herring wrote:
>>> On Mon, 13 Dec 2021 09:26:06 +0100, Luca Weiss wrote:
>>>> Add devicetree compatible for tsens on SM6350 SoC.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>>>> ---
>>>>   Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
>>>>   1 file changed, 1 insertion(+)
>>>>
>>>
>>> Acked-by: Rob Herring <robh@kernel.org>
>>
>> It looks like this patch hasn't been applied yet. Could the responsible
>> maintainer please pick it up?
> 
> Normally that should be the thermal maintainers, but I've applied this.

Right, I missed it, thanks for taking care of the patch.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
