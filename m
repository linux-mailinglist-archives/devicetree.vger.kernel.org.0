Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAB7A652909
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 23:29:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbiLTW1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 17:27:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiLTW1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 17:27:23 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81C6DD4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:27:21 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id i9so19613119edj.4
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vDN/5v5x3AD8aunYp6Yw+XZt6VK6NcKKWKn7atc35rQ=;
        b=hU83RSV9Vh0OlsC1VfiC3slmpdenrSL3zgNGmjJMSnkdfHdlGR1siYMFX3L1d7HkeJ
         cDbQ3svzofPMbLnjrRJFTstudiEuav80Yn5/3Hp6wCn45r37QvTMqZiJBJ6r8Du7IsvM
         76iVjt5ib665gPgLruBPzByzfHhwyM0ADXMWY5NrK7O2FfkfvMLT/6wcaSRRHoG1cv71
         eryFUR/OLlY/C4n7wZ9OtSb1er9TCGeo3LXQWjMhQRAd+Uwuz2rDwa+Va3m3Q9fF6n08
         1PprID5zblHKtoMdHb8bl8SMe8UxP62i3vKtH9K4ncQ983lh91FwEsFMtnnOOsG5uvi6
         S8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDN/5v5x3AD8aunYp6Yw+XZt6VK6NcKKWKn7atc35rQ=;
        b=JDJnML2Fby+nmRj44HAPjeCC5vAIeFqvLCdyUUhEFf7/lvMhO4Ry30540pijfu7rqG
         fVTUgAzbOtigMkfSDNFBqb/8Y6749yRyez9qUXcvq3ShUMPwaok/i7eMyUu9KQkam1AF
         Eb328KjzC37WPgoSCmX5ndtlTUwlYYF8QMbYhAGcaxPRTHVFM2f+ffrm6A0QSEWsvljr
         0lJ4I3zEHbCgUNdwUzTbqa9MKe/CXrVZisgLocA9zh+p1R+hRqjLsJ/e3cIea5+Rje4p
         30vRKC4Pwl1OGC9lJZ8U+eJa0nld79SNMlxvdlRC30DCWhOfy5D3WhMWMWcPOhl3dez3
         k+Cg==
X-Gm-Message-State: ANoB5pkqK6XAreE+/I0Pvbll2pFcB6RqeAZChtDL7XsF7saNb5MJ9RA0
        bjN/2Xuba5soATKoYNdMbAwTKA==
X-Google-Smtp-Source: AA0mqf7SLZvw2edI/x/p/oBKjSA6C0c+O6TQ6txc3QQJmXfuXeQ6PyPEU3ctG4om5l/tkc4VbK0qag==
X-Received: by 2002:aa7:d403:0:b0:470:31fb:cdcc with SMTP id z3-20020aa7d403000000b0047031fbcdccmr28813524edq.6.1671575240162;
        Tue, 20 Dec 2022 14:27:20 -0800 (PST)
Received: from [192.168.1.115] ([185.126.107.38])
        by smtp.gmail.com with ESMTPSA id t21-20020a056402021500b00463bc1ddc76sm6206860edv.28.2022.12.20.14.27.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 14:27:19 -0800 (PST)
Message-ID: <7549c8a8-bad0-7f7b-b07a-4a80d44d1ec3@linaro.org>
Date:   Tue, 20 Dec 2022 23:27:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.0
Subject: Re: [PATCH v3 1/2] remoteproc: elf_loader: Update resource table name
 check
Content-Language: en-US
To:     Mukesh Ojha <quic_mojha@quicinc.com>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        linux-remoteproc@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@linaro.org, mathieu.poirier@linaro.org,
        corbet@lwn.net
References: <1671523269-21154-1-git-send-email-quic_srivasam@quicinc.com>
 <1671523269-21154-2-git-send-email-quic_srivasam@quicinc.com>
 <0d683526-5707-d5b4-e96d-b2d982d4b5da@quicinc.com>
From:   =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <philmd@linaro.org>
In-Reply-To: <0d683526-5707-d5b4-e96d-b2d982d4b5da@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/22 13:50, Mukesh Ojha wrote:
> Hi,
> 
> On 12/20/2022 1:31 PM, Srinivasa Rao Mandadapu wrote:
>> Update the way of checking resource table name with prefix
>> substring search instead of complete string search.
>> In general Qualcomm DSP binary is prepared by combining different ELFs',
>> hence section header name (e.g. .resource_table), appended with ELF name
>> to differentiate with same section(e.g. resource_table.ac_bin_process) of
>> different ELFs'.
>> Example readelf output of DSP binary:
>>      [60] .start.ac_bin_process PROGBITS
>>      [61] .resource_table.ac_bin_process PROGBITS
>>      [62] .comment.ac_bin_process PROGBITS
>>
> 
> Could we rephrase above like below ?

FWIW I agree :) I assumed Srinivasa was using a broken email client
that strips newlines and packs everything.

> It could be also taken why applying 
> the patch.
> 
> Update the way of checking resource table name with prefix substring 
> search instead of complete string search.
> 
> In general, Qualcomm DSP binary is prepared by combining different 
> ELF's. Hence, section header name (e.g. .resource_table), appended
> with ELF name to differentiate with same section(e.g. 
> resource_table.ac_bin_process) of different ELFs'.
> 
> Example readelf output of DSP binary:
>        [60] .start.ac_bin_process PROGBITS
>        [61] .resource_table.ac_bin_process PROGBITS
>        [62] .comment.ac_bin_process PROGBITS
> 
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> 
> Otherwise, LGTM.
> Reviewed-by: Mukesh Ojha <quic_mojha@quicinc.com>
> 
> -Mukesh
>> ---
>>   drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c 
>> b/drivers/remoteproc/remoteproc_elf_loader.c
>> index 5a412d7..77330d6 100644
>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>> @@ -272,7 +272,7 @@ find_table(struct device *dev, const struct 
>> firmware *fw)
>>           u64 offset = elf_shdr_get_sh_offset(class, shdr);
>>           u32 name = elf_shdr_get_sh_name(class, shdr);
>> -        if (strcmp(name_table + name, ".resource_table"))
>> +        if (!strstarts(name_table + name, ".resource_table"))
>>               continue;
>>           table = (struct resource_table *)(elf_data + offset);

