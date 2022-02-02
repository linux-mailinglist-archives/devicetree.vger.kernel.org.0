Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 756114A7AB2
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 23:01:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347737AbiBBWBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 17:01:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231777AbiBBWBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 17:01:53 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE3C0C061714
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 14:01:52 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id p14so596151qtx.0
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 14:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ASt2vrZbBYwRau7lx5PiBVFL+QKvgxL2m71DDDersUo=;
        b=BYjh9wZfjVMx0RmMHWRDhp+84JGAcHZltZ1KBS0+5uPaBpf5HDt99Ig703HWUmRFgS
         1BC7GEdv/uPWMBJwyqbtNKVErrnGXS+UknOCu4xpCyZ8Gw5Uq8M9JV+NfENZGITnYXg2
         JRM4oz8H1CD0DAIiwgfXo0QWCLUjU604/8b9o8c9cxnbtltTXm/Biypd9VYuFBrJfWJ4
         yRfzRCMHwcaD1/om0aW1vDkh5Chp2iSU5v0oRauXQldIhYb8jMcNkNJmEwdjBI8cfth9
         K3FbQcH74o7Tw/SDrfN8wucZEhNjtYAiryGrTFcdNRNBYyR4d7l3D+0PZayOMRncu8yn
         IW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ASt2vrZbBYwRau7lx5PiBVFL+QKvgxL2m71DDDersUo=;
        b=gnbt0zh9UsDuXPrKeJzohx1KX70fk6icLJ22aD91vPE4kelBkQc9EPMp/hxGQXc/FL
         myGVAPhXQY5VnH/Yvsu3f00UAr7p7SBOdOXgEF2VSYMUaEBfHDkO1dzuodPTn8yTVGmt
         jS56r97qRseX/6gmCDHwFHsCM/KKFMg+S0HEsWDCi39CCP7bxlup0Nt6B90lrotGU2py
         yp9s3gJ3S+fc/tfpFnIpWeNl8epy3E2/rkyDFZIWPDHwHKjFFuDFoi4C4WtMWepMNBr9
         TGi8vaaRSTOR+bQZ/hO2g53lhcLrNpO5KOohcIJ0JmrVSv2kURFLPOGM/q3lPwcHh5W8
         p+bQ==
X-Gm-Message-State: AOAM532VLlLWV3bSW4XayyOcLgLl6eZJkve2VhqfV4pQCBMKkxgZ9FME
        mJf1lQ1FKBG96UeTlz8rTZM=
X-Google-Smtp-Source: ABdhPJwI9w105YjsyNpt/EnuDERS15GsU5qYgznzp/1nhvWMsFQ87wp8H1j0O2xsi52/40jZRMo2Dg==
X-Received: by 2002:a05:622a:1714:: with SMTP id h20mr24800824qtk.92.1643839311941;
        Wed, 02 Feb 2022 14:01:51 -0800 (PST)
Received: from [192.168.1.49] (c-67-187-90-124.hsd1.ky.comcast.net. [67.187.90.124])
        by smtp.gmail.com with ESMTPSA id u6sm13159115qki.136.2022.02.02.14.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:01:51 -0800 (PST)
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
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <a6c785b1-2382-d6f5-d57b-d7ed3610050a@gmail.com>
Date:   Wed, 2 Feb 2022 16:01:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLnv_=mcs+pAXRArSg7uccPFpDhcbBOpHGaWwjOZdt9DQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/22 2:29 PM, Rob Herring wrote:
> On Wed, Feb 2, 2022 at 12:38 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> On 2/2/22 5:31 AM, Naresh Kamboju wrote:
>>> Linaro started doing Linux kernel Functional Validation (LKFT).
>>> As part of LKFT recently we have enabled CONFIG_OF_UNITTEST=y in our
>>> daily test CI.
>>>
>>> The output of the test looks as below. The current problem is that we
>>> have a hard time to see (grep) pass/fail for each individual test. We
>>> only see a summary at the end with x pass and y fails.
>>
>> The FAIL messages are printed at loglevel KERN_ERR.  The pass messages
>> are printed at loglevel KERN_DEBUG.  To see the pass messages, set the
>> loglevel to allow debug output.
> 
> That alone is not enough. Unless there's a DEBUG define, the
> pr_debug() is going to print nothing.

I almost mentioned that detail, but decided I didn't need to given my
reference below to dynamic debug.

> 
>> Unfortunately this can add lots of debug output, unless you use dynamic
>> debug to only enable debug for drivers/of/unittest.o.  There are only
>> a few other pr_debug() messages in unittest.
> 
> Dynamic debug is one option. Another would be a module param to enable
> running the tests

I could implement that.

But that does not address the issue of the individual test pass messages
being printed at loglevel KERN_DEBUG.  Are you thinking I should add a
second module param that would enable printing the test pass messages
at the same loglevel as the test fail messages?

I'm not up to date on module params.  I'm assuming that I can pass these
new params on the boot command line if I build unittest as a built-in
instead of as a module.

> Then it can be built, but has to be explicitly
> enabled at boot time.

> A 3rd option is making it work as a module, then
> it's run when loaded. (That was the original plan.)
> 
>> I think a better solution would be to add a config option, something
>> like CONFIG_OF_UNITTEST_VERBOSE, that would print the pass messages
>> at loglevel KERN_ERR.  I'll submit a patch for that and see what the
>> review responses are.
> 
> Nak for another config option.

Because?

> 
>>> We would like to get your opinion of how hard it would be to include
>>> that in the output per test. Maybe like TAP version 14?
>>> Another question would be how hard do you think it would be to rewrite
>>> this to a kunit test, if even applicable? I have provided the kunit
>>> output links at the end of this email.
>>
>> Devicetree unittests were suggested as a good candidate as a first
>> test to convert to kunit when kunit was implemented.  Brendan tried
>> to convert it, and we quickly saw that it was not a good candidate.
>> Devicetree unittests do not fit the unit test mold; they are a very
>> different creature.  Brendan has a good term for this type of test
>> (Brendan, was it "acceptance" test?).
> 
> I thought you ended up agreeing with using kunit? Whatever you want to

Not the kunit _framework_.

> call the DT tests, there's not really any good reason to do our own
> pass/fail messages.

Yes, I would like to change the pass fail messages to follow the same
standard as kunit, so that the test frameworks could easily process
the unittest results.  That has been on my todo list.

> 
> Rob
> .
> 

