Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 86B2D134818
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 17:38:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727148AbgAHQii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 11:38:38 -0500
Received: from mail-qt1-f193.google.com ([209.85.160.193]:44360 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727127AbgAHQii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 11:38:38 -0500
Received: by mail-qt1-f193.google.com with SMTP id t3so3249683qtr.11
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 08:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jdl/Zsr0GR9wBuZ25Y72IklTzgLcGojCcmTZU2xpvSg=;
        b=G4tD0yfYdDnfrLq6TvTy2oWfqDssiATWAjnbai2Baiw/Quy5iNNW4Wb0jpKPkKCHp8
         bKgaCZWpKQBK2EXito5CHHhUVMbGGsyhUVwAy+Z5WmDXcpoSFgU5RUCsVL8HZdYdIskQ
         enww8n54r/Cr3zRuLMNxyjg/Voc1UBfl+nW3iBbuVO8+19RRH2sB0mVrROSidCk4stAB
         rNskIBBoPNw+JT65vN2St1iVJY40mJIcnMW8lv8AGwBQ+zGElhw5xqHiNyjwVDIJHQ2n
         et9YXENki5a9zFTTDZHtvwfUlZZsN2J29OE3p84aIlneYKpaFp2h0S6Kk+RRkrYwGaBa
         d0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jdl/Zsr0GR9wBuZ25Y72IklTzgLcGojCcmTZU2xpvSg=;
        b=mfYRrwk79oCrCulZ0OcyMsGJ9j0mv/EPQpsI1r3r2gtw5TsEGdD44x88e7I4yARodI
         0cmidC8GV0JWgfyFEo4+G9l16t00jDLj+t5/pkQqXuyt22QmvIcnQU2wJPKI3K/Nr/NG
         OM70uVY7ZSEvGbUgb2brzUI0YkXbHheO/8msHKDwekrMS9UuFvm4PLO4TkG2Dp7EI9fC
         ZH3eOn5ti7iYYvyl/qzLxWoGHmiCYjvsL9OK9oOwjpoaz0GQLXV0i5gRliCKKntwRNGH
         C8zCdFQWEWh9EzAKX4lxQz64DQZyhLltS5rDcuHkE53dQAaU3rVruZ4LS5vJyN03Abbl
         uOxg==
X-Gm-Message-State: APjAAAWzGEsoCzWZLZP3l5xSMkRZRQTCr7Y1LVDTgyLP3DZDlXvV24aF
        mUnp0SkJ1bV32EQQ3k/nRkpPfl+Sw2SV0DtKwj0=
X-Google-Smtp-Source: APXvYqyf8ZmS/Vrjl6yL8Ikem4yqs1zjEZKOgvwH7KEFK407Kx1Ytf+6kPZx0dXkcS9x/BJ6H4WWaHdPjSKOMkHL7y8=
X-Received: by 2002:ac8:5241:: with SMTP id y1mr4256795qtn.373.1578501517734;
 Wed, 08 Jan 2020 08:38:37 -0800 (PST)
MIME-Version: 1.0
References: <20200108042018.571251-1-anarsoul@gmail.com> <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
In-Reply-To: <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Wed, 8 Jan 2020 08:38:10 -0800
Message-ID: <CA+E=qVeMvJ96OZ62E_B3byr4dGgtWd3NVD6qqB40gS7ExZy5uw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 8, 2020 at 8:04 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Tue, Jan 07, 2020 at 08:20:14PM -0800, Vasily Khoruzhick wrote:
> > This series introduces new DTSI with operating points for A64,
> > adds cooling maps and thermal tripping points and enables DVFS
> > on all the supported A64-based boards
>
> Thanks for that new series.
>
> I'm not sure I've seen the answer, but how did you test that the OPPs
> were stable?

I've been using them for close to 2 years and haven't seen any issues so far.

> So far, the only method that proved to be reliable was to run
> https://github.com/ssvb/cpuburn-arm/blob/master/cpufreq-ljt-stress-test
>
> Could you paste the result (one board should be enough) ?

Here is a run on Pine64-LTS:
https://gist.github.com/anarsoul/23c361b42bcdf4f2e23624f74c4c94bc

Regards,
Vasily

> Thanks
> Maxime
