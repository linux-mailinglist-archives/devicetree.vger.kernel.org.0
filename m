Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42FF46C4E9B
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 15:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbjCVOy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 10:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbjCVOyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 10:54:37 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB754C6C8
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 07:53:24 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id i5so27168425eda.0
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679496803;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qB6CqrQG0O85iIeK2/9UU3y3s70XZTORdp66X0QLG10=;
        b=t2QtOEPQITEAqrfcEMg5f8r2igPACmc/vitkqzn60BElrRIc3DLc7yCaj3Gm9ADi36
         v4iM6OEHFLCEH5d5QdZPXWkwsgD6A2A77sC4eLKs1VYbGJCS5Ia5rlUgFNGA6RE4SDlw
         SE3wsOICE+9kqcqVoMB6r3L/hFAFoOZzBpxOh8hqfq81dRDHUqfKeIxGAUo9zt4X+5gj
         GPJqZY+dwI6kkvrvV93H+2YdPANNt5T/XuwpcKUCVYfUWseX6faUpX/iNxwMki91bXiw
         fMBmREapmRuKV97mc7itsbJ6NCQoznnXNoH/iMi5MwBv0ivoquT6+A1xcQGKCzdMIcDD
         ZQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679496803;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qB6CqrQG0O85iIeK2/9UU3y3s70XZTORdp66X0QLG10=;
        b=zy5B7qKDg8CZA2Dr7Eu3tW/u0b4pI51xLT932ntaJOwSIFlkCtV13ru4GseHnIN6s7
         /bNTvA2gCACL7m2z/17XQZUp8CYLSxeLVFCXQn0qkimaMB45B5wQmhOMCgH2gQtZenbz
         Ng1aLd9Wubehv8UsAmt0hx2y2z4c+LFpKNUt6T1UTQxs3xFeEEADu1ZRX8Pt6VuJSvFk
         s2q2Xu3UTQeiMeif0qmOWr9eEIba4gYjX/jFVgulLD2MaWM4Jj2sN1kKobGA2Dhp6mta
         5L/7J0WqWccdOeTSov1+XQFbyB1nYjUVa1c+pAI6SkWiBwq9Z5AcPyUPoN8npVjIgEFW
         iJXQ==
X-Gm-Message-State: AO0yUKX5fgCbFwazCuJ5Q+yUL4nAJ8CP1rAfGDMxl27d1YGfWHQtlitm
        UXQrJ7ZZ7Uzr9hmRBmNFtEeu2g==
X-Google-Smtp-Source: AK7set/TvLlLhJWVyQQ7HaqKCpn6yL1O/38sfD9/Gd/9HSGELN0CjCbVEupJw+wrerGH1y0xouZvEw==
X-Received: by 2002:a17:906:f8db:b0:8b1:7ae8:ba6f with SMTP id lh27-20020a170906f8db00b008b17ae8ba6fmr7152751ejb.16.1679496803408;
        Wed, 22 Mar 2023 07:53:23 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5050:151b:e755:1c6? ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id s26-20020a170906169a00b009200601ea12sm7224670ejd.208.2023.03.22.07.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 07:53:23 -0700 (PDT)
Message-ID: <7b939818-993a-e849-e7e0-ae9ea74ea52b@linaro.org>
Date:   Wed, 22 Mar 2023 15:53:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V1 3/4] soc: qcom: boot_stat: Add Driver Support for Boot
 Stats
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1679403696.git.quic_schowdhu@quicinc.com>
 <3f385562845ae26d519940ca8098fde89282991b.1679403696.git.quic_schowdhu@quicinc.com>
 <611ea918-64a6-f306-b5ec-db55e41abda2@linaro.org>
 <321005fc-1bfd-c04d-b2b5-d85d213ac00a@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <321005fc-1bfd-c04d-b2b5-d85d213ac00a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 14:54, Souradeep Chowdhury wrote:
> 
> 
> On 3/21/2023 11:07 PM, Krzysztof Kozlowski wrote:
>> On 21/03/2023 14:51, Souradeep Chowdhury wrote:
>>> All of Qualcomm's proprietary Android boot-loaders capture boot time
>>> stats, like the time when the bootloader started execution and at what
>>> point the bootloader handed over control to the kernel etc. in the IMEM
>>> region. This information is captured in a specific format by this driver
>>> by mapping a structure to the IMEM memory region and then accessing the
>>> members of the structure to print the information. This information is
>>> useful in verifying if the existing boot KPIs have regre
>>
>>
>>> +/**
>>> + *  struct boot_stats - timestamp information related to boot stats
>>> + *  @bootloader_start:	Time for the starting point of the abl bootloader
>>> + *  @bootloader_end:	Time when the kernel starts loading from abl bootloader
>>> + */
>>> +struct boot_stats {
>>> +	u32 bootloader_start;
>>> +	u32 bootloader_end;
>>> +} __packed;
>>> +
>>> +static struct boot_stats __iomem *boot_stats;
>>> +static void __iomem *mpm_counter_base;
>>> +static u32 mpm_counter_freq;
>>
>> No file-scope variables. Does not scale, not easy for review and
>> maintenance. Avoid such code.
> 
> Ack
>>
>>> +
>>> +static int mpm_parse_dt(void)
>>> +{
>>> +	struct device_node *np_imem, *np_mpm2;
>>> +
>>> +	np_imem = of_find_compatible_node(NULL, NULL,
>>> +					  "qcom,imem-boot_stats");
>>> +	if (!np_imem) {
>>> +		pr_err("can't find qcom,imem node\n");
>>
>> So you are printing errors everywhere, on every soc and with compile
>> test on every platform there is in the world... sorry, it does not work
>> like that.
> 
> Ack
>>
>>> +		return -ENODEV;
>>> +	}
>>> +	boot_stats = of_iomap(np_imem, 0);
>>> +	if (!boot_stats) {
>>> +		pr_err("boot_stats: Can't map imem\n");
>>> +		goto err1;
>>> +	}
>>
>>
>>> +
>>> +static void __exit boot_stats_exit(void)
>>> +{
>>> +}
>>> +module_exit(boot_stats_exit)
>>
>>
>> I don't think this is some special code which deserves init calls. Make
>> it module_platform_driver().
> 
> Since this just reads some values from the Imem region and prints it to 
> the user and doesn't have a specific device associated with it, a 

Which is not really an argument for such antipattern, but okay...

> generic module code is written for it and not a module_platform_driver().

... so how do you handle deferred probe?

Best regards,
Krzysztof

