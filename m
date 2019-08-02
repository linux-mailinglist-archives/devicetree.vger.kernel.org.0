Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C31F67FC7A
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2019 16:46:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395015AbfHBOqB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 10:46:01 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:45265 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727127AbfHBOqB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Aug 2019 10:46:01 -0400
Received: by mail-pf1-f196.google.com with SMTP id r1so36151009pfq.12
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 07:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XCdeySBzGrgeBgYK5jxMj67g5q6tX2XKTlKhQhkew8s=;
        b=vVStJXMjM2TX7326vxiz1WOpQt420UHoJIDW80HC0xsPjajHFnM+YjVNd69vG6YYgo
         DcU/+1T+gnFVblQMjOGzhAbIu86uDVuU8ioy/17nAtzxLWtf7XRZf27HGDBOk7Y9kfrE
         q440s/G+J3pzpxZ9S8AhfFhECRoQ+A49yFhNWrGFHlx9KOabX1UptYC2lIgEA9Yt5TjG
         mfbmp7YyReo/O83gLUE/ifoFk+sML6oViK82aE8ClZBlZdGthKX/afKAr6KOyu9N/H8A
         0PFEnAa3uxZ4xnZjVXo/MJ1cVbanNBJHRprKfXXcrhBixPPzxyE3aqejzcQFBrU+9ElV
         61CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XCdeySBzGrgeBgYK5jxMj67g5q6tX2XKTlKhQhkew8s=;
        b=LWqDWbCelRY2pAa3oALpbPFNWnaEFgfA8mIx7cC2M+jTWBDOC/z/V9qjG3+xL4lMi8
         4eYYR1UMj0CcDyFZr2+R6sRGnQKSDEUuJvnbzq9aXRhqIzxZRJAl7NdW5iy2ZJ9RbNO7
         MNVyd0e1idZCeUkwb7LBUKPyo+rgujh0+e4pfAfg+yfgu2U8VvU+Yk3smey4nVvv4YY2
         5B4Q/R91jssiMj/e6gvYgSQgn7/v6O0IGMAGz4XQgAM6olHlMxchHTFh4gRvDxkXl7ee
         kiK6MYVh9mKLmnNBHIV7+PRooItiCw0taBNifD+Z8PjPlCiNdSfEgf4TPgmMz/ovvjXm
         D7IA==
X-Gm-Message-State: APjAAAUteqC1vOYUnN6y7YRMi3umiPlxg6Y+RFqz5AhsrZdmqMnoQiy6
        cx0mIwenHwESf0HDq+Is6j4=
X-Google-Smtp-Source: APXvYqzkvo5AqFoyIctC3jPgURT68dlVp90rG9r+pBVyi2HD6Epjbo/zp6PbsKjJ+NI9ew8A7ARGVw==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr97105615pgg.295.1564757160757;
        Fri, 02 Aug 2019 07:46:00 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id x1sm7601229pjo.4.2019.08.02.07.45.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 07:45:59 -0700 (PDT)
Subject: Re: [PATCH] scripts/dtc: dtx_diff - add color output support
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20190731123741.13947-1-geert+renesas@glider.be>
 <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com>
 <CAMuHMdWPvD_pSyJGp=kC0XmAChCK8R2X+exmpHT5eywJ5kQetA@mail.gmail.com>
 <88417bc8-3cd8-bb54-e487-8fa6b0b1f346@gmail.com>
 <CAMuHMdW5XmG-320uhAsqxC-oCq7POtZKOOE1V485nB5K1vzh8g@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <61da8594-ee3c-2f71-8d6d-e7a501848436@gmail.com>
Date:   Fri, 2 Aug 2019 07:45:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdW5XmG-320uhAsqxC-oCq7POtZKOOE1V485nB5K1vzh8g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On 8/2/19 1:44 AM, Geert Uytterhoeven wrote:
> Hi Frank,
> 
> On Thu, Aug 1, 2019 at 9:55 PM Frank Rowand <frowand.list@gmail.com> wrote:
>> On 8/1/19 5:13 AM, Geert Uytterhoeven wrote:
>>> On Wed, Jul 31, 2019 at 10:30 PM Frank Rowand <frowand.list@gmail.com> wrote:
>>>> On 7/31/19 5:37 AM, Geert Uytterhoeven wrote:
>>>>> Add new -c/--color options, to enhance the diff output with color, and
>>>>> improve the user's experience.
>>>>>
>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>> ---
>>>>>  scripts/dtc/dtx_diff | 10 +++++++++-
>>>>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
>>>>> index e9ad7834a22d9459..4e2c8617f69a333e 100755
>>>>> --- a/scripts/dtc/dtx_diff
>>>>> +++ b/scripts/dtc/dtx_diff
>>>>> @@ -20,6 +20,8 @@ Usage:
>>>>>
>>>>>
>>>>>        --annotate    synonym for -T
>>>>> +      --color       synonym for -c
>>>>> +       -c           enable colored output
>>>>>         -f           print full dts in diff (--unified=99999)
>>>>>         -h           synonym for --help
>>>>>         -help        synonym for --help
>>>
>>>> I like the idea, but...
>>>>
>>>> I have various linux distro releases across my many systems, but only one is
>>>> new enough to have the diff command that supports --color.
>>>
>>> Seems to have been added in diffutils release 3.4 (2016-08-08).
>>> I almost can't believe it was that recent, but then I remembered using a
>>> wrapper before (colordiff; other wrappers may exist).
>>>
>>>> Can you enhance this patch to test whether --color is supported?  Maybe
>>>> something like (untested):
>>>>
>>>>         -c | --color )
>>>>                 if `diff --color <(echo a) <(echo a) 2>/dev/null` ; then
>>>>                         diff_color="--color=always"
>>>>                 fi
>>>>                 shift
>>>>                 ;;
>>>>
>>>> Then add some text to the usage for -c and --color saying that they will
>>>> be silently ignored if diff does not support --color.
>>>>
>>>> I first wrote up a suggested version that printed an error message and
>>>> exited, but I think silently ignoring is more robust, even though it
>>>> may be more confusing to someone who is wondering why --color does not
>>>> work.
>>>
>>> Given this is an optional feature, to be enabled explicitly by the user,
>>> I'm not so fond of going through hoops to auto-detect the availability.
>>>
>>> So what about just documenting this in the help text instead?
>>>
>>> -      -c           enable colored output
>>> +      -c           enable colored output (requires diff with --color support)
>>
>> -----  thought 1  -----
>>
>> My first thought was:
>>
>> If the hoops were complex and ugly, I might agree with you.  But since it is
>> a simple one line "if" (two lines including "fi") I prefer the check.
>>
>> The help text update looks good to me, along with the check.
> 
> OK.
> 
>> -----  thought 2  -----
>>
>> Then I reconsidered, and thought "well, Geert has a good idea".  So I
>> decided to see how useful the diff error message would be.  The message is:
>>
>>    $ scripts/dtc/dtx_diff -c a.dts b.dts
>>    diff: unrecognized option '--color=always'
>>    diff: Try 'diff --help' for more information.
>>    $
>>    Possible hints to resolve the above error:
>>      (hints might not fix the problem)
>>
>>      No hints available.
>>
>> It is interesting that the shell prompt arrives before the full set of
>> messages from the script, but that is not my issue.  My issue is that
> 
> That is due to the output coming from the two "<(compile_to_dts ...)"
> sub-processes, not from the diff sub-process.

Thanks for figuring that out (or knowing it).  I figured it probably
was from some sort of separate process issue, but had not chased it
down.  Now I have a reminder in the back of my brain to be aware of
messages coming from the "<()" construct.


> 
>> when the diff fails, the script tries to find suggestions to solve
>> the problem.  (The suggestions exist to catch some likely problems
>> with the shell variable "ARCH".)
> 
> Interesting. I didn't know about the hints (never saw them), and had to
> try hard to trigger them (I usually do DTB comparisons only).
> But I succeeded ;-)
> With a small tweak as my diff does support --color:
> 
>     $ scripts/dtc/dtx_diff -c
> arch/arm64/boot/dts/renesas/r8a7799*{ebisu,draak}.dts
>     diff: unrecognized option '--olor=always'
>     diff: Try 'diff --help' for more information.
>     $
>     Possible hints to resolve the above error:
>       (hints might not fix the problem)
> 
>       shell variable $ARCH not set
> 
>       architecture arm64 is in file path,
>       but does not match shell variable $ARCH
>       >>$ARCH<< is: >><<
> 
> 
>     Possible hints to resolve the above error:
>       (hints might not fix the problem)
> 
>       shell variable $ARCH not set
> 
>       architecture arm64 is in file path,
>       but does not match shell variable $ARCH
>       >>$ARCH<< is: >><<
> 
>> Unfortunately in the case of the "--color" problem, the useful warning
>> from diff becomes less visible because of the early prompt and the
>> not so helpful messages about hints.
> 
> Yeah, they are not so helpful.
> In fact $ARCH is indeed not set, but that's not an issue at all.
> 
>> If the hints related messages were not present, then I was ready to
>> accept that the diff warning was sufficient.  But since the hints
>> messages are present, and hiding them would be more complex than
>> the original check that I suggested for whether diff supports
>> the --color option, I am back to my first thought: I prefer the
>> check whether diff supports "--color" is done when dtx_diff detects
>> the "--color" option.
> 
> OK, you managed to convince me. Will fix.

Thanks.


> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

