Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 006945F4C6A
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 01:06:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230082AbiJDXGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 19:06:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbiJDXGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 19:06:21 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCBB36FA07
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 16:06:13 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d10so14378651pfh.6
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 16:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zd/2zlgqmkkHTAh5+W5c38uKpcxjnG0HgLdEEHK6qcw=;
        b=V4nzzgDu6qjQMDqXY7ZX1cBIHdKSIYfdMBa9e5U/EioiuGOI07mAJBDfN5jyCLp80R
         DfeANpfFRJ4Rb4W2Qh9+g/d/p8Y2U9bKzQ/KbfcEWHVsAA/VeQtPlpCar9TmBQTvR4ci
         XpG9d7qmrYvx0ADD7Un0rvRIMyfIui+RNZ8su8dWgy4Ekfv6kCBfNr0cATnDd23h+rNE
         t2dPU92PS2k3fxSiJCKTHneLEw/x5286luJvcJKxHyPxd4hWDwwP7oL4hmvfTEMs/IrK
         szH+c+WSIFlB7YF3ZSAP2QnFXjNmUQZV/LZ+08HfgWz9AM82T5ti33bCzdhZrpNG0r8v
         yHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zd/2zlgqmkkHTAh5+W5c38uKpcxjnG0HgLdEEHK6qcw=;
        b=1GcBArUrTLAH1mvb9DO01sK1O9S5FHq/VV0HV07aCiCIyGor2y3F85ElDLwzzQ5Qq6
         9IQ+JjHaPA7ScpWlywFYiJiCuq49HqfOGFS1tGHkLdZdkk/NWTKp4EMJjlV5QzmhPEZX
         AWMfG9YoPl/q2XhNlRY36qm6udP0ozUhNhnHHr2By38OWpfLB1WJtW5b/riyjWWDjwfo
         lqsae4+HnTrsg4drFXT16ZrLgSxyg1wO1KUHPeejjXrfMutSsYVohaDkEoLqjULkBqLO
         PHb/rcD/jls/RTgezs4aP/SmfA3t7HSQ4waba4h3x/3EZcuFD2TK0GgOs+rq/AzE6aNp
         FX+w==
X-Gm-Message-State: ACrzQf2PdPGOWYU5nGrtA8Nk2elhb8qAAF6p//CNXs+ig+rFRcZcW+I0
        okR1R/nCICjoGDOAzNkA8CZO4Q==
X-Google-Smtp-Source: AMsMyM5SIibEMjvR12RrD2te/XhG0knfpczP2XVa+Vrm8h1WOQCuWGv0kVRITh8ICYcL4wJNzr0AEA==
X-Received: by 2002:a63:e113:0:b0:439:e032:c879 with SMTP id z19-20020a63e113000000b00439e032c879mr25228599pgh.287.1664924772583;
        Tue, 04 Oct 2022 16:06:12 -0700 (PDT)
Received: from ?IPV6:2601:1c0:4c81:c480:feaa:14ff:fe3a:b225? ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id i7-20020a63b307000000b0042aca53b4cesm9090234pgf.70.2022.10.04.16.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 16:06:11 -0700 (PDT)
Message-ID: <53f2985d-15a8-d266-2fbe-ed557036ad6b@linaro.org>
Date:   Tue, 4 Oct 2022 16:06:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 1/2] libfdt: prevent integer overflow in fdt_next_tag
Content-Language: en-US
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-compiler@vger.kernel.org
References: <20220930152004.674591-1-tadeusz.struk@linaro.org>
 <YzvbXZG5lSfDL/6v@yekko>
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
In-Reply-To: <YzvbXZG5lSfDL/6v@yekko>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi David,
On 10/4/22 00:06, David Gibson wrote:
> On Fri, Sep 30, 2022 at 08:20:03AM -0700, Tadeusz Struk wrote:
>> Since fdt_next_tag() in a public API function all input parameters,
>> including the fdt blob should not be trusted. It is possible to forge
>> a blob with invalid property length that will cause integer overflow
>> during offset calculation. To prevent that, validate the property length
>> read from the blob before doing calculations.
> So.. yes, there can be an integer overflow here.  I think the actual
> damage it can cause is strongly mitigated by the fact that we should
> only ever use the result of that overflow via fdt_offset_ptr(), which
> will safely reject a bad offset.
> 
>> Signed-off-by: Tadeusz Struk<tadeusz.struk@linaro.org>
>> v2:
>> * Use len local variable to avoid multiple calls to fdt32_to_cpu(*lenp)
>> * Add can_assume(VALID_DTB) to the new checks
>>   libfdt/fdt.c | 18 +++++++++++++-----
>>   1 file changed, 13 insertions(+), 5 deletions(-)
>>
>> diff --git a/libfdt/fdt.c b/libfdt/fdt.c
>> index 90a39e8..b7c202a 100644
>> --- a/libfdt/fdt.c
>> +++ b/libfdt/fdt.c
>> @@ -162,7 +162,7 @@ const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
>>   uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
>>   {
>>   	const fdt32_t *tagp, *lenp;
>> -	uint32_t tag;
>> +	uint32_t tag, len;
>>   	int offset = startoffset;
>>   	const char *p;
>>   
>> @@ -188,12 +188,20 @@ uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
>>   		lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
>>   		if (!can_assume(VALID_DTB) && !lenp)
>>   			return FDT_END; /* premature end */
>> +
>> +		len = fdt32_to_cpu(*lenp);
>> +		if (!can_assume(VALID_DTB) && INT_MAX <= len)
> This check is redundant with the one below, isn't it?
> 
>> +			return FDT_END; /* premature end */
>> +
>>   		/* skip-name offset, length and value */
>> -		offset += sizeof(struct fdt_property) - FDT_TAGSIZE
>> -			+ fdt32_to_cpu(*lenp);
>> +		offset += sizeof(struct fdt_property) - FDT_TAGSIZE + len;
>> +
>> +		if (!can_assume(VALID_DTB) && offset < 0)
>> +			return FDT_END; /* premature end */
> Hmmm.. so, signed integer overflow is actually undefined behaviour in
> C, so checking for offset < 0 after the addition isn't actually a safe
> way to check for overflow.  To safely check for overflow, I believe
> you need to check that the*unsigned*  sum of offset and len is greater
> than or equal to offset (*unsigned*  integer overflow is defined to
> wrap as you'd expect for 2s complement arithmetic).  Actually given
> the constraints we've put on offsets in general, we need to check that
> that unsigned sum is both greater than offset and less than INT_MAX.
  
Thanks for feedback. I will change the logic to only work on unsigned
integers. I will also update the unit tests according to your suggestions.

-- 
Thanks,
Tadeusz

