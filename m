Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96D58232477
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 20:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727091AbgG2SLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 14:11:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726901AbgG2SK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 14:10:59 -0400
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com [IPv6:2607:f8b0:4864:20::943])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91BC5C061794
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 11:10:59 -0700 (PDT)
Received: by mail-ua1-x943.google.com with SMTP id g20so3480160uan.7
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 11:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uCoModElWAnbMRvPO3YU9XQVQgftZ0hKK53c1cAKSbs=;
        b=QIBt/1ooWx13u1wuOLTIXdWssccajDzsKyxD32hHiHwZrVsqw/Iw9vLsv8+Z8E4gEy
         iEiguY8ka10wGb70eyABHcDiVLisSk0H3fV6NvNFulhN68llC5a9dvZPNtFPxwp3L5Ad
         AC9vJlcYBsOaBTsD4WtfRj2yMEjviNinT33WI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uCoModElWAnbMRvPO3YU9XQVQgftZ0hKK53c1cAKSbs=;
        b=p+NG2TjEMJKP6mPSWxQBSPJrAiaZAOk7YR/d9REG6NdCJWv1xlkGjSBFin/AIYX3cR
         zOucaM02JKzZQPUfLhHQdhaptmJ4WBnER1stATaYrrl6CP1PKVDUwDLdT2bR5wLiEKQC
         gKSF/51zRDvOXUmIeM+3ZJP2RWuVxqRBXVxFzhEs8n17BE4zD3gYO07x0tDhdyRBL4tQ
         6cnjjF0ktr/swSd+ebZEm1aczmTldNzi3E+jGwoeAibwvY6WUqWe7vISiDq2vZNtk4r0
         kcTdV9xjACjijYOePzXj8m/lJ/hD1jpNzXf/4kaIXMfSNEXxzfqCBxSBcgtT995Ruvrf
         xCIg==
X-Gm-Message-State: AOAM532t4PozEIX+m+g69TfGHymRaEDJUv4bPA/rdXxa/7njnyq/Bu3Q
        YMxe30u8btaeyLU8v5isan/VtSn1sHQ=
X-Google-Smtp-Source: ABdhPJz5jhFHP/JWruA+Day4v8CxqWK9dMO8MNCGgzE40VRhj2CUFh3vfbjGLHGQKB/TZ4tRcRIfRg==
X-Received: by 2002:ab0:6787:: with SMTP id v7mr2080964uar.11.1596046258107;
        Wed, 29 Jul 2020 11:10:58 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id k12sm325555vsb.10.2020.07.29.11.10.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 11:10:56 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id q85so5586936vke.4
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 11:10:56 -0700 (PDT)
X-Received: by 2002:a1f:9f17:: with SMTP id i23mr23539610vke.65.1596046256240;
 Wed, 29 Jul 2020 11:10:56 -0700 (PDT)
MIME-Version: 1.0
References: <1595503612-2901-1-git-send-email-rnayak@codeaurora.org>
 <1595503612-2901-5-git-send-email-rnayak@codeaurora.org> <e68ff810-362a-5b99-206b-f676b204101d@linaro.org>
 <654e0fcb-ae4d-c151-fa8a-4d029fc823fb@codeaurora.org> <20200724162825.GH9185@codeaurora.org>
 <159589714088.1360974.13205114501389777927@swboyd.mtv.corp.google.com>
 <20200728165212.GA32586@codeaurora.org> <159596590401.1360974.283437162250734878@swboyd.mtv.corp.google.com>
 <20200728201133.GB32586@codeaurora.org>
In-Reply-To: <20200728201133.GB32586@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 29 Jul 2020 11:10:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XB8jqq+WGHL4czvZ96kPMpAB5wkkN9tx4++o=a2i4DXQ@mail.gmail.com>
Message-ID: <CAD=FV=XB8jqq+WGHL4czvZ96kPMpAB5wkkN9tx4++o=a2i4DXQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] arm64: dts: sdm845: Add OPP tables and
 power-domains for venus
To:     Lina Iyer <ilina@codeaurora.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Maulik Shah <mkshah@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 28, 2020 at 1:11 PM Lina Iyer <ilina@codeaurora.org> wrote:
>
> On Tue, Jul 28 2020 at 13:51 -0600, Stephen Boyd wrote:
> >Quoting Lina Iyer (2020-07-28 09:52:12)
> >> On Mon, Jul 27 2020 at 18:45 -0600, Stephen Boyd wrote:
> >> >Quoting Lina Iyer (2020-07-24 09:28:25)
> >> >> On Fri, Jul 24 2020 at 03:03 -0600, Rajendra Nayak wrote:
> >> >> >Hi Maulik/Lina,
> >> >> >
> >> >> >On 7/23/2020 11:36 PM, Stanimir Varbanov wrote:
> >> >> >>Hi Rajendra,
> >> >> >>
> >> >> >>After applying 2,3 and 4/5 patches on linaro-integration v5.8-rc2 I see
> >> >> >>below messages on db845:
> >> >> >>
> >> >> >>qcom-venus aa00000.video-codec: dev_pm_opp_set_rate: failed to find
> >> >> >>current OPP for freq 533000097 (-34)
> >> >> >>
> >> >> >>^^^ This one is new.
> >> >> >>
> >> >> >>qcom_rpmh TCS Busy, retrying RPMH message send: addr=0x30000
> >> >> >>
> >> >> >>^^^ and this message is annoying, can we make it pr_debug in rpmh?
> >> >> >
> >> >> How annoyingly often do you see this message?
> >> >> Usually, this is an indication of bad system state either on remote
> >> >> processors in the SoC or in Linux itself. On a smooth sailing build you
> >> >> should not see this 'warning'.
> >> >>
> >> >> >Would you be fine with moving this message to a pr_debug? Its currently
> >> >> >a pr_info_ratelimited()
> >> >> I would rather not, moving this out of sight will mask a lot serious
> >> >> issues that otherwise bring attention to the developers.
> >> >>
> >> >
> >> >I removed this warning message in my patch posted to the list[1]. If
> >> >it's a serious problem then I suppose a timeout is more appropriate, on
> >> >the order of several seconds or so and then a pr_warn() and bail out of
> >> >the async call with an error.
> >> >
> >> The warning used to capture issues that happen within a second and it
> >> helps capture system related issues. Timing out after many seconds
> >> overlooks the system issues that generally tend to resolve itself, but
> >> nevertheless need to be investigated.
> >>
> >
> >Is it correct to read "system related issues" as performance problems
> >where the thread is spinning forever trying to send a message and it
> >can't? So the problem is mostly that it's an unbounded amount of time
> >before the message is sent to rpmh and this printk helps identify those
> >situations where that is happening?
> >
> Yes, but mostly a short period of time like when other processors are in
> the middle of a restart or resource states changes have taken unusual
> amounts of time. The system will generally recover from this without
> crashing in this case. User action is investigation of the situation
> leading to these messages.

While I do agree that seeing the "TCS Busy, retrying RPMH message
send" message printed a lot was usually a sign that something was
wrong in the system (possibly someone was spamming RPMh when they
shouldn't be), it still feels like we need to remove it.
Specifically, the prints would also sometimes come up in normal usage
and always sounded a bit scary.  These types of prints always confuse
people and lead to log pollution where it's super hard to figure out
which of the various things in a log are "expected" and which ones are
relevant to whatever issue you're debugging.

Presumably we could either change that from a "info" level to "dbg"
level.  ...or we could find some other thing to check for that's a
better signal of problems.


> >Otherwise as you say above it's a bad system state where the rpmh
> >processor has gotten into a bad state like a crash? Can we recover from
> >that? Or is the only recovery a reboot of the system? Does the rpmh
> >processor reboot the system if it crashes?
> We cannot recover from such a state. The remote processor will reboot if
> it detects a failure at it's end. If the system entered a bad state, it
> is possible that RPMH requests start timing out in Linux and remote
> processor may not detect it. Hence, the timeout in rpmh_write() API. The
> advised course of action is a restart as there is no way to recover from
> this state.
>
> --Lina
>
>
