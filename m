Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBE2E4F1A9A
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379090AbiDDVSn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380677AbiDDU6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 16:58:53 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA20130F6D
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 13:56:56 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id z7so12899844iom.1
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 13:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/TjzTtoWiUEKM/0U+dl7E7XDCy4M9NHcDIrBVsIEEz4=;
        b=A0QW+6ey0QA4+SvWOuSnxmr9EczAz5/Z13Ki6Wxff0RHRr1Mk5QTlQQPDk5ynBAE+0
         L+GZeNiP4bo04s7secdIKMFRtozREJOiUZWeVE8J5PmRSgqskmpkfffhsa3Nx90XpYnX
         a01LM1MwErHVib++AtXM7RBHcdf+dw42XMcudrdpLzwC3ldplFGU4S3i7eU3vL2/HTYF
         +HBhhfUKwzNOPyHYbGa4070knhq6VyANCMXNz0n162EtGAMtnurCOFtVCdp9ECz5vDD5
         x8LyucANQsRkXFwhPqrei19bOWNfdrkETXabTETpfJS4UNj9235uxiWKSnP07n1pYP0U
         Trjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/TjzTtoWiUEKM/0U+dl7E7XDCy4M9NHcDIrBVsIEEz4=;
        b=PJ3plssh+TkQQl35wfgdijibfx6ZpAWHYB3vcHKbkIGXavaU0neo5cqcFhXMXICvlu
         r4c0VSXVOz5Y6mC5nNlujyPB+njbrsUH6WvRZF3zRg2gXMyUPOeUWn5FKz+OJ933wmKf
         1wSzcn99Vpst0Ra6URAhjRxrH4NxGKFQl4r+OhY0dgKAfwQreyxZPzFm2jchK4Tt8B5K
         hoy8KCCdCdFa/1Wzwz7nGavnLbLGtm0ZllXJ0s6ovR7UkYaN2y7pbd5s+aRMwciMcdPY
         fLamzKyYfqkzz9JjajWj8Ucw86g5oDzuZu88pXJ8o01jBwytp2UsHdjMGBJrT+VeEthE
         +QiA==
X-Gm-Message-State: AOAM532JCoIsRTHLE9sxk28WEmnUEx1B4N3BF/tFTnuazbHubKvmUFKU
        7P/Z0vprC/PHBfJLKy6lduTvT2Rg36Y=
X-Google-Smtp-Source: ABdhPJyVT9Y5eew1Xt15+plnA6RSzkcXqKNDGbiG4RDaA4DgN9UPHXIzX0P9jRjkCMDWCXw8GDL58A==
X-Received: by 2002:a05:6602:2a45:b0:648:b21c:6f49 with SMTP id k5-20020a0566022a4500b00648b21c6f49mr68306iov.206.1649105815993;
        Mon, 04 Apr 2022 13:56:55 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:d520:1e7b:35fa:114b? ([2600:1700:2442:6db0:d520:1e7b:35fa:114b])
        by smtp.gmail.com with ESMTPSA id b12-20020a6be70c000000b00648f61d9652sm6860923ioh.52.2022.04.04.13.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 13:56:55 -0700 (PDT)
Message-ID: <5ccfa749-3c1c-8d61-5923-6935dd48b0de@gmail.com>
Date:   Mon, 4 Apr 2022 15:56:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: of_property_read_string return -ENODATA when !length
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Stefano Stabellini <sstabellini@kernel.org>
Cc:     devicetree@vger.kernel.org, Julien Grall <julien@xen.org>,
        xen-devel <xen-devel@lists.xenproject.org>
References: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
 <CAL_Jsq+udUpUK3y7WOeLF2dtGs0=Jz59ed0mu_sgzstB-=TDzA@mail.gmail.com>
 <alpine.DEB.2.22.394.2204011338140.2910984@ubuntu-linux-20-04-desktop>
 <CAL_JsqJ6Yoc-gq=qUw+cS-34ZOsxtHAA01aa+FjaBySz1vwtuQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2204011517450.2910984@ubuntu-linux-20-04-desktop>
 <YksOipbvQh8N1C+V@robh.at.kernel.org>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <YksOipbvQh8N1C+V@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/4/22 10:28, Rob Herring wrote:
> On Fri, Apr 01, 2022 at 03:43:42PM -0700, Stefano Stabellini wrote:
>> On Fri, 1 Apr 2022, Rob Herring wrote:
>>> On Fri, Apr 1, 2022 at 3:49 PM Stefano Stabellini
>>> <sstabellini@kernel.org> wrote:
>>>>
>>>> On Fri, 1 Apr 2022, Rob Herring wrote:
>>>>> On Thu, Mar 31, 2022 at 7:46 PM Stefano Stabellini
>>>>> <sstabellini@kernel.org> wrote:
>>>>>>
>>>>>> From: Stefano Stabellini <stefano.stabellini@xilinx.com>
>>>>>>
>>>>>> When the length of the string is zero of_property_read_string should
>>>>>> return -ENODATA according to the description of the function.
>>>>>
>>>>> Perhaps it is a difference of:
>>>>>
>>>>> prop;
>>>>>
>>>>> vs.
>>>>>
>>>>> prop = "";
>>>>>
>>>>> Both are 0 length by some definition. The description, '-ENODATA if
>>>>> property does not have a value', matches the first case.
>>>>>
>>>>>>
>>>>>> However, of_property_read_string doesn't check pp->length. If pp->length
>>>>>> is zero, return -ENODATA.
>>>>>>
>>>>>> Without this patch the following command in u-boot:
>>>>>>
>>>>>> fdt set /chosen/node property-name
>>>>>>
>>>>>> results in of_property_read_string returning -EILSEQ when attempting to
>>>>>> read property-name. With this patch, it returns -ENODATA as expected.
>>>>>
>>>>> Why do you care? Do you have a user? There could be an in tree user
>>>>> that doesn't like this change.
>>>>
>>>> During review of a Xen patch series (we have libfdt is Xen too, synced
>>>> with the kernel) Julien noticed a check for -EILSEQ. I added the check
>>>> so that Xen would behave correctly in cases like the u-boot example in
>>>> the patch description.
>>>>
>>>> Looking more into it, it seemed to be a mismatch between the description
>>>> of of_property_read_string and the behavior (e.g. -ENODATA would seem to
>>>> be the right return value, not -EILSEQ.)
>>>>
>>>> I added a printk to confirm what was going on when -EILSEQ was returned:
>>>>
>>>> printk("DEBUG %s %d value=%s value[0]=%d length=%u len=%lu\n",__func__,__LINE__,(char*)pp->value, *((char*)pp->value),pp->length,
>>>> strlen(pp->value));
>>>>
>>>> This is the output:
>>>> DEBUG of_property_read_string 205 value= value[0]=0 length=0 len=0
>>>
>>> It turns out that we never set pp->value to NULL when unflattening
>>> (and libfdt always returns a value). This function is assuming we do.
>>>>
>>>> As the description says:
>>>>
>>>>  *
>>>>  * Return: 0 on success, -EINVAL if the property does not exist, -ENODATA if
>>>>  * property does not have a value, and -EILSEQ if the string is not
>>>>  * null-terminated within the length of the property data.
>>>>  *
>>>>
>>>> It seems that this case matches "property does not have a value" which
>>>> is expected to be -ENODATA instead of -EILSEQ. I guess one could also
>>>> say that length is zero, so the string cannot be null-terminated,
>>>> thus -EILSEQ?
>>>>
>>>> I am happy to go with your interpretation but -ENODATA seems to be the
>>>> best match in my opinion.
>>>
>>> I agree. I just think empty property should have a NULL value and 0
>>> length, but we should only have to check one. I don't want check
>>> length as that could be different for Sparc or non-FDT. So I think we
>>> need this instead:
>>>
>>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>>> index ec315b060cd5..d6b2b0d49d89 100644
>>> --- a/drivers/of/fdt.c
>>> +++ b/drivers/of/fdt.c
>>> @@ -165,7 +165,7 @@ static void populate_properties(const void *blob,
>>>
>>>                 pp->name   = (char *)pname;
>>>                 pp->length = sz;
>>> -               pp->value  = (__be32 *)val;
>>> +               pp->value  = sz ? (__be32 *)val : NULL;
>>>                 *pprev     = pp;
>>>                 pprev      = &pp->next;
>>>         }
>>>
>>>
>>> It looks like setting 'value' has been like this at least since 2010.
>>
>> Yep, fixing old bugs nobody cares about, that's me :-)
> 
> :)
> 
> 
>> I made the corresponding change to Xen to check that it fixes the
>> original issue (I am using Xen only for convenience because I already
>> have a reproducer setup for it.)
>>
>> Unfortunately it breaks the boot: the reason is that of_get_property is
>> implemented as:
>>
>>   return pp ? pp->value : NULL;
>>
>> and at least in Xen (maybe in Linux too) there are instances of callers
>> doing:
>>
>>         if (!of_get_property(node, "interrupt-controller", NULL))
>>             continue;
>>
>> This would now take the wrong code path because value is returned as
>> NULL.
>>
>> So, although your patch is technically correct, it comes with higher
>> risk of breaking existing code. How do you want to proceed?
> 
> We should just check 'length' is 0 and drop the !value part.

I agree with checking prop->length (not "pp->length" as in the original
patch because there is no "pp" in of_property_read_string()), and return
-ENODATA for that case.

I'm ok with dropping the prop->value check since we populate the field
with a non-zero value during unflattenning.

And update the function header documentation to mention that the empty
string "" has a length of 1.  Thus -ENODATA can not be interpreted as an
empty string.

-Frank

> 
> Rob

