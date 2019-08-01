Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3581C7E39B
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 21:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388847AbfHATzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 15:55:11 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:36431 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388797AbfHATzL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 15:55:11 -0400
Received: by mail-pl1-f194.google.com with SMTP id k8so32683221plt.3
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 12:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i5NjihWciO/n5SBSOOWYAPxN3NjO0ZgaPQlRVPRFC88=;
        b=WHjWHSGtmIDrEX6lO/xm6f8HE2sONqFNRZIIYxIroNEzQO0uyOFZ+bHbIrTvSebkKe
         qhz28Dd2NTBtceMymt0Me8SV0jXTdrbMN6Yi1HuE1cMyJAa4CSscuZ1EeeLynT8bc4Ez
         Fl3NKggUZo4EH1lIBhJdYZ9TEFEOya9tshmEcDgv2ZDj2XdBNcnYUfbxktjmDG0+G1oD
         aF2RJAPeXA1jrvwDf8TkUU4yadD9xzkM+Nbefqzf7co6dp55xZo491an753OkyYI6/kP
         QWfFoA1/hYPFBQVelFlimOR0m2GNSuYcLvLNUJVAsI0VX0xVtmJ7mrf7jwoCwVfYLH/a
         4AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i5NjihWciO/n5SBSOOWYAPxN3NjO0ZgaPQlRVPRFC88=;
        b=QwfN9BvxbjLgMdnDC2XwPp9A+AnWenQcf5HMjnFfPyP8IzHGPhHuw7zFz5uXuBzPhS
         IGlLh8dh0b3z75kddG3qpSFqm9XUROJbcb+lXKl5O0mrGLvsRCLrsm4ggsQHkLJZB/l2
         Q1iJdH1Q2cv6vq1SmQZwUMNqIh4/ux8l0QR8+cnRePdM5H8KO/ZP1SDfhsn0XEe26DOh
         2C46SHkq5RB+fEG4KlPfK0LXSJQOoF8JRgCpS+Wt40SD/5SmopA32J+Kg2DSxtfsC/tN
         j7PAvdsEPtDfpTfbDztS6XEFeTn1c5AM+FoM7sQNaii/r2TMAO+9KxGKFxnOYcpNb1ue
         Sq5Q==
X-Gm-Message-State: APjAAAWp7675hY/GPV1mJyauiKraJE/yKw0j9Yos6Hwg1mMb2XCLW1ZX
        4ISjRqsCmsEN0AEmEQVdHcnCgGy0
X-Google-Smtp-Source: APXvYqz0/p4tdP7QlZvw356t1bVsmmg/yLl1rqbXtlB/KCgbCqeTp2GV/GGeeR+uGHlqlYtd7OmOgA==
X-Received: by 2002:a17:902:290b:: with SMTP id g11mr125507552plb.26.1564689310309;
        Thu, 01 Aug 2019 12:55:10 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id f14sm73031065pfn.53.2019.08.01.12.55.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 12:55:09 -0700 (PDT)
Subject: Re: [PATCH] scripts/dtc: dtx_diff - add color output support
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20190731123741.13947-1-geert+renesas@glider.be>
 <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com>
 <CAMuHMdWPvD_pSyJGp=kC0XmAChCK8R2X+exmpHT5eywJ5kQetA@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <88417bc8-3cd8-bb54-e487-8fa6b0b1f346@gmail.com>
Date:   Thu, 1 Aug 2019 12:55:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWPvD_pSyJGp=kC0XmAChCK8R2X+exmpHT5eywJ5kQetA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/1/19 5:13 AM, Geert Uytterhoeven wrote:
> Hi Frank,
> 
> On Wed, Jul 31, 2019 at 10:30 PM Frank Rowand <frowand.list@gmail.com> wrote:
>> On 7/31/19 5:37 AM, Geert Uytterhoeven wrote:
>>> Add new -c/--color options, to enhance the diff output with color, and
>>> improve the user's experience.
>>>
>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> ---
>>>  scripts/dtc/dtx_diff | 10 +++++++++-
>>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
>>> index e9ad7834a22d9459..4e2c8617f69a333e 100755
>>> --- a/scripts/dtc/dtx_diff
>>> +++ b/scripts/dtc/dtx_diff
>>> @@ -20,6 +20,8 @@ Usage:
>>>
>>>
>>>        --annotate    synonym for -T
>>> +      --color       synonym for -c
>>> +       -c           enable colored output
>>>         -f           print full dts in diff (--unified=99999)
>>>         -h           synonym for --help
>>>         -help        synonym for --help
> 
>> I like the idea, but...
>>
>> I have various linux distro releases across my many systems, but only one is
>> new enough to have the diff command that supports --color.
> 
> Seems to have been added in diffutils release 3.4 (2016-08-08).
> I almost can't believe it was that recent, but then I remembered using a
> wrapper before (colordiff; other wrappers may exist).
> 
>> Can you enhance this patch to test whether --color is supported?  Maybe
>> something like (untested):
>>
>>         -c | --color )
>>                 if `diff --color <(echo a) <(echo a) 2>/dev/null` ; then
>>                         diff_color="--color=always"
>>                 fi
>>                 shift
>>                 ;;
>>
>> Then add some text to the usage for -c and --color saying that they will
>> be silently ignored if diff does not support --color.
>>
>> I first wrote up a suggested version that printed an error message and
>> exited, but I think silently ignoring is more robust, even though it
>> may be more confusing to someone who is wondering why --color does not
>> work.
> 
> Given this is an optional feature, to be enabled explicitly by the user,
> I'm not so fond of going through hoops to auto-detect the availability.
> 
> So what about just documenting this in the help text instead?
> 
> -      -c           enable colored output
> +      -c           enable colored output (requires diff with --color support)

-----  thought 1  -----

My first thought was:

If the hoops were complex and ugly, I might agree with you.  But since it is
a simple one line "if" (two lines including "fi") I prefer the check.

The help text update looks good to me, along with the check.


-----  thought 2  -----

Then I reconsidered, and thought "well, Geert has a good idea".  So I
decided to see how useful the diff error message would be.  The message is:

   $ scripts/dtc/dtx_diff -c a.dts b.dts
   diff: unrecognized option '--color=always'
   diff: Try 'diff --help' for more information.
   $ 
   Possible hints to resolve the above error:
     (hints might not fix the problem)

     No hints available.

It is interesting that the shell prompt arrives before the full set of
messages from the script, but that is not my issue.  My issue is that
when the diff fails, the script tries to find suggestions to solve
the problem.  (The suggestions exist to catch some likely problems
with the shell variable "ARCH".)

Unfortunately in the case of the "--color" problem, the useful warning
from diff becomes less visible because of the early prompt and the
not so helpful messages about hints.

If the hints related messages were not present, then I was ready to
accept that the diff warning was sufficient.  But since the hints
messages are present, and hiding them would be more complex than
the original check that I suggested for whether diff supports
the --color option, I am back to my first thought: I prefer the
check whether diff supports "--color" is done when dtx_diff detects
the "--color" option.

-Frank

> 
> Thanks!
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> 

