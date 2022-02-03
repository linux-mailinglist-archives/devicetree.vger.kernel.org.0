Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9460A4A7EBD
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 05:52:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbiBCEw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 23:52:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbiBCEw0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 23:52:26 -0500
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E23E3C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 20:52:25 -0800 (PST)
Received: by mail-qt1-x833.google.com with SMTP id t17so1103801qto.1
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 20:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pF/lzLE4U1YqgDrA2oqCAR8ryLMidlHr4qfrb/Rx3t8=;
        b=gkzRwjF8vpE3SWSRG5W0mQ3dCXXc6Gcke0UjT7jTu6hzxCyQLd2pZW3xrpCHGiVqLO
         Lh+v03XibZOkMDJNumWQuv9a9/VMJcrGYx7LwrVAxkRck3kqHH4Y8Kk9jnF3sSydVzXn
         kqQf6v+7nK8wWtqutEc+eaD6a3+dXUV7b+RgjJ+00ybwTO3rAgNtl3wyLRdSDqG4ABoi
         n74sUgJp45LnSUZAzcTjol18Api3pJCU8Duej3KTyCCBziZnZjOqCK6JexSywCDNQsKP
         8s/HqiW4Y/C3LXBGYW0qIOwknZrHte5i70bv0GjqNihezaXMNVBhQsdGPvt706MdtdUq
         mo3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pF/lzLE4U1YqgDrA2oqCAR8ryLMidlHr4qfrb/Rx3t8=;
        b=3CQqFesX2NcpUl2JAWvnk25g6ZHgADhmWq+COzjxbC7gbXtWABIT1BO3f0MXSMv1jp
         PNCmIDuoytgbwRhGcLp0FRwbYm6g1tNApGWPCspvZAIU8CgwehciU9QeIyv7uRs3myR+
         vf1sjjlVe4z1teqAEjvrPTzQoAqbbf+WNEX8aPhHOjSdlXOvu4ZFP3XsubWfkydFKIuj
         QiRpYoH3hl7ph4RIAyYWOg3AvRIu2WixoCLDlY4uelFzkCnl4sxly5WDfYIK3Wrrz0yz
         QGbDdUQyytIybUDt0f0jVg6oqSSmXkdJ2WR6EcUXbhNWkkhOz5htrr9+gjQVOQ9/NQDt
         98Cg==
X-Gm-Message-State: AOAM5332k+BCuz/invep86DXllctif32tYa6tox3vcIf5STqWCa/MOr2
        o+6aP1YKFPLeZNWzr8jOyq4=
X-Google-Smtp-Source: ABdhPJzAvxTp/faJSHcXJ5mKOuccKHLEGlHQa+16ThZKQJG3lHyKHTQJ/q9C12ls4p1cLEybArt8pA==
X-Received: by 2002:a05:622a:213:: with SMTP id b19mr8405899qtx.398.1643863944804;
        Wed, 02 Feb 2022 20:52:24 -0800 (PST)
Received: from [192.168.1.49] (c-67-187-90-124.hsd1.tn.comcast.net. [67.187.90.124])
        by smtp.gmail.com with ESMTPSA id y16sm2620540qta.11.2022.02.02.20.52.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 20:52:24 -0800 (PST)
Subject: Re: Device Tree runtime unit tests: Harmonisation
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Naresh Kamboju <naresh.kamboju@linaro.org>,
        Brendan Higgins <brendanhiggins@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>
References: <CA+G9fYubR5A4f_0hDN1=Jaj_A-0GhMAcTc+TfJb5sgf0hRik8Q@mail.gmail.com>
 <0b6ab190-4c35-94fc-6565-6382d461ae84@gmail.com>
 <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
 <a6c785b1-2382-d6f5-d57b-d7ed3610050a@gmail.com>
 <CAL_JsqJ5a_0186ijg0C=9d3PjxsJZbwUab_o7QK8u8OVE_pvUw@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <971f874c-a2b3-6fbf-99e4-3c248078e098@gmail.com>
Date:   Wed, 2 Feb 2022 22:52:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ5a_0186ijg0C=9d3PjxsJZbwUab_o7QK8u8OVE_pvUw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/22 6:15 PM, Rob Herring wrote:
> On Wed, Feb 2, 2022 at 4:01 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 2/2/22 2:29 PM, Rob Herring wrote:
>>> On Wed, Feb 2, 2022 at 12:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>>
>>>> On 2/2/22 5:31 AM, Naresh Kamboju wrote:
>>>>> Linaro started doing Linux kernel Functional Validation (LKFT).
>>>>> As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
>>>>> daily test CI.
>>>>>
>>>>> The output of the test looks as below. The current problem is that we
>>>>> have a hard time to see (grep) pass/fail for each individual test. We
>>>>> only see a summary at the end with x pass and y fails.
>>>>
>>>> The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
>>>> are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
>>>> loglevel to allow debug output.
>>>
>>> That alone is not enough. Unless there's a DEBUG define, the
>>> pr_debug() is going to print nothing.
>>
>> I almost mentioned that detail, but decided I didn't need to given my
>> reference below to dynamic debug.
>>
>>>
>>>> Unfortunately this can add lots of debug output, unless you use dynamic
>>>> debug to only enable debug for drivers/of/unittest.o.  There are only
>>>> a few other pr_debug() messages in unittest.
>>>
>>> Dynamic debug is one option. Another would be a module param to enable
>>> running the tests
>>
>> I could implement that.
>>
>> But that does not address the issue of the individual test pass messages
>> being printed at loglevel KERN_DEBUG.  Are you thinking I should add a
>> second module param that would enable printing the test pass messages
>> at the same loglevel as the test fail messages?
> 
> Make them info level perhaps. If someone wants to run the unittests,
> then I think we should just print everything. It's already
> incomprehensible with all the EXPECT lines...

OK.  I thought there would be pushback against just printing everything.
I'll redo the patch to have unittest print the pass messages always.


> 
>> I'm not up to date on module params.  I'm assuming that I can pass these
>> new params on the boot command line if I build unittest as a built-in
>> instead of as a module.
> 
> Yes.
> 
>>> Then it can be built, but has to be explicitly
>>> enabled at boot time.
>>
>>> A 3rd option is making it work as a module, then
>>> it's run when loaded. (That was the original plan.)
>>>
>>>> I think a better solution would be to add a config option, something
>>>> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
>>>> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
>>>> review responses are.
>>>
>>> Nak for another config option.
>>
>> Because?
> 
> It's another config option... Another build combination to test...
> Users have to rebuild to change behavior...

Thanks for the explanation.

-Frank

> 
>>>>> We would like to get your opinion of how hard it would be to include
>>>>> that in the output per test. Maybe like TAP version 14?
>>>>> Another question would be how hard do you think it would be to rewrite
>>>>> this to a kunit test, if even applicable? I have provided the kunit
>>>>> output links at the end of this email.
>>>>
>>>> Devicetree unittests were suggested as a good candidate as a first
>>>> test to convert to kunit when kunit was implemented.  Brendan tried
>>>> to convert it, and we quickly saw that it was not a good candidate.
>>>> Devicetree unittests do not fit the unit test mold; they are a very
>>>> different creature.  Brendan has a good term for this type of test
>>>> (Brendan, was it "acceptance" test?).
>>>
>>> I thought you ended up agreeing with using kunit? Whatever you want to
>>
>> Not the kunit _framework_.
>>
>>> call the DT tests, there's not really any good reason to do our own
>>> pass/fail messages.
>>
>> Yes, I would like to change the pass fail messages to follow the same
>> standard as kunit, so that the test frameworks could easily process
>> the unittest results.  That has been on my todo list.
> 
> Ah, I misunderstood.
> 
> Rob
> 

