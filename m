Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 794CA19847
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 08:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726873AbfEJGOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 02:14:06 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42737 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726808AbfEJGOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 02:14:05 -0400
Received: by mail-lf1-f66.google.com with SMTP id w23so3261250lfc.9
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 23:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wcoCn9aET8ENDUMb5kZFQY4rPTMs5oVxV7wArQjOIBo=;
        b=OBoy5jFwq7rwO6rQvfRJjzjUxv5hh15DMppI5VJRgrtBPPvNHy3xN3DS9UhKYbdjg2
         x4th2Lp7uXVK/Q+3WelH6KnB3Xzx5iDF0au91UTqihiFLCAIk9+ctrLUnNOF6paggLUR
         iehK957Lt3Jw4wMEOGI1tIRKyCMykJlJy6Hug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wcoCn9aET8ENDUMb5kZFQY4rPTMs5oVxV7wArQjOIBo=;
        b=Uq95nB/r+9X3onpqvhm3g5ukT6W8EWzkjrcLvQU5CtLjziuPpx3OnobOG7JnVyc3ld
         YoDjRE24ZinwHVHgk26h846mYMxAkhKNzCN1bvQj7mBKyMvImVF8JTUfs1H88gWG31ww
         dmDTFzXm89mWXT6/aKqzWfPsfE//UXELe+/vh7r9iOkXnQ8liFOv/o0GtcS4DnSgEaMM
         jHElrtR8URCAcA2bhv5V7vlaxXTOf+7zYbGRFtdXQrc/HqCkKaLhRVb2bgo/zSbH45ZE
         xw+94/rKHdXPMFViQkDKPIMQeZB8zOdX8H3KV62CFruN6/fUQ1EcbPwNTCrRBu7GVhRL
         +8TA==
X-Gm-Message-State: APjAAAVFLE9YymRVGRr8brYl1PwVwW2pCVaBU9tBAGEUjVSYYSJsEO4T
        t0pGzt+57ymyfxAWs4vdXB9wQg==
X-Google-Smtp-Source: APXvYqxjq3SwLXsYD1FL12FSPs1z8AbTUxVH50KLsWdg3JeNkzbWs8UtasTLQvTkgAAB7vhwEhVrpA==
X-Received: by 2002:ac2:43cf:: with SMTP id u15mr4755854lfl.67.1557468843494;
        Thu, 09 May 2019 23:14:03 -0700 (PDT)
Received: from [172.16.11.26] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id f4sm1025869ljm.80.2019.05.09.23.14.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 23:14:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: add support for rng-seed
To:     Hsin-Yi Wang <hsinyi@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>,
        Kees Cook <keescook@chromium.org>
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
 <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
Date:   Fri, 10 May 2019 08:14:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2019 10.00, Hsin-Yi Wang wrote:
>>>> Why do you need to clear it? That wasn't necessary for kaslr-seed.
>>> I think it's for security purpose. If we know the random seed, it's
>>> more likely we can predict randomness.
>>> Currently on arm64, kaslr-seed will be wiped out (in
>>> arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
>>> read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
>>> I'm not sure on other arch if it will be wiped out.
>>
>> The difference is if I have the kaslr seed, I can calculate the kernel
>> base address.
>>
>> In your case, you are feeding an RNG which continually has entropy
>> added to it. I can't see that knowing one piece of the entropy data is
>> a security hole. It looks more like you've just copied what what done
>> for kaslr-seed.
> +Kees who can probably explain this better.
> 
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).

So, why not just have the bootloader add whatever entropy it has via the
commandline, which already gets mixed in? That requires no kernel
changes, and works for all architectures.

If anything, perhaps instead of just adding gobbledygook=abc123, make an
official command line parameter (there was talk about this at some
point), and have the kernel overwrite the value with xxx so it's not
visible in /proc/cmdline.

Rasmus
