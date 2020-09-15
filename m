Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB5926AE28
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 21:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727751AbgIOTxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 15:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727825AbgIOTxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 15:53:16 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697A4C061788
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 12:53:16 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id m8so1141757vka.6
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 12:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JatNhbddJToYM0By7pCmtx57Fyea4GmWvkZSCincDmk=;
        b=cs/Q6x0YzM+Pnjbl6WAD3RzDobJyyW3NLuTB+Fmlv0GjwsMl/B+GFzhyNWSmw90fQU
         Xtqk1Uwmb+cc47MODVCKGi7K+6IaYLZkTSOlCr4/CL5Uzj5kvCqCPt+MFe2Vk3R8hL08
         HLUmomtDf8ml9LyL4vgvTXl9tBLoW0hCaJ6V0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JatNhbddJToYM0By7pCmtx57Fyea4GmWvkZSCincDmk=;
        b=q49oL6O3WKDFN9VVfpcaiSFdOS6wiujeSJx/0ySGuIwQyhiRK88W4sFad7aquD7IxZ
         RRFewu+4Xp/Nkuv2JvEUCy5fo/+Kv3vlREtXZliEG3wwvj9EqJv/Ix69Jcju59Njtb0K
         FeRYGl1+Ak+R4QcV9t5Jym2Hj2rOyD8QxLG0Ns3c/sLiUbbpArYSZNwduS8/TEQMBeo5
         lSkObZF/a4h569xiFBu/SWmGjz/fcumXmOnlbmtWLWjz9MolHyYDrbc9UUOV3WhU2xTC
         Ft+Anxh7iZg96RJ82jhr0BGOeBe9ugrQMh60volxif6gmB2J225QWrButCEH2Uh1O2S5
         3YHw==
X-Gm-Message-State: AOAM530Q9ly5EpfWKsCNtKOqzws9dK+iJmkOV6sYfKFzJwk0uzUyFC4E
        Xewt5D9s+gUk9DYGHgyacHQDPBd7/Gk1Ug==
X-Google-Smtp-Source: ABdhPJwqU/rpGrpShdtQFLzrEhCC5oLfjksqnyl/+sAyv1zamUpq/2RJZpG1wZ1/Z0o90hOdPFlk0Q==
X-Received: by 2002:a1f:4507:: with SMTP id s7mr11651904vka.9.1600199594503;
        Tue, 15 Sep 2020 12:53:14 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id b140sm2162839vsd.14.2020.09.15.12.53.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 12:53:13 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id j185so2637330vsc.3
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 12:53:13 -0700 (PDT)
X-Received: by 2002:a05:6102:101a:: with SMTP id q26mr2665758vsp.34.1600199593095;
 Tue, 15 Sep 2020 12:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
In-Reply-To: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 15 Sep 2020 12:53:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WkS41m_FnZ9V-MM3uh8V6XKgHqvK7FpyWPBCjk7VuVHA@mail.gmail.com>
Message-ID: <CAD=FV=WkS41m_FnZ9V-MM3uh8V6XKgHqvK7FpyWPBCjk7VuVHA@mail.gmail.com>
Subject: Re: is 'dynamic-power-coefficient' expected to be based on 'real'
 power measurements?
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        Amit Daniel Kachhap <amit.kachhap@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Javi Merino <javi.merino@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 14, 2020 at 10:44 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> Hi Rob,
>
> There has been some discussions on another thread [1] around the DPC (dynamic-power-coefficient) values
> for CPU's being relative vs absolute (based on real power) and should they be used to derive 'real' power
> at various OPPs in order to calculate things like 'sustainable-power' for thermal zones.
> I believe relative values work perfectly fine for scheduling decisions, but with others using this for
> calculating power values in mW, is there a need to document the property as something that *has* to be
> based on real power measurements?
>
> Looking at the bindings,
>
>    dynamic-power-coefficient:
>      $ref: '/schemas/types.yaml#/definitions/uint32'
>      description:
>        A u32 value that represents the running time dynamic
>        power coefficient in units of uW/MHz/V^2. The
>        coefficient can either be calculated from power
>        measurements or derived by analysis.
>
>        The dynamic power consumption of the CPU  is
>        proportional to the square of the Voltage (V) and
>        the clock frequency (f). The coefficient is used to
>        calculate the dynamic power as below -
>
>        Pdyn = dynamic-power-coefficient * V^2 * f
>
>        where voltage is in V, frequency is in MHz.
>
> .. the 'can either be calculated from power measurements or derived by analysis'
> tells me we don't mandate that this be based on real power measurements.
> If we do, then perhaps that needs to be mentioned explicitly?

To me, the phrase "derived by analysis" doesn't mean that the number
is allowed to be in completely made up units.  It means it's still
supposed to be in the same units but it's OK if you didn't integrate a
Coulomb counter into your system.

It's kinda like saying that the police can give you a speeding ticket
by either measuring your speed with a radar gun or by checking a clock
when your car passed two known places and calculating your speed based
on that.  The radar gun is a direct measurement whereas the other is
derived by analysis.  In both cases you're still talking about a speed
in terms of Miles per Hour (or kilometers per hour in more sane
countries).

-Doug
