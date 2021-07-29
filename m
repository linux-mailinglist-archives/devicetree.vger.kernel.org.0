Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0BE3DAB8E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 21:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231475AbhG2TCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 15:02:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbhG2TCS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 15:02:18 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B3ACC061765
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 12:02:15 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 21so9751446oin.8
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 12:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Su69e0VwCDTVXaZGqAhM3F7LtZETVHlakvlYKvoZayM=;
        b=SebcM8G3BBQpdbYfLQP0sdWaVQX0nFTrotqhmuGnCKbjKWaSNqupvYNVRfuM7GhE5z
         LbpWNsB4ztjfjw6ymIQKoHysAEYtFeGSFdsbJ5mQSqQzMdhlctZh2XtEA5M99LcG/f3b
         lMmA1rH5F2+pMRgkFSwb5QYY8Dh708WIynYSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Su69e0VwCDTVXaZGqAhM3F7LtZETVHlakvlYKvoZayM=;
        b=S35LV5Pj8XUUHWgFvANUUKi8nUb/c8es73+PmsQ49QdPsKBtmetMBpiTOcs9n9QXxw
         vv+wrk9y6ILig/YgG8K5J5itGjFnpewt6KQ23Bvp0fRATfC+xnMP3kpQkPCtnBmn5GF1
         8H/KDiIAAULRXqFuY6IXiSLas7dlwMJrAV9GWRHksoOdBQJZOhz28RCFdAq2HnztBN3e
         hEdiHQuH5HthUhcBB1hGIdHG6Cex02sfcLHSVwZwgF5VcuPC1ud+EL+nmzm7jdSu4lou
         XaG3P/GFznpmLQ44p7K9djid8IWvyI1ItIY3Uv8YuDMHkPXeLGmf1R0eRcHZlWoEAbxN
         XuRw==
X-Gm-Message-State: AOAM53230IM1rc2dOy75YFQqFmysn+/FDdXMnh9x4HSaU4I2PEx3QdqI
        9M57IAPO4UpWQ+nn9gWArg39uY21MiewKhvEF0l2Aw==
X-Google-Smtp-Source: ABdhPJz7dbzotSQmyoBhO3gVd5uNSdiIKcidtDyg1R8EG+Y9ws7CEIXpDqoO0HYTgqDy8Fs8af2iAnOgsNNuQTnmwHI=
X-Received: by 2002:a54:468d:: with SMTP id k13mr11054293oic.125.1627585334851;
 Thu, 29 Jul 2021 12:02:14 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 29 Jul 2021 12:02:14 -0700
MIME-Version: 1.0
In-Reply-To: <308d8f1e-9f23-9d78-42cc-a42ce3463027@codeaurora.org>
References: <1627147740-11590-1-git-send-email-akhilpo@codeaurora.org>
 <CAE-0n52mEy1GReYwcVrffT2KOy4EHMHH-RyCJ_mmxhaeXwGdYA@mail.gmail.com>
 <e1a28bed-a2a9-2bf2-d0f0-3f608a538f69@codeaurora.org> <CAE-0n50-1eN3wwDukJi0JoTxCKnYx8NT1Ap2r0WDftQ621iBqQ@mail.gmail.com>
 <308d8f1e-9f23-9d78-42cc-a42ce3463027@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 29 Jul 2021 12:02:14 -0700
Message-ID: <CAE-0n5211NZx43Q0UwHJATYYV7zXPH3WWx66808rEmOgSBDQyg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add gpu support
To:     Akhil P Oommen <akhilpo@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm@vger.kernel.org
Cc:     Jonathan Marek <jonathan@marek.ca>, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Andy Gross <agross@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Akhil P Oommen (2021-07-29 11:57:23)
> On 7/29/2021 10:46 PM, Stephen Boyd wrote:
> > Quoting Akhil P Oommen (2021-07-28 00:17:45)
> >> On 7/27/2021 5:46 AM, Stephen Boyd wrote:
> >>> Quoting Akhil P Oommen (2021-07-24 10:29:00)
> >>>> Add the necessary dt nodes for gpu support in sc7280.
> >>>>
> >>>> Signed-off-by: Akhil P Oommen <akhilpo@codeaurora.org>
> >>>> ---
> >>>> This patch has dependency on the GPUCC bindings patch here:
> >>>> https://patchwork.kernel.org/project/linux-arm-msm/patch/1619519590-3019-4-git-send-email-tdas@codeaurora.org/
> >>>
> >>> To avoid the dependency the plain numbers can be used.
> >>
> >> But, won't that reduce readability and make things prone to error?
> >
> > The numbers are not supposed to change so maybe it reduces readability
> > but I don't see how it is prone to error.
>
> I cross check GPU's clock list whenever there is a system level issue
> like NoC errors. So it is convenient to have the clock names here, at
> least for me. But, I will budge if it is not easy to manage the dependency.

To clarify my statement, the defines can be used eventually once the
header file is part of the same tree. A duplicate patch between clk and
qcom trees is fine or pulling in the clk branch works too.

>
> >
> >> If
> >> the other patch doesn't get picked up soon, we should try this option.
> >> We like to get this patch merged in v5.15.
> >
> > The clk binding is already picked up but Bjorn would need to merge it
> > into the qcom tree to use it. I don't know what the plan is there.
> >
>
> Bjorn, could you please advise here?
>
> -Akhil.
