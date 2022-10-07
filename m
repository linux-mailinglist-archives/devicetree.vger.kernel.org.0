Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C23755F7D9E
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 21:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbiJGTHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 15:07:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiJGTHt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 15:07:49 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9770DA4B92
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 12:07:46 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id o9-20020a17090a0a0900b0020ad4e758b3so5483972pjo.4
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 12:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YWnjKIGsrwm0RR3JbG+t276cYqqvh/NaCnOZ7FG2A1I=;
        b=G6CT+P//QCJgWPFQygtNauD412X99iyKzIiOPh4a4xMfSXPz4j/TH72YbKtLnuajnX
         qrc6oHHNgYnezgVpkfckyDZmfaP4BaNZLBhFL6w/WS/Yp9PmEiR6qc/b3T7LaavjVkYb
         iXAzl6IGg9oRhw5gO2Te6NBEYmHwNx9zfynauAmkWmvYze9o1ML7TpLOV9J9TpBGtTza
         DtQLeZOLDd2SZlGpjqsldp+p6ciG0MErsmkNniuBzadgLWAPwiGNXBgpbtkfFBcOm3Hv
         iIB0GcY3bi+PZLdX/51kY3djqj7cCgtMczlHurgmACqYvNlbcYxb6AoJ9XHx0JK6GLww
         7Q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YWnjKIGsrwm0RR3JbG+t276cYqqvh/NaCnOZ7FG2A1I=;
        b=liBPBtcKmmFs+SCjSDIhpijq3072tPuyLZbOs6ttkhyBEACoBG2UpjE3NXuPp9WGLA
         Q3N1O740lA2A3uTcKfeTA2klL4SJi7fSFQ9vDTLDj7lSuiF44QJFWpE7NtFqVjDfsCdf
         y7B3prMaebNifh2h4QIotSoEjs5Nrzihl75tGPmo++IvLdUqsKDLX5ZUD6gW4Np15aPX
         KDStRG0pAMFfiV9ogvw94NIwSbIcwBIAEo0t5n1Mc4AKoVlkThQ2nUUUHfXX1Hq4s6rp
         E8FMhobYRzYaI8D8P9wqeHwezBC9WFBxnneNnR3xL7EAfTcbK4Gs1m+JFLpAY+n/hhX4
         EGig==
X-Gm-Message-State: ACrzQf2jxn3CXmwDfc4Y2uffGxBCLhxi7TttGFg/+WnedEDaLtPBob8E
        jGrpbeZR8gK4+kET9SOqTvVndg==
X-Google-Smtp-Source: AMsMyM59jz9eb+SdIRW/RQyGOxWbS9y8PM7Js9nvN3zLH8KSnkVBJuY9s8HmjEqiuYx0TJq55xLcjw==
X-Received: by 2002:a17:902:cecf:b0:178:3b53:ebf5 with SMTP id d15-20020a170902cecf00b001783b53ebf5mr6683992plg.122.1665169665984;
        Fri, 07 Oct 2022 12:07:45 -0700 (PDT)
Received: from ?IPV6:2601:1c0:4c81:c480:feaa:14ff:fe3a:b225? ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902d88d00b00176be23bbb3sm1850229plz.172.2022.10.07.12.07.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 12:07:45 -0700 (PDT)
Message-ID: <15a9e0bd-bb20-c996-3773-b71bafc0d24b@linaro.org>
Date:   Fri, 7 Oct 2022 12:07:44 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v4] libfdt: tests: add get_next_tag_invalid_prop_len
Content-Language: en-US
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-compiler@vger.kernel.org
References: <20221006223155.3316133-1-tadeusz.struk@linaro.org>
 <Yz+nDsk1vmn8xzBY@yekko>
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
In-Reply-To: <Yz+nDsk1vmn8xzBY@yekko>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/6/22 21:11, David Gibson wrote:
> On Thu, Oct 06, 2022 at 03:31:55PM -0700, Tadeusz Struk wrote:
>> Add a new test get_next_tag_invalid_prop_len, which covers
>> fdt_next_tag(), when it is passed an corrupted blob, with
>> invalid property len values.
>>
>> Signed-off-by: Tadeusz Struk<tadeusz.struk@linaro.org>
> Sorry, I was hoping I'd be able to apply this variant, but
> unfortunately I realize I've given you some misleading advice in
> earlier reviews, so there are still a few nits to squash, details
> below.  Thanks for your patience.
> 
>> ---
>> v4:
>>   * I didn't keep track of the changes in the test code,
>>     but this version should have all the comments addressed.
>> ---
>>   tests/.gitignore                      |  1 +
>>   tests/Makefile.tests                  |  2 +-
>>   tests/get_next_tag_invalid_prop_len.c | 76 +++++++++++++++++++++++++++
>>   tests/meson.build                     |  1 +
>>   tests/run_tests.sh                    |  1 +
>>   5 files changed, 80 insertions(+), 1 deletion(-)
>>   create mode 100644 tests/get_next_tag_invalid_prop_len.c
>>
>> diff --git a/tests/.gitignore b/tests/.gitignore
>> index 03bdde2..3376ed9 100644
>> --- a/tests/.gitignore
>> +++ b/tests/.gitignore
>> @@ -74,3 +74,4 @@ tmp.*
>>   /truncated_memrsv
>>   /utilfdt_test
>>   /value-labels
>> +/get_next_tag_invalid_prop_len
>> diff --git a/tests/Makefile.tests b/tests/Makefile.tests
>> index 2d36c5d..2c5b4c9 100644
>> --- a/tests/Makefile.tests
>> +++ b/tests/Makefile.tests
>> @@ -4,7 +4,7 @@ LIB_TESTS_L = get_mem_rsv \
>>   	get_path supernode_atdepth_offset parent_offset \
>>   	node_offset_by_prop_value node_offset_by_phandle \
>>   	node_check_compatible node_offset_by_compatible \
>> -	get_alias \
>> +	get_alias get_next_tag_invalid_prop_len \
>>   	char_literal \
>>   	sized_cells \
>>   	notfound \
>> diff --git a/tests/get_next_tag_invalid_prop_len.c b/tests/get_next_tag_invalid_prop_len.c
>> new file mode 100644
>> index 0000000..20c51de
>> --- /dev/null
>> +++ b/tests/get_next_tag_invalid_prop_len.c
>> @@ -0,0 +1,76 @@
>> +// SPDX-License-Identifier: LGPL-2.1-or-later
>> +/*
>> + * libfdt - Flat Device Tree manipulation
>> + *	Testcase for fdt_next_tag()
>> + */
>> +#include <stdlib.h>
>> +#include <stdio.h>
>> +#include <string.h>
>> +#include <stdint.h>
>> +
>> +#include <libfdt.h>
>> +#include "tests.h"
>> +#include "testdata.h"
>> +
>> +#define FDT_SIZE 65536
>> +#define CHECK_ERR(err) \
>> +({ if (err) \
>> +	FAIL("%s: %d: %s", __FILE__, __LINE__, fdt_strerror(err)); \
>> +})
>> +
>> +int main(int argc, char *argv[])
>> +{
>> +	struct fdt_property *prp;
>> +	void *fdt;
>> +	int nextoff = 0, offset, err;
>> +	uint32_t tag;
>> +
>> +	test_init(argc, argv);
>> +	fdt = malloc(FDT_SIZE);
>> +	if (!fdt)
>> +		FAIL("Can't allocate memory");
>> +	err = fdt_create(fdt, FDT_SIZE);
>> +	CHECK_ERR(err);
>> +	fdt_set_off_dt_strings(fdt, FDT_SIZE);
> My comment about not needing to create the dummy reservemap entry was
> misleading, sorry.  I was just referring to the actual dummy entry you
> created with fdt_add_reservemap_entry.  You should still call
> fdt_finish_reservemap() so that the blob is in the right state to call
> fdt_begin_node().  Directly manipulating with fdt_set_off_dt_strings()
> is unnecesarily fragile since it requires internal knowledge of how
> the sw functions keep track of the state.
> 
>> +	err = fdt_begin_node(fdt, "");
>> +	CHECK_ERR(err);
>> +	err = fdt_property_u32(fdt, "prop-int-32", 0x1234);
>> +	CHECK_ERR(err);
>> +	err = fdt_property_u32(fdt, "prop2-int-32", 0x4321);
>> +	CHECK_ERR(err);
>> +	err = fdt_end_node(fdt);
>> +	CHECK_ERR(err);
> One more minor deficiency here I missed earlier.  You're not calling
> fdt_finish(), so the blob is in sw state.  The read-only libfdt
> functions are designed to work on sw state trees as well as finished
> trees, but there are some internal logic differences to handle this.
> 
> You're probably mostly concerned with the original fdt_next_tag() bug
> for finished trees, so it's probably better to call fdt_finish() so
> that's the case you're testing.  Alternatively, you could test both
> variants.  Since you're corrupting the tree, you'll need to
> reconstruct the test blob for each variant.  You could either make a
> helper function taking a parameter and call it twice, or make the
> whole test binary take a parameter and invoke it twice from
> run_tests.sh.
> 
>> +	offset = fdt_first_property_offset(fdt, 0);
>> +	if (offset <= 0)
>> +		FAIL("FAIL Invalid offset %x, expected value greater than 0\n",
>> +		     offset);
>> +
>> +	/* Normal case */
>> +	tag = fdt_next_tag(fdt, offset, &nextoff);
>> +	if (tag != FDT_PROP )
>> +		FAIL("FAIL Invalid tag %x, expected FDT_PROP\n", tag);
>> +
>> +	/* Get a writable ptr to the first property and corrupt the lenght */
>> +	prp = fdt_get_property_w(fdt, 0, "prop-int-32", NULL);
>> +	if (!prp)
>> +		FAIL("Bad property pointer");
> My comment about using fdt_get_property_w() was also a bit misleading,
> since I wasn't thinking about the fact that you need both the offset
> (for fdt_next_tag()) and the direct pointer to the property struct.
> 
> This code is relying on the offset from fdt_first_property_offset()
> and the pointer from fdt_get_property_w() referring to the same
> location in the blob.  They will be, but it would be better to have
> that be obvious by construction.
> 
> I'd suggest you first get the offset with fdt_first_property_offset(),
> then compute the prp pointer from that with
> fdt_get_property_by_offset().  You'll need a cast to remove the const
> from the latter in order to mangle the tree, of course.  If you wanted
> to add a new fdt_get_property_by_offset_w() wrapper to do that cast,
> that would also be fine (if you do, make it a separate patch please).
> There's no particular rationale to which functions have _w() variants
> and which don't (so far), I just made the _w() variants when I needed
> them for other functions internally.

I have added a new helper and used it to get the pointer at the same
offset. I also addressed your comments above. New version on its way.
There will be 2 new patches, first with the helper, and second with
the updated test (v5), and they supposed to be applied on the v3 1/1
I sent before. Thanks for your feedback.

-- 
Thanks,
Tadeusz

