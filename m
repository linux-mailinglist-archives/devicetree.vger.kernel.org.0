Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 702425F6BDF
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 18:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231683AbiJFQgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 12:36:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231550AbiJFQgI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 12:36:08 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B625FC14B8
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 09:36:05 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id fw14so2192974pjb.3
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 09:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VwKeuABOD02TA6qUHl8hG9nLJiiPuDwE6pV+hsX3j8=;
        b=y/xPupEvCrH6eKYOJyAJIDJGi/zFBscnp/BgM9hjKZnnzdR3DReZbZeDU16EEmFdtU
         hzWm4sYvz2J1bPou6Awioz3FTBoc5S9836jeOFL3LXfUii+pUpfmT4uI0RsjJSuKc17U
         7HJT1azXBhfb3qFrA5M26zdhnZpq4VpFHVmDMmGGSGCM8TJ0c7oCY5AAn4xgFVfyKQQq
         9IA9ZEki1FNfBwpL9BdLkYlyqGxkT0sAkrcmZBBVaw+A7uIpu2hQNk4x+vmm4NSIve36
         frP5cMcRbMlpCxWU5FA5JsDKBEQnHVi+qMnfXyrkGAHf45Yis3FGxP5iwRNpjXLx6yxc
         y7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9VwKeuABOD02TA6qUHl8hG9nLJiiPuDwE6pV+hsX3j8=;
        b=i9dAprBgMkCDbhFwZJKW/zfYRs57zO235tJvfSheIi3wB7iS6GeCQBQ/AyrN9SDh0P
         s+SXMCFje/JPUGBnBgCyyph7RKIdIOY5xpkQ+M3IJ8QJSreAd1hKrue9whd1haYw/j2l
         tm3RaC1CIMoXB5vPn/PhhaIFYoBZ9mkXVcENZzuQrdd125GQF90yFt7leQlNRzQgNRQj
         7lpqxwRpysDKVZz+mv/sHP1JJ3LQNvMtsQxD8aAPAqnzaygcXV+k7aN+/I7vLF//hk63
         6r3cgEiT6ChuIB9JGAPYYnvkwd5GYC/F7VNdcI+3ygA5xtsa+4KFtFJ+5KM6grIuOM7g
         6yyQ==
X-Gm-Message-State: ACrzQf3ka6gjDzsu5tPZQrieextEGMXIiRM5Kqgc8LN1bSLBmdZxfAPF
        gBSiH+730LVmXeKkYjIw1NyO/w==
X-Google-Smtp-Source: AMsMyM4aelKydn7lzGzFKPUgiiKq9a7hMqBiQorfU8GI4PkTIVrKftkoHK6gYkPcaI1TA5dkHijjFw==
X-Received: by 2002:a17:902:e94f:b0:17f:6df3:1a99 with SMTP id b15-20020a170902e94f00b0017f6df31a99mr724734pll.20.1665074165094;
        Thu, 06 Oct 2022 09:36:05 -0700 (PDT)
Received: from ?IPV6:2601:1c0:4c81:c480:feaa:14ff:fe3a:b225? ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id k29-20020a63ba1d000000b00454f8a8cc24sm2031107pgf.12.2022.10.06.09.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 09:36:04 -0700 (PDT)
Message-ID: <fdcd9ab8-8207-97fe-03f6-ca9c582f83f2@linaro.org>
Date:   Thu, 6 Oct 2022 09:36:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-compiler@vger.kernel.org
References: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
 <20221005232931.3016047-2-tadeusz.struk@linaro.org> <Yz6MbgDg9gOmC6k9@yekko>
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: Re: [PATCH v3 2/2] libfdt: tests: add get_next_tag_invalid_prop_len
In-Reply-To: <Yz6MbgDg9gOmC6k9@yekko>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/6/22 01:06, David Gibson wrote:
> On Wed, Oct 05, 2022 at 04:29:31PM -0700, Tadeusz Struk wrote:
>> Add a new test get_next_tag_invalid_prop_len, which covers
>> fdt_next_tag(), when it is passed an corrupted blob, with
>> invalid property len values.
>>
>> Signed-off-by: Tadeusz Struk<tadeusz.struk@linaro.org>
> Looks good overall, but a bunch of minor things to polish.

Thanks for reviewing this. I will only follow with the new
version if 2/2. Please take the v3 1/2 as it is.

> 
>> +#define FDT_SIZE 65536
>> +#define CHECK_ERR(err) \
>> +({ if (err) { \
>> +	free(fdt); \
> You don't need the free() here, you're about to quit the test program
> anyway.

Right. I will take that out.

> 
>> +	FAIL("%s: %d: %s", __FILE__, __LINE__, fdt_strerror(err)); \
>> +	} \
>> +})
>> +
>> +int main(int argc, char *argv[])
>> +{
>> +	struct fdt_property *prp;
>> +	void *fdt;
>> +	int nextoff = 0, offset, err;
>> +	uint32_t tag, val;
>> +
>> +	test_init(argc, argv);
>> +	fdt = calloc(1, FDT_SIZE);
> No need to use cleared memory, the fdt_sw functions will work just
> fine with an uninitialized buffer.

Ok

> 
>> +	if (!fdt)
>> +		FAIL("Can't allocate memory");
>> +	err = fdt_create(fdt, FDT_SIZE);
>> +	CHECK_ERR(err);
>> +	err = fdt_add_reservemap_entry(fdt, 0xdeadbeefUL, 0x10000UL);> No need to insert a dummy reservemap entry here.

Ok, removed

> 
>> +	CHECK_ERR(err);
>> +	err = fdt_finish_reservemap(fdt);
>> +	CHECK_ERR(err);
>> +	err = fdt_begin_node(fdt, "");
>> +	CHECK_ERR(err);
>> +	err = fdt_begin_node(fdt, "subnode1");
>> +	CHECK_ERR(err);
> No particular need for this subnode either, you can test what you want
> with properties on the root node.

Removed the extra subnode.

> 
>> +	err = fdt_property_u32(fdt, "prop-int-32", 0x1234);
>> +	CHECK_ERR(err);
>> +	err = fdt_property_u32(fdt, "prop2-int-32", 0x4321);
>> +	CHECK_ERR(err);
>> +	err = fdt_end_node(fdt);
>> +	CHECK_ERR(err);
>> +	err = fdt_end_node(fdt);
>> +	CHECK_ERR(err);
>> +	offset = -1;
>> +	val = cpu_to_fdt32(0x1234);
>> +	offset = fdt_node_offset_by_prop_value(fdt, offset,  "prop-int-32",
>> +					       &val, sizeof(val));
> fdt_node_offset_by_prop_value() is a very roundabout way to find the
> node you need - you know the path (and if you get rid of the
> unnecessary subnode, it'll just be the root node at offset 0).

I removed that as well.

> 
>> +	do {
>> +		tag = fdt_next_tag(fdt, offset, &nextoff);
>> +		offset = nextoff;
>> +	} while (tag != FDT_PROP);
>> +
>> +	/* Calculate len to property */
>> +	prp = (struct fdt_property *)(((char*)fdt) + fdt_off_dt_struct(fdt) + offset);
> You could replace the loop as well as this nasty pointer arithmetic
> with an fdt_get_property_w() call.

The fdt_get_property_w() was what I was looking for, thanks, but even using it
I'm getting a different pointer within the fdt to what I'm getting when I
calculate the offset myself. I the tag value that it is pointing to is the
FDT_BEGIN_NODE. Do I need to do anything else after with the pointer returned
from fdt_get_property_w()?

> 
>> +	/* int overflow case */
> Probably worth testing the fdt_next_tag() behaviour on the unmangled
> tree before testing the corrupted cases.  If the test ever breaks,
> that sort of thing makes it easier to figure out if the breakage is in
> the library, or the testcase.
  
Will do.

-- 
Thanks,
Tadeusz

