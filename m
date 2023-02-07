Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B57968D191
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 09:40:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231211AbjBGIka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 03:40:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbjBGIk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 03:40:29 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED49301BF
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 00:40:19 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso12599300wms.0
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 00:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wi801jAD1aAF7DkgN/MHC5BDNiQ1q8cPSNLJa/Z/tSY=;
        b=CgNC5k5do6Psn4orEw4wwYVvZNvH00H0WQN9ifyps+I+gSxy7w9kaSSBbkC5PF2MLP
         6aDPoXyScZF0oeHHijgN0ztP/c6uyKyP+HtFPRZKK1mgZrn+hWlpZOnBRedr5HYeutF6
         nvDYMEfFykXA7wS3vPtH39896kEH2aGeumteWr57NTa06zRPqzgICNwW8M9JRJ57FwYi
         5p9PmTrHgZ0dwAaGozGAwJsp6rDZfySdNG9Kthc/dLJGhuN8ijrcdPAD7WylrF0dl9SO
         0EETlqHVxlkJL9dg8/kjKJ7mOKxCqpIXZKuEEPjvJG4fSeOn17l15LuwRVCcdlFAeqKx
         tF4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wi801jAD1aAF7DkgN/MHC5BDNiQ1q8cPSNLJa/Z/tSY=;
        b=z+tpAr9ENjxNTaFKfNNabic8SWnuSKKuy8xX69+ZeASw5B/RhojfD0f+t0CAo4ln67
         UQCRtJC/nn1NRT7N+f1oN/yps4KDDbVm1S3SWM3tZiLG0LxhbZM0qp+wI/3dDbuggxjS
         zwklcqSZTvj3sbGXuP372IFWBxKDIBMkabgfuQF4B0NAVo7ZS0XYhkYbNvsb11x9nky2
         nidzLesSUkZ0um6bx/nTaD8x4qu1baZbrY3CPi/K3t1AYWANXBlAc6M1yd8A4IYmEFys
         yCeBOoe1RsndMTucUSqcHxHj9lrTsRIgw+ZMIGeBKzgf+lquMtnxGrEr3AnCttwJxI2Z
         UK1A==
X-Gm-Message-State: AO0yUKWeE3llQoXo3TY7kTT6walGrWefd8SX96bzA0RQU2z191c8Fxs2
        1jTx4qGhcZH37wCEaM3QMp5c4g==
X-Google-Smtp-Source: AK7set8tAEoMTFdEWmnCrOkIUFIbGFuR+bCI/4iF/rVhHr2TBLydT62g0GRpYRxvyP35J/O0TV2inw==
X-Received: by 2002:a1c:7417:0:b0:3dd:62fe:9914 with SMTP id p23-20020a1c7417000000b003dd62fe9914mr2393129wmc.18.1675759218083;
        Tue, 07 Feb 2023 00:40:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i14-20020a1c540e000000b003db03725e86sm13636762wmb.8.2023.02.07.00.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 00:40:17 -0800 (PST)
Message-ID: <20133e17-78da-d5f6-39bb-0031745fa294@linaro.org>
Date:   Tue, 7 Feb 2023 09:40:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm64: dts: Add support for Unisoc's UMS512
Content-Language: en-US
To:     Chunyan Zhang <zhang.lyra@gmail.com>
Cc:     Chunyan Zhang <chunyan.zhang@unisoc.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, soc@kernel.org,
        devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
References: <20230118084025.2898404-1-chunyan.zhang@unisoc.com>
 <41fd5c2a-9fc5-8af8-b66e-45bb83b24179@linaro.org>
 <CAAfSe-v3VW_sE4FwjURoOapMXrGavOK0hzeU-84-U_6xfhYbQQ@mail.gmail.com>
 <b3b9d515-20b1-62a1-3243-b1bc36c306df@linaro.org>
 <CAAfSe-tiF4--dYuKWgHUm52bMX3uSwxvWKKNRd=DFJTZZ=1x8A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAfSe-tiF4--dYuKWgHUm52bMX3uSwxvWKKNRd=DFJTZZ=1x8A@mail.gmail.com>
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

On 07/02/2023 09:21, Chunyan Zhang wrote:
>>>> Non-unit-address nodes cannot be mixed with unit address ones. Something
>>>> is wrong here.
>>>
>>> To make sure I understand correctly, did you mean non-unit-address
>>> nodes shouldn't be the parent of unit-address nodes?
>>>
>>> Does that mean the bus node should have a unique base address like:
>>>         ap-apb@70000000 {
>>
>> No. I mean, run dtbs W=1 or dtbs_check DT_SCHEMA_FILES=simple-bus
> 
> Ok, I will fix that according to the report.
> 
> BTW, where can I see what W=1 means?

In standard kernel documentation or make help.

Best regards,
Krzysztof

