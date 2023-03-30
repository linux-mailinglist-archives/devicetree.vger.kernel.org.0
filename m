Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83E746D06C9
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 15:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231702AbjC3NdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 09:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231373AbjC3NdB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 09:33:01 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9271A7DB2
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:33:00 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id y15so24525754lfa.7
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680183179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TF6LpIdZcSp+GyK43kmDk9u2Dq5LaTtnFKVbrFb2Dzo=;
        b=YMoLetF1bylybDI8LEr/rVokYkxIWwcYuzv3hM2exEGshcO87vFvSKV9KOBSEmKm7H
         C4V9D3ltZXAP9RpJTg0I1CVz5pw09k3XBEtw0rVOg6AApsVpdFg0lX7ipqTn4gyfDp5x
         UkCaYMc6I0auLMJZgKUzaavkv0wmlPE2vX/pyyw++Tomfp8u7OgwyRxzVyax5iMMwlCB
         k15NQqjbx/mgiCNyW5LS3GEGKLWscjCovx1MK7kn4R90fbhqlz2gbha8II/781KWvyXV
         wXGbWZ5MtzD8+HYilWvyxW8nhf92FlEMZIjUYvVO16xnV8kPzGOI92f5nSjX0AU12CiA
         X6NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680183179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TF6LpIdZcSp+GyK43kmDk9u2Dq5LaTtnFKVbrFb2Dzo=;
        b=DpQQxmHSjf5S3rPXrR5aOqz/B9duyyg3yELB9mJnpE53i4PFJ28zvnoIm4e0p11idw
         oxuScxWkmT1Wbp8+kuharCZYg2yfm9EWVE0U4isCARUGBn5C4GzQG39fSdZ+zK6vgsHx
         /Xis3njYbOazF1RW+In7cPc9fue227WsBXpnxSdvZ3HuXmiaMYyrTkgL0xNgev/N8vLC
         6+5GYn+pTkCiqgbkYkODatw9vIpq4jRZGWHnEq2UZF4gYhYdLiUA1CIJQ5hiHhzGEQBF
         s8Pi/JtnAuPXqbscOSJmzA9TKndAx6rmQRcNudu0VlvL681nZNYwJFMmopuKr3MkrBkf
         +LyA==
X-Gm-Message-State: AAQBX9e4ODccY3zNdPKwXjsAUu258C0rru6Nf+Yp/1ivkzXsochmRF0T
        V3ZD0AWBO8cqCMrbdd6zUVP0HPEtxw1lvs3n1+o=
X-Google-Smtp-Source: AKy350YU3Xq3wbwKsOVlRAsKgE2hO46SnZVkgv9ZqzN2/fZ0bh+os22x2WokRw9f+O3hUN/g9MEjXw==
X-Received: by 2002:a19:e01c:0:b0:4d8:86c1:478c with SMTP id x28-20020a19e01c000000b004d886c1478cmr1776754lfg.33.1680183178810;
        Thu, 30 Mar 2023 06:32:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c14-20020ac2530e000000b004eb12329053sm1438328lfh.256.2023.03.30.06.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 06:32:58 -0700 (PDT)
Message-ID: <87820723-0ab5-0c11-148a-b9db3b05bebf@linaro.org>
Date:   Thu, 30 Mar 2023 15:32:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 2/2] drivers: clk: zynqmp: Add versal-net compatible
 string
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>,
        Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        michal.simek@xilinx.com
References: <20230330091309.16215-1-shubhrajyoti.datta@amd.com>
 <20230330091309.16215-3-shubhrajyoti.datta@amd.com>
 <910df994-637e-07df-c53c-06a1c0d8d83e@linaro.org>
 <fc324a64-111d-c7e4-6af4-74e025c4fe10@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fc324a64-111d-c7e4-6af4-74e025c4fe10@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 14:00, Michal Simek wrote:
> 
> 
> On 3/30/23 13:08, Krzysztof Kozlowski wrote:
>> On 30/03/2023 11:13, Shubhrajyoti Datta wrote:
>>> From: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
>>>
>>> Add compatible string for versal-net.
>>>
>>> Signed-off-by: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
>>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
>>> ---
>>>
>>>   drivers/clk/zynqmp/clkc.c | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
>>> index 5636ff1ce552..1ea5fba20d91 100644
>>> --- a/drivers/clk/zynqmp/clkc.c
>>> +++ b/drivers/clk/zynqmp/clkc.c
>>> @@ -789,6 +789,7 @@ static int zynqmp_clock_probe(struct platform_device *pdev)
>>>   static const struct of_device_id zynqmp_clock_of_match[] = {
>>>   	{.compatible = "xlnx,zynqmp-clk"},
>>>   	{.compatible = "xlnx,versal-clk"},
>>> +	{.compatible = "xlnx,versal-net-clk"},
>>
>> Why no driver data? Why do you create new driver matchings if devices
>> are compatible?
> 
> It is the same discussion as we had recently in connection to emmc.
> versal-net is new SOC and if any issue happens we would apply workaround based 
> on DT compatible string. And by using special compatible string directly from 
> beginning will allow us to do changes without change DT.

None of these arguments require growing match data. My comment was not
about bindings. My comment was why do you need to grow of_device_id
needlessly?

> 
> We actually don't need to update the driver for this. We can just simply list 
> new dt binding and use both compatible string in DT like this.
> "xlnx,versal-net-clk", "xlnx,versal-clk"


Best regards,
Krzysztof

