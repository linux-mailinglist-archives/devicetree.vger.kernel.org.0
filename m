Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7428F5E9D69
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 11:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234293AbiIZJXC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 05:23:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233791AbiIZJWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 05:22:35 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 881A617E1C
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:20:00 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id b24so6687939ljk.6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QReHhdQFaQamj6lG5Pjt5E+GFyFDnkhmM5PGLp31RaI=;
        b=KKEBQh/RHUB+Nxvl3bRpxoP5Wf6a5m+Pz+z4onhPe7o0VGq++2P8FYaiD7UMlL42dY
         qYomdwmgVvXsf6FaFVGGJlTLRtqasi3fcH54Oo/A/pYeNl6Zn4ezW+6yMDSB+i4NQT+q
         1RzLDK0JNXHv3O14IVZKgT9gXDnGu6kPJJconIj1cvGCc1FWOVVYuV9jK13nmP+JJ5xi
         j3vdkGR1nPJfGhzFrTrzoRSIpIf9sHaUWh+r+eVMXepm8KrdicDOzZ3oLfRIH1JLgf2g
         PyJs51yXSGCf3UVk95Y02UcePJydEvneQbRZz+6/iNnvwOxfous3AaSTXjy+/TeUWxHL
         tsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QReHhdQFaQamj6lG5Pjt5E+GFyFDnkhmM5PGLp31RaI=;
        b=spmfUFoc/QA7DVmc/fIeoBGxfnmqtsOSl/IICNb1VpXL7zTm1BXHQQshZl4QAMMwXf
         LCxDa9N1sHw5n5C+KJKZtdvD18rTHaRwhBT25a0ZV+zX1cVkRez8tiFqqt3aDQA2p7Fd
         JxP61h2SSqXS1amyGEotYMMPLfMa/bbazdrE5jN+pdVPYnjWopRkVmN0s2m+FbusxuQN
         xdn2Xunp7NlGlrs5sCxguFCNv+2ZRh+r8ZOU0akuGECJCw7qP/lHyQAMS1EP8mS1cHlh
         dDyEQDNVfZRzOljczQKwgclnUpAHw4SaZDtcEHP7Le6hStMWkyulZcxYjVZdcJ8IQIrN
         hnaA==
X-Gm-Message-State: ACrzQf2sQQfAFLioAB+D87S18rmQpcGCFBNqKzed/HiVbvOSB/iydWUq
        CqXlmVPPiLG7j3cbYBHAE2mBog==
X-Google-Smtp-Source: AMsMyM5kFGFFfcQhoonbdOmQrSNIepI2rLRr4GWkLtYd2+f0HjEPZSnJueRmLRrhnmv5XXezE8/F5Q==
X-Received: by 2002:a05:651c:104e:b0:26b:fceb:a526 with SMTP id x14-20020a05651c104e00b0026bfceba526mr6826687ljm.109.1664183998391;
        Mon, 26 Sep 2022 02:19:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b00492f1b2ac0bsm2482804lfo.101.2022.09.26.02.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 02:19:57 -0700 (PDT)
Message-ID: <4b01df5d-da0d-a95d-66f5-24c849881f38@linaro.org>
Date:   Mon, 26 Sep 2022 11:19:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] ARM: dts: qcom: pm8226: fix regulators node name
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925210229.128462-1-luca@z3ntu.xyz>
 <bc5983fd-7d5d-427e-e9d2-a800dee0dc3c@linaro.org>
 <7996c93c-b74b-2e28-7f64-10001ba17326@linaro.org>
In-Reply-To: <7996c93c-b74b-2e28-7f64-10001ba17326@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 11:12, Krzysztof Kozlowski wrote:
> On 26/09/2022 11:05, Krzysztof Kozlowski wrote:
>> On 25/09/2022 23:02, Luca Weiss wrote:
>>> Adjust the node name to match bindings and fix the validation warning.
>>>
>>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>>> ---
>>>  arch/arm/boot/dts/qcom-pm8226.dtsi | 2 +-
>>
>> Thanks, I missed it in my last cleanups.
> 
> No, this should be rather squashed with my cleanups:
> https://lore.kernel.org/all/20220901093401.134473-3-krzysztof.kozlowski@linaro.org/

No, to a no, my patch was changing RPM regulators... Argh, damn that
naming...

Best regards,
Krzysztof

