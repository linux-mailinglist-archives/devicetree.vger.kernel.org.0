Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7CBE690840
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 13:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230330AbjBIMLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 07:11:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbjBIMLD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 07:11:03 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AD7022002
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 04:08:59 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id eq11so1924435edb.6
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 04:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=904SW+BexaY5gSGQMM2tL+PobzR+2se3XfXF3Xp0dkg=;
        b=VcHM6fnWS2rd8qeLJJX2qXGmJtzwpAgu5uwWMcU9xpf0+a6QxC8dvWUjE+7T1bHXn6
         Sj8iSpoyrN+wkDH3biEDx85/24sHlBbbwBZhCn4vSwbn6o6lH5KZzdtNe7Oow5orHUrk
         7xBdLcmivslkEnzPBTDTqrYDKLOoB8E2GF38k/1v6rv0uYlh6cTuo/KOZLIHFBsaRhD6
         p7BXRR7jG9USp9/TxhDj3ipHYBI277p6VXuNguWwLsSRqyHx6p6mglC3a1hLhj5RsCgA
         EjLS+7DAALhen6bqopjIX9DVeX0yhsxfkM/bu+7fGrJYe8tAFplZGPlQTgRFup3im2uK
         UStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=904SW+BexaY5gSGQMM2tL+PobzR+2se3XfXF3Xp0dkg=;
        b=MwJZOE9SdHrJT9mbJmXrsc2Uay43Cly7n44sNeS6BXZHYeDHDcpXLQrBDSrNVP/Zv+
         Fgxx3tDdzEDNesdM/l924iinRJFDP/NZZvr0gJFcjqqLRSXwhdpFUMcPPsPlBGuHe22g
         G839bpxkYl7FCH9PtNf7gltP61ySTEF6y4x3rcUC8qTPgJEGqxf6pnGftgTE94cc6Qr8
         52KCqT98LEyaLjGXyigPgFS+XPoJvkC3+RsQq7DGBZN/3FpRdpgZFE4v5KWu8WNax/0q
         Fbn5H3+RnXR0BNGJgrdUXcxgGoq5sbarR2FnZrAeKEqXQQItrb/HXjQidPQCPjjFQwJz
         XKwg==
X-Gm-Message-State: AO0yUKXtbnRgeViiY9NoGo9GhYuRsBBapJX9ZEAsglnL+Zik2FcDBKXl
        r8nfCCIcJzDGHZK1fAEOLVyldw==
X-Google-Smtp-Source: AK7set//29eAKo227abloPrVYabWD1sy23Qd5f2+m1UdGG0cIE3KNM+LjMZCuUQ96YW3mfWt/2PQ6A==
X-Received: by 2002:a50:cd02:0:b0:4ab:1747:78b5 with SMTP id z2-20020a50cd02000000b004ab174778b5mr3327497edi.13.1675944538139;
        Thu, 09 Feb 2023 04:08:58 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id t15-20020a50ab4f000000b004ab20338c5bsm357404edc.1.2023.02.09.04.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 04:08:57 -0800 (PST)
Message-ID: <ed737e67-eabc-6f29-b734-f4698767ca8e@linaro.org>
Date:   Thu, 9 Feb 2023 13:08:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Mark cont splash memory
 region as reserved
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
References: <20230124182857.1524912-1-amit.pundir@linaro.org>
 <39751511-3f06-7c39-9c21-208d4c272113@linaro.org>
 <CAA8EJppLBuA08hkqTrZx_wwbtCxK9sAjv48c9_DxgPENgo7a8Q@mail.gmail.com>
 <1a840d88-e5b1-711c-b980-f57620c54472@linaro.org>
 <8508e3d5-7468-0b2f-5a43-7c439ecf2d8b@linaro.org>
 <CAMi1Hd2UNxXHUVWO-=sWh=-bVnrqE3UdLguFOq+62SfvUiEs0A@mail.gmail.com>
 <b2307e91-3373-539a-ecfb-e2542b9f83db@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <b2307e91-3373-539a-ecfb-e2542b9f83db@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9.02.2023 12:03, Bryan O'Donoghue wrote:
> On 09/02/2023 09:05, Amit Pundir wrote:
>> Hi, So what is the verdict on this patch?
>>
>> I submitted this fix to make sure UFS don't map and crash on it, which
>> I have seen happening occassionaly on db845c and Caleb reported
>> similar issues on his sdm845 device iirc. I should have probably put
>> that in my commit message as well.
>>
>> Regards,
>> Amit Pundir
> 
> So the memory _is_ being used by ... continuous splash on an Android image, i.e. your Android ? limited to Android - image continues on with the splash but other blocks erroneously reuse the memory then, UFS as an example ?
If the bootloader splash is enabled then this memory is used until the
DPU driver instructs MDP5 pipes to suck data from a newly assigned address,
so there's a short window where it is.

Konrad
> 
> ---
> bod
