Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E53734D2EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 16:57:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhC2O5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 10:57:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231270AbhC2O5F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 10:57:05 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C469C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 07:57:05 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id w8so14083144ybt.3
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 07:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kKi8HN+bpgIonbipayQY6bUaqDWQRM56PWjQCa1XcVc=;
        b=QHeXTIE0ojKJtQ0VDW1civaMMSYxCTYIxgjq32eR6dbldNbJ7h34t8c01oC8YDfRcV
         +VfX7+582QTTxV7FU2T+0vinC8y9SAnTAPI2oyf4H2fJoytHlIUn/HU1KebfH/VjGAOA
         gUDS5T0FIs1S8Hyvg6Iw76337LbQmKY4tI39R/AtDZoGCVkZy+8FqZDzE0eArbRy39Ua
         DPUVqWL1FDXXwDvhxpJZ8HpSprI9KioF7qtuh+GGsZ09Gst3MBl6CyJigBzZRWpk4aF7
         /ExD1o3GqUcKDji/hVdsgRgXcEjq/aY3FAb/1WNU6JDHKh4f6xlC3SviRJ/gTj51od+O
         juqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kKi8HN+bpgIonbipayQY6bUaqDWQRM56PWjQCa1XcVc=;
        b=nhdHpIeLOvPzDFygbvnc/DynGT3Z3FPj3qQcnlx1llaBfnKMPwbg0UxZk3U+4X7kRP
         6hiUhEdnx+PU/js+YSq5QL/mw1WGAUpCbrpx2TsXWweZ6A5bj72LA21linn14NtC4wsW
         prqNSXuLctvL5G73Wkrq4gbjr02zcKZm8dWk3+eTeDnG+gqCP3AirWisnMvIJov128X3
         Q7Sgww4uKOegmxHeFS911hoGFJLB0M2Sak55E/hS3yHFqo3Xx47FJ+yoJwzAfa7VLhWV
         AAOo/hKooct1RQbyQ258jxCP6ydJAb0Q3EpM3d/D5D2QONOSJyBmaUSIvLPqHw1eS06r
         RRmQ==
X-Gm-Message-State: AOAM532tCUuFj7N5DCsOkTg2WKTmAbkC7K2Ny/+nU88S1NVE7x/Kiqcb
        mUnuEZyPT0mJ9PM81AdDt0YzYV3raoOl71TNj/eaVg==
X-Google-Smtp-Source: ABdhPJzu5ULT+omARvahbH1jKInTaaNAdmdNq4fRz3u1JYVIeDwdMailkmG8CbM4ZA/xaEU/YPrnxVrzakIRb4bNgp0=
X-Received: by 2002:a25:69c1:: with SMTP id e184mr38733388ybc.345.1617029823530;
 Mon, 29 Mar 2021 07:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <1616264220-25825-1-git-send-email-sbhanu@codeaurora.org>
 <CAD=FV=WLZCSd6D5VFyD+1KBp5n1qyszER2EVaEMwYjQfPSSDnA@mail.gmail.com>
 <b77f207b-2d90-3c8b-857f-625bd3867ed1@codeaurora.org> <6fdf704c4716f5873d413229ca8adc57@codeaurora.org>
In-Reply-To: <6fdf704c4716f5873d413229ca8adc57@codeaurora.org>
From:   Doug Anderson <dianders@google.com>
Date:   Mon, 29 Mar 2021 07:56:52 -0700
Message-ID: <CAD=FV=Wa4fT5wZgd0==8kLy_tzTLgdZ-HwdfOEAM9pMeMjjFyg@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: qcom: sc7280: Add nodes for eMMC and SD card
To:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>
Cc:     Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Asutosh Das <asutoshd@codeaurora.org>,
        Sahitya Tummala <stummala@codeaurora.org>,
        Ram Prakash Gupta <rampraka@codeaurora.org>,
        Sayali Lokhande <sayalil@codeaurora.org>,
        sartgarg@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>, cang@codeaurora.org,
        pragalla@codeaurora.org, nitirawa@codeaurora.org,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 25, 2021 at 11:57 PM <sbhanu@codeaurora.org> wrote:
>
> >>> +                       max-frequency = <192000000>;
> >> Why do you need to specify this?
> This helps to avoid lower speed modes running in high clock rate,
> and As Veerabhadrarao Badiganti mentioned

Just to be clear, both Stephen and I agree that you should remove
"max-frequency" here (see previous discussion). Bjorn is, of course,
the file decision maker. However, unless he says "yeah, totally keep
it in" I'd suggest dropping it from the next version.


> >>> +                                       required-opps =
> >>> <&rpmhpd_opp_low_svs>;
> >>> +                                       opp-peak-kBps = <1200000
> >>> 76000>;
> >>> +                                       opp-avg-kBps = <1200000
> >>> 50000>;
> >> Why are the kBps numbers so vastly different than the ones on sc7180
> >> for the same OPP point. That implies:
> >>
> >> a) sc7180 is wrong.
> >>
> >> b) This patch is wrong.
> >>
> >> c) The numbers are essentially random and don't really matter.
> >>
> >> Can you identify which of a), b), or c) is correct, or propose an
> >> alternate explanation of the difference?
> >>
>
> We calculated bus votes values for both sc7180 and sc7280 with ICB tool,
> above mentioned values we got for sc7280.

I don't know what an ICB tool is. Please clarify.

Also: just because a tool spits out numbers that doesn't mean it's
correct. Presumably the tool could be wrong or incorrectly configured.
We need to understand why these numbers are different.

-Doug
