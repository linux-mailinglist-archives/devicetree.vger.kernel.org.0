Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F83F3CF07A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 02:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240102AbhGSXX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 19:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441832AbhGSWN7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 18:13:59 -0400
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A35A4C0613EF
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:44:00 -0700 (PDT)
Received: by mail-qv1-xf2b.google.com with SMTP id h9so9244244qvs.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 15:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BexLyXxqNgeH8/vtZRd1j76orcTrxVviC3YXV+o0bIU=;
        b=rUKY6dgXGsT9UEM8m0qXqyXgqg3Jvssnctaum8JQUHTTxXI8ZFNftfT3Ac5KN/GUYR
         CLIgTPXqEXTzC7W2v3r4/X/plmYq/pp0UlUqfQPBrUBIDyId9ahQZUXUdLoAuUb2Hgdz
         Jkrqra6S/86H+6zdTn9JfnCpFmvBRoeJbcnAbCRzGOh5nUzdJsadBNOJjT/C9GX+Rr3e
         Vlw4LKevADefwIj/pGEzSJqQoE9FhfNqMdWWV8qJBUMali+mS4eZl1ApAUM0aDYxY/32
         n4JGVQ5nMtmxNnbmPvOOST0d5J49owen5t47D3Ed60PR4JkC9E+bxwRHUMxGgUZAVI2U
         jkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BexLyXxqNgeH8/vtZRd1j76orcTrxVviC3YXV+o0bIU=;
        b=V7UzlflAAUCR9ab+bgKKRTHgqeN4R6zJwWuhRQWYVmPc6Q7De3XeWOmbuEK9B6P2AQ
         By7vHtWvzVQBq7ujkAic+LibXB2ENoakrdcGSR1wMG9bgd0P8tIpdIo/NAQXZpnRMYCd
         VURQ7uNEEC0rRHEWrzPekQlPGSQJyDRlaEFUvcqb02ljagzIwamZQwqDuiGq/Jifnu/r
         BYmn2aHk06JEk8nm4Q/Kn4Trn0ibgPazmQP9HmWWoNbE/o0+MBzVUQNl6FIRqnE/um12
         rPM/a4HyIyek/zZDcV/BHdxD5y8w22NzH2ClcWiSNlvaq1935cp8ITpoG0C0uo9+LP2d
         XRvA==
X-Gm-Message-State: AOAM533nG37rlFtl5Zl6JmfOyTLJE5BvwiRtXqkdvemgSHRSKH7+GFfk
        M2m+J8QWd640dZo0z3+deAY++A==
X-Google-Smtp-Source: ABdhPJysNyiNCLBggwYBSqT5tdYTt6rxSTZj+yTVDevRWw2of9y2Rhyra1Xn/hSZQ8F3riYqEyeR1g==
X-Received: by 2002:a0c:f48d:: with SMTP id i13mr26725618qvm.24.1626734639691;
        Mon, 19 Jul 2021 15:43:59 -0700 (PDT)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id r16sm8710241qke.73.2021.07.19.15.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 15:43:59 -0700 (PDT)
Subject: Re: [PATCH] arm64: boot: dts: qcom: sm8150: Add CPU opp tables
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210714182610.92972-1-thara.gopinath@linaro.org>
 <YPWlXRDsU59LZsVb@yoga>
From:   Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <3803b17f-47b3-ed99-eb90-d7998ea5c996@linaro.org>
Date:   Mon, 19 Jul 2021 18:43:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YPWlXRDsU59LZsVb@yoga>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/19/21 12:16 PM, Bjorn Andersson wrote:
> On Wed 14 Jul 13:26 CDT 2021, Thara Gopinath wrote:
> 
>> Add OPP tables to scale DDR and L3 with CPUs for SM8150 SoCs.
>> This gives a significant performance boost for cpu-ddr loads.
>> Below is the results for mbw benchmark with and without the opp tables.
>>
>> /mbw 1500
>> 		Without l3/ddr scaling		With l3 ddr/scaling
>> MEMCPY(MiB/s)		3574				10448
>> DUMB(MiB/s)		3500				11721
>> MCBLOCK(MiB/s)		8976				23595
>>
> 
> Nice!
> 
> 
> Took the liberty of dropping "boot: " from $subject before applying the
> patch.

Thanks!



-- 
Warm Regards
Thara (She/Her/Hers)
