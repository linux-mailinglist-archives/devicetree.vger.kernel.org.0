Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8216886E4
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 19:42:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232867AbjBBSmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 13:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232893AbjBBSmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 13:42:46 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006997CC80
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 10:42:22 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id z11so3002561ede.1
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 10:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xcrcjjpdxvOP+BtTWSce/AMhT/iVFENiab+a0FrVMNY=;
        b=Zq5rgzbS0KG7vA/hbRRwx8FMDWWoH+HMBofRc4RXhyH0JA+vo6cspQgeCOg073eYLg
         JVW4O5Bl/vJP3zPtG8mBj2EZtEYdo2G712RAmmWCMto+zmX548hNamQBkmvM8GIwR7HN
         Yf+2rVtyxzoy/6lYE8A/UbCTYq/HEG8ikcN1wUwtJ9AZNa1KpvppyWt654JYu1FMWP/C
         HFGHb4C/P7dKZea/6an8hJz5BD85sgieJvm2Wv+6jomVI2gDarS1uxf0S5Ep145pWYQR
         HomCcXEv8RjLDmdQbP3OrURKPLdOhIOaRxvZQG6iEqeG6Y/5p9h7hbqsSncnyUP+1qmw
         scww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xcrcjjpdxvOP+BtTWSce/AMhT/iVFENiab+a0FrVMNY=;
        b=C2IJ88faK7faS5E/jrH28motPfi0IwZDDYrbraiUU4yBynbJG2FkLL5nLripOnRKHI
         rm1NYMuxyR5s/bPgrDhqepBDlZESsyNfxA8vi0pyJzFfs4TGuZSVTTA81EBdIft2+OWL
         b9i/k7Xgk+Epi2cvyeNvMWtz71OSCadlBBojPo768j5U6Yh8efWVDmI3F9t0r0cS1+gB
         US/q2AJnHPGhpkBYLRcQy4/dW4HNcYUl7bVjsbfYkvjwabe+MdajyXiggEB7V0FFVvrL
         tSs8YfzyHyNGLhy3EY6LwLisaYuUSq4sF8urGHkyEmotbC6bPiu6a0w4DeJCervyCnl9
         5vIw==
X-Gm-Message-State: AO0yUKVMi2P9vXIEARj5/GH03U81AYPrwv2roErBPFxKyR2isbrjk0rS
        I9b0dMiLBhGTEbOnlXI00D5IAQ==
X-Google-Smtp-Source: AK7set9QtIgxHBGYAaFywJ96klO+lAs7/+Uzw91KAaSUtY2UwhASS1NxneJienf7Xi743nxWcj9h6g==
X-Received: by 2002:a50:ce47:0:b0:4a2:45e3:ede3 with SMTP id k7-20020a50ce47000000b004a245e3ede3mr7384955edj.14.1675363334632;
        Thu, 02 Feb 2023 10:42:14 -0800 (PST)
Received: from [192.168.1.101] (abyl20.neoplus.adsl.tpnet.pl. [83.9.31.20])
        by smtp.gmail.com with ESMTPSA id eq6-20020a056402298600b00497d8613532sm81243edb.5.2023.02.02.10.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 10:42:14 -0800 (PST)
Message-ID: <406e91ae-5477-4d8e-4e98-b30fc18e9e94@linaro.org>
Date:   Thu, 2 Feb 2023 19:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 5/6] mailbox: qcom-apcs-ipc: add IPQ5332 APSS clock
 support
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jassisinghbrar@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202145208.2328032-1-quic_kathirav@quicinc.com>
 <20230202145208.2328032-6-quic_kathirav@quicinc.com>
 <2433c2c7-664d-0d1f-12ae-374cbd093dc0@linaro.org>
 <1b75ab1a-44c9-c4a8-7fa4-d601fc710d2a@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1b75ab1a-44c9-c4a8-7fa4-d601fc710d2a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2.02.2023 16:30, Krzysztof Kozlowski wrote:
> On 02/02/2023 16:16, Konrad Dybcio wrote:
>>
>>
>> On 2.02.2023 15:52, Kathiravan T wrote:
>>> IPQ5332 has the APSS clock controller utilizing the same register space
>>> as the APCS, so provide access to the APSS utilizing a child device like
>>> other IPQ chipsets.
>>>
>>> Like IPQ6018, the same controller and driver is used, so utilize IPQ6018
>>> match data for IPQ5332.
>>>
>>> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
>>> ---
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> While this is not the fault of this patch, but we keep adding
> compatibles with same driver data. I think this should start using
> fallbacks at some point...
Fair.

Konrad
> 
> Best regards,
> Krzysztof
> 
