Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2461CCEF4E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 00:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729585AbfJGW6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 18:58:02 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39972 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729145AbfJGW6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 18:58:02 -0400
Received: by mail-pl1-f196.google.com with SMTP id d22so7572528pll.7
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 15:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=HcljqBtqZ0n7Ky2kGCyvmwQmBy2Uww4x9f71GEl4Z8U=;
        b=A94WXkxSy/iySlIL7pQDbk5PyEHAV56d2+iR4LFGlii5+pbrJhkGI9GamLLoNTp12V
         g3e9CFHLq2AC728cDVClIDG2UxNJ5N3fH1AfNYALNjvbTpOSGmomeBb3eXQ08eJYoZk6
         LU41rYaKI7Zmb1wKEoQWeSRAZ3gyy7X2TzCqPh41wNYsvmoupQFVQLsv8o0uOBqnW001
         TNxb1jdGtt62cUx/R+dWLujDN5vi+hdJ/P/yrqpBibd5wr3zkNV+jGHXKk8g1j0fjxcL
         ShHB6G/+3rJf1OdL2Syq7gxBYqmuuArpeguVvRhkfckQBq3io5FGAOPIrLkybmRobMO9
         hkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=HcljqBtqZ0n7Ky2kGCyvmwQmBy2Uww4x9f71GEl4Z8U=;
        b=Mug977yvxiQIWsAH3g8oYo4h1hoQASg4gVt43j6BhfZaSQ2fJgPn6OnAy0KMGDkP7d
         FcyNzQsxOLbAJkcrepl/D9ydkzTGal+HrUUZYxC3rs7CnMNPgJZmDy60w2SxU8QCL1uR
         HPMOFFYOCVAoF2gPbO5xyy0b/qTDqBu//99r/5unxM28Yz2URyFDFUBWxJlPnjzgpYrE
         st5ZzdqEoj/XxMDknFgCGwRMS8xQdxSeMJdVhXBSpwkdmvmuoQCFa4GIXzZS1nvqv6P2
         f8wAV4dKzfFyqFrhak36pNyAZ1lUvZQROCSifxL8f6HFObOBWLFrVKk8afoJfcurB80/
         CCRg==
X-Gm-Message-State: APjAAAUUhmzkD+m7536k2qa452nvbol6F0B5Q0PzbqacKgQA3sOWEsQY
        ALJXKjTFxjEUbfRDGv1WTrJyPA==
X-Google-Smtp-Source: APXvYqzkOuhDdUWLlgA6SbWta6SkUoWU+Z0M/BpBE4YDjY9UHet/ggDjHI1KlYIoeSDu6bnRUGp2SA==
X-Received: by 2002:a17:902:9a06:: with SMTP id v6mr25829128plp.221.1570489081140;
        Mon, 07 Oct 2019 15:58:01 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ad34:3a95:9a31:e6bb])
        by smtp.gmail.com with ESMTPSA id f62sm16453675pfg.74.2019.10.07.15.57.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 07 Oct 2019 15:58:00 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Anand Moon <linux.amoon@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to y
In-Reply-To: <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com> <20191007131649.1768-6-linux.amoon@gmail.com> <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
Date:   Mon, 07 Oct 2019 15:57:59 -0700
Message-ID: <7hsgo4cgeg.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Mon, Oct 7, 2019 at 3:17 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index c9a867ac32d4..72f6a7dca0d6 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -774,7 +774,7 @@ CONFIG_MPL3115=m
>>  CONFIG_PWM=y
>>  CONFIG_PWM_BCM2835=m
>>  CONFIG_PWM_CROS_EC=m
>> -CONFIG_PWM_MESON=m
>> +CONFIG_PWM_MESON=y
>
> some time ago I submitted a similar patch for the 32-bit SoCs
> it turned that that pwm-meson can be built as module because the
> kernel will run without CPU DVFS as long as the clock and regulator
> drivers are returning -EPROBE_DEFER (-517)

On 64-bit SoCs, the kernel boots with PWM as a module also, but DVFS
only works sometimes, and making it built-in fixes the problem.
Actually, it doesn't fix, it just hides the problem, which is likely a
race or timeout happening during deferred probing.

> did you check whether there's some other problem like some unused
> clock which is being disabled at that moment?
> I've been hunting weird problems in the past where it turned out that
> changing kernel config bits changed the boot timing - that masked the
> original problem

Right, I would definitely prefer to not make this built-in without a lot
more information to *why* this is needed.  In figuring that out, we'll
probably find the race/timeout that's the root cause.

Kevin


