Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 03C84D0E2F
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 14:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730511AbfJIMEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 08:04:46 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:37749 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727228AbfJIMEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 08:04:45 -0400
Received: by mail-wr1-f66.google.com with SMTP id p14so2626720wro.4
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=JO2boY9XIzvrkHIaKUA5yfCjUYvN4PStHFpOCRTj0IU=;
        b=Sb27QG4zeMrMyblGOWbVXVqhM64b9igT0eyvM0n+yMALY78Hhs/InNJRQZRzEHrM64
         pRRSbkPlsVh28m0q6F6QIgXdusWugNeN1FOB2DtjQlJXIUY0NADoTEyuIutff25FPG/9
         MqhCbG4cznoIHCysiEwXaiKnFRS+GLuZxg11+KHOFAqcCoWd1SOPSKoT4qcEBEcve4vR
         zvPgb2594qAI4ORHz68aXDFY9669SZphZcBQhDSmEmZJz6WmeY9T5p8Uk/bh31aijbZh
         XlNL50zWs3JbKYXeh8/3evsO5gF0Ux6dxAViQ3ZIZ5rlxHHXKi59dr5QhIzUDtoqnWWT
         WCWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=JO2boY9XIzvrkHIaKUA5yfCjUYvN4PStHFpOCRTj0IU=;
        b=bzZtlahcvKXkqvS7v585ihWubrexfyi6jSUVgkxvyI0CzzIGJg3cbK0FrZTOnEHS/H
         l2zm6Xo16c/Cs++BcUBnicQv6/nDnBQFXejvoeatJ871pTdNJEYNrWtFmrWUBQwDv8xN
         astQ5ICBSe52g0GVXA1806sFDxPFsNXS+G2YqJ+XHBDeKgdBU0nwVDfIqHnL9ODjjRhy
         uj4+YD2IDQ522BLMmwQ4TylT4Fpuu+kGdS0YbO2nL249R7+o6XiDc3TAp0vA7U0Jqxot
         17+pp9aojzO4/3GupInQtjnWN26XZZ5UpylHn0KJinu0U2ZBqCXr209g5WT8IkQ20T+q
         mi2w==
X-Gm-Message-State: APjAAAWlaMMj44YSUDSvzOk94L3rbF9rfrnAl7FGu7ral9uGugAm7qif
        LaYgCn3FuXFcyKAFvveJjbjbHQ==
X-Google-Smtp-Source: APXvYqxfSJCr9n23ZoCYM//W85uSjfZCWYHlQ3vm8HJkbBUb5NQ2yN7Uw43iwcqmki/bK3aM87soog==
X-Received: by 2002:adf:fa92:: with SMTP id h18mr2616323wrr.220.1570622683443;
        Wed, 09 Oct 2019 05:04:43 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id b5sm1890075wmj.18.2019.10.09.05.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 05:04:42 -0700 (PDT)
References: <20191007131649.1768-1-linux.amoon@gmail.com> <20191007131649.1768-6-linux.amoon@gmail.com> <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com> <7hsgo4cgeg.fsf@baylibre.com> <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com> <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com> <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Anand Moon <linux.amoon@gmail.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Linux Kernel <linux-kernel@vger.kernel.org>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to y
In-reply-to: <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
Date:   Wed, 09 Oct 2019 14:04:41 +0200
Message-ID: <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed 09 Oct 2019 at 10:48, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
>
> [0] https://pastebin.com/eBgJrSKe
>
>> you can also try the command line parameter "clk_ignore_unused" (it's
>> just a gut feeling: maybe a "critical" clock is being disabled because
>> it's not wired up correctly).
>>
>
> It look like some clk issue after I added the *clk_ignore_unused* to
> kernel command line
> it booted further to login prompt and cpufreq DVFS seem to be loaded.
> So I could conclude this is clk issue.below is the boot log
>
> Kernel command line: console=ttyAML0,115200n8
> root=PARTUUID=45d7d61e-01 rw rootwait
> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> clk_ignore_unused
>
> [1] https://pastebin.com/Nsk0wZQJ
>

Next step it to try narrow down the clock causing the issue.
Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
to the flag of some clocks your clock controller (g12a I think) until

The peripheral clock gates already have this flag (something we should
fix someday) so don't bother looking there.

Most likely the source of the pwm is getting disabled between the
late_init call and the probe of the PWM module. Since the pwm is already
active (w/o a driver), gating the clock source shuts dowm the power to
the cores.

Looking a the possible inputs in pwm driver, I'd bet on fdiv4.

