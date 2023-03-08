Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B2A66B0D43
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 16:46:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232215AbjCHPqE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 10:46:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbjCHPpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 10:45:46 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E118CA1FC
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 07:44:37 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id k14so21895341lfj.7
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 07:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678290276;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+sHa0ynl+/MvZYCzLTdvR272aMTGiQ/CuCrcneTS2vg=;
        b=wpHZ9Sg2UxLqyLfdW0cPzczzTANQFHOWQ3eNovcKucdxK4yfjlZSzOxeDANPma39kG
         WHQsfz4VFj+VmYm/ztMzatN2Uu8LCuj9u4aP3+JLzsOpprmYatQ22Xjb0y4ocIHdXBZd
         hPQKFL5tHhyR2+hRASVE9NJB61EUN3Cuqn01rEZfCA66VN5W86YsnD/Mw9dP7mUie2WY
         Y0CxOTLAT2CUXIwcX0BHwvC/WkCw3U79VOBxoaDETNINnuMRi3bpqzPJ33jfom716HXL
         rfPLV9d64z+ZbUsyUzpNBwOSV2MRpGtCcTK45VfGINe3vWWhwBTGDyJuXKwjKHlXcTYt
         65sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290276;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+sHa0ynl+/MvZYCzLTdvR272aMTGiQ/CuCrcneTS2vg=;
        b=Rxi3WrAmaY/tpgRduGLEp8w/VQPUkLq2K2urEW0DoAh3BeRkSqxSFCZmOPYk3lm/3c
         xyOyl9AsrX+rEvad9RSh4aLy+KdWvhj9jv+KQ+lgToKYgQluJjFQT1ksfe82euDlQJ2A
         YKXWl/IrmewTlxiSot76QFEv66crUMsA9FQIb8qnCzbBSeLPhLlOguelaz2fCvbPzdgt
         qYCVVHP7MjT19Gg7chd5Qvr+GjsR09WmQSdLAzVyTfXjhg//8hNv8DNl+8G3Mmgg+ePV
         LzouhSlUPn6CLM5FPww8D8ptJuEtR7OklCUc0FNRM+0Cx5+3x8dIKB0V5TTvk6WodLTn
         D/og==
X-Gm-Message-State: AO0yUKXa492r2FbEJOvuaZFtgUym+0Q8QqlcVEgYnykjuR8hI52NBB8h
        OAYQNjakX5NdPhZU0rg0Cv17RA==
X-Google-Smtp-Source: AK7set97hJxmBBCQx/SjdIQvs90ErVjhDQ41dncyLnZREk1fb5W+VAu2rtaXfzz/1glKcmJfAWRqFQ==
X-Received: by 2002:ac2:4a8b:0:b0:4e0:c0d0:e209 with SMTP id l11-20020ac24a8b000000b004e0c0d0e209mr5182126lfp.29.1678290275720;
        Wed, 08 Mar 2023 07:44:35 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id q8-20020ac24a68000000b004db4936c866sm2352538lfp.38.2023.03.08.07.44.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 07:44:35 -0800 (PST)
Message-ID: <2d1661fe-92bd-a117-27a5-cf1803ce363f@linaro.org>
Date:   Wed, 8 Mar 2023 16:44:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V6 7/9] dt-bindings: firmware: qcom,scm: document IPQ5332
 SCM
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        arnd@arndb.de, dmitry.baryshkov@linaro.org,
        geert+renesas@glider.be, nfraprado@collabora.com,
        broonie@kernel.org, rafal@milecki.pl, robimarko@gmail.com,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230307062232.4889-1-quic_kathirav@quicinc.com>
 <20230307062232.4889-8-quic_kathirav@quicinc.com>
 <754a2d38-dd7b-48b6-80e5-683ca193e0b1@linaro.org>
 <ab803e21-76bf-308c-9df0-8b7b45b472b2@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ab803e21-76bf-308c-9df0-8b7b45b472b2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.03.2023 16:39, Kathiravan T wrote:
> 
> On 3/8/2023 4:31 PM, Konrad Dybcio wrote:
>>
>> On 7.03.2023 07:22, Kathiravan T wrote:
>>> Document the compatible for IPQ5332 SCM.
>>>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
>>> ---
>> Does this board not have a crypto engine / CE1 clock exposed via
>> RPMCC? It will be enabled by default, but Linux should be aware
>> of it, so that we don't gate it by accident.
> 
> 
> IPQ5332 doesn't have the crypto engine and also it doesn't have RPMCC. Sorry, could you please help to explain how it is related to SCM?
SCM usually requires certain clocks to be up and that often includes
the CE1 clock on fairly recent designs.

Konrad
> 
> Thanks, Kathiravan T.
