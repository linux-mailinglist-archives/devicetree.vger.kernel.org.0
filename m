Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23E5D76727E
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 18:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235507AbjG1Q4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 12:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230157AbjG1Q4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 12:56:13 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BECC049C4
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:55:38 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5227e5d9d96so2970660a12.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690563337; x=1691168137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=umW0zi0xTCCYFNfKA8J6n2cshIA1HbSafV4Wj4AZFfU=;
        b=B/Qxa2xbvNIex25D8wt2zWwLW5K02mCmCkkhglRSTYZwIVmg2r4UgPpaQKOoYy/81l
         VJatl97J6SkSB6V7hZheAJytVzRMjaw/a7Y81N4rBlcg954DKmMw6lygRAkQEPsYnXvp
         HAYSisjzmt+2mYka/YVp1NM5jUuWu+GMw+BRF/EPUkRajWQm6cDWykHDkMjfSou5ohGO
         cLFs8vjJtnrqhme4QmPDf1YGX1usI9DFrYoYBYaBix9TSJj3I0aWJRy29gPaLiU1lFf9
         HWVmyBrQVVDLim4mMhSyEuWM8+iH1ORxXZQLNn9qeSKcj18ap3Thc87WjdJppmcNXrj+
         /X9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690563337; x=1691168137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=umW0zi0xTCCYFNfKA8J6n2cshIA1HbSafV4Wj4AZFfU=;
        b=DPRdstBKsNo9MmbyNzrTv7ZC9Et6i2RGYT4Yi+k5F612KKi0A8pp8wD3GE/d4Zio8B
         7U4SEUYzol2/Pfn4UD1HBjBmb4+CvVCkFpgyseTJWvRFed4qGtm8PmxMbi86K2RmfIN/
         dDJCYGFsm2tldeMN/Ie+bmcGxNSTKd4CvKzn09dZr8tlmrUP/9xIUKPS+X8sXdyJENf0
         qiNHzk26WjYeCmtwXwsQ7SRonEXObpq4nTC1nzpDjc36C+N8nfmXd30zbmlNfStBTAK5
         rMDTnFWilpXOzyjLClpKqKiXTu6NqA50HhEfvPJbgV5QZjp9cnfWVrz6EiaP+LZNhcsi
         XblA==
X-Gm-Message-State: ABy/qLavr0VG4BiHfUY9d7eUry/9GK7EoM+Mq4Z2UBDFT6TTLjq3p6vV
        09aSYeQgbKsy0Ihz/z1AekdAGg==
X-Google-Smtp-Source: APBJJlFwH+JLckko6kwGLCQcURrUr/tKOIe0FIqruL+QIvcb9Dn/qUQh111m9dBbE7XnFaFOruumHA==
X-Received: by 2002:aa7:d844:0:b0:51e:34a1:8bf7 with SMTP id f4-20020aa7d844000000b0051e34a18bf7mr1885818eds.39.1690563337208;
        Fri, 28 Jul 2023 09:55:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id j9-20020aa7ca49000000b0051873c201a0sm1951622edt.26.2023.07.28.09.55.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 09:55:36 -0700 (PDT)
Message-ID: <cc329c5f-50eb-769d-534c-cb76c8565099@linaro.org>
Date:   Fri, 28 Jul 2023 18:55:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3] dt-bindings: clock: versal: Convert the
 xlnx,zynqmp-clk.txt to yaml
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>
Cc:     "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "git (AMD-Xilinx)" <git@amd.com>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        "Simek, Michal" <michal.simek@amd.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "mturquette@baylibre.com" <mturquette@baylibre.com>
References: <20230724111843.18706-1-shubhrajyoti.datta@amd.com>
 <20230724-direness-syrup-14c0b50c8018@spud>
 <BY5PR12MB4902A95CD14D934BCF3B7C658103A@BY5PR12MB4902.namprd12.prod.outlook.com>
 <20230725-untaxed-footman-0c764cc9792f@spud>
 <BY5PR12MB49023F377CB6A3A1D7C78B7D8106A@BY5PR12MB4902.namprd12.prod.outlook.com>
 <20230728-slit-constrain-641d33f9f99b@spud>
 <010713ed-1fe7-788c-868d-26149c21d7a7@linaro.org>
 <20230728-heave-ripening-2046c2d1a890@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728-heave-ripening-2046c2d1a890@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 18:47, Conor Dooley wrote:
> On Fri, Jul 28, 2023 at 06:39:23PM +0200, Krzysztof Kozlowski wrote:
>> On 28/07/2023 18:19, Conor Dooley wrote:
>>> On Fri, Jul 28, 2023 at 06:41:50AM +0000, Datta, Shubhrajyoti wrote:
>>>> [AMD Official Use Only - General]
>>>>
>>>>> -----Original Message-----
>>>>> From: Conor Dooley <conor@kernel.org>
>>>>> Sent: Wednesday, July 26, 2023 12:57 AM
>>>>> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>
>>>>> Cc: devicetree@vger.kernel.org; git (AMD-Xilinx) <git@amd.com>; linux-
>>>>> clk@vger.kernel.org; Simek, Michal <michal.simek@amd.com>;
>>>>> conor+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>>>>> robh+dt@kernel.org; sboyd@kernel.org; mturquette@baylibre.com
>>>>> Subject: Re: [PATCH v3] dt-bindings: clock: versal: Convert the xlnx,zynqmp-
>>>>> clk.txt to yaml
>>>>>
>>>>> On Tue, Jul 25, 2023 at 05:28:07AM +0000, Datta, Shubhrajyoti wrote:
>>>>>> [AMD Official Use Only - General]
>>>>>>
>>>>
>>>> <snip>
>>>>>>>>    clocks:
>>>>>>>>      description: List of clock specifiers which are external input
>>>>>>>>        clocks to the given clock controller.
>>>>>>>> -    items:
>>>>>>>> -      - description: reference clock
>>>>>>>> -      - description: alternate reference clock
>>>>>>>> -      - description: alternate reference clock for programmable logic
>>>>>>>> +    minItems: 3
>>>>>>>> +    maxItems: 7
>>>>>>>
>>>>>>> This doesn't seem right to me. The original binding requires 5 clock
>>>>>>> inputs, but this will relax it such that only three are needed, no?
>>>>>>> You'll need to set constraints on a per compatible basis.
>>>>>>>
>>>>>> Does below look good.
>>>>>
>>>>> I don't think that you tested it with < 5 clocks (hint, if you remove one of the
>>>>> clocks from your example below, dt_binding_check should fail).
>>>>> All the constraints need to move into the `if` bits AFAIU.
>>>>
>>>>
>>>> https://lore.kernel.org/all/20230720113110.25047-1-shubhrajyoti.datta@amd.com/
>>>> Here I had it in the if .
>>>> Then what I understood from below is that
>>>>
>>>> https://lore.kernel.org/all/745fccb0-e49d-7da7-9556-eb28aee4a32b@linaro.org/
>>>> it should be dropped from the if and added to the above.
>>>>
>>>> Maybe I am missing something.
>>>
>>> (Background I got this mail once off-list and tried to make the
>>> binding's validation work)
>>>
>>> With the current conditions, validation is completely broken. You can
>>> put in just 1 clock and 1 clock-name and dt-binding-check will pass. The
>>> only way I could satisfy it, 
>>
>> I don't understand why you think 1 clock would work. The binding has
>> clear min/max constraints in top level and strict constraints per each
>> variant (through listing items). In my opinion this is correct, except
>> what I wrote - mismatched number of clocks for zynqmp (8 against 7).
> 
> I didn't expect it would work - I tried 4 w/ the zynqmp compatible,
> which passed, although it should not have. And then I took it to the
> extreme (1) which also passed. There's something wrong with either the
> binding or the example that I can't spot.
> 

Yep, select: false.

This is some junk code :(

Best regards,
Krzysztof

