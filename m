Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6366B4A9044
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:53:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231376AbiBCVx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:53:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233662AbiBCVxY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:53:24 -0500
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C53FCC06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:53:24 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id s1so3271012ilj.7
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yw/OE+yoqHrGWOsbX30hBDztNYfmuxeKhNyJ4ntdaxg=;
        b=Izi40afZ8OYZSbUSIHRmbNMv2qVTLhFfyqW43yk7xNplNKSKPf5mt2HhkphhkdWcLg
         0ISLToWpdFUEATXPX/rGkJFhnCroXZUPHfEQL0mjnlv0jTPO+QOGix+uF/hpreTdH7ht
         tFQFqJBjk0gHE2hEZ4b1INseWuqrj3T8HxMXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yw/OE+yoqHrGWOsbX30hBDztNYfmuxeKhNyJ4ntdaxg=;
        b=HbYNCX9jzaKqkTVhCpiE15HOmHQ1Qm7C8IpFPaD90vs625yhZPcunoa5mdNL+jpNl9
         EZSn3E/PKQgwaTLAtlLOEZ0yD5aKqpLQWDPRAvm0/8Mv+J4iiUJJcxeFpVWDXD17NR/T
         YfOhf3boZTootvMY5sLIkf0NaDGQNW+W7Rhk10OCdFc3hIYTllYjiLDYCrMp5xgA+8l6
         teYLWbOPh5v9FC15bAVk9YZkouPBVdwOWToN4ppcHagWGaJRe3XCqagOWPaxjLRWm4D7
         ZFSwP77wmxfwuuu+U5D9/bvz3MUbu+BxzHGtx/dwE8Zy5h3ItMMIsqhngUu09/12vQ7F
         cSNA==
X-Gm-Message-State: AOAM5334SxwAD6gYNV7xjqAOTDAm/j4LwAid6COBvF3/9IkMlbdzpmJs
        K1Xa/ML5M80JHHhwg8pgQDMVtvJl6ZOZmw==
X-Google-Smtp-Source: ABdhPJwZGErqOZi3ay9grexNnXTR/9L2Nb/H0aC8xIA6holSz48YDGVfSCr9zztal8lTbC1shp58Pg==
X-Received: by 2002:a92:c569:: with SMTP id b9mr44613ilj.140.1643925204000;
        Thu, 03 Feb 2022 13:53:24 -0800 (PST)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id b5sm48833iln.54.2022.02.03.13.53.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 13:53:22 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id w5so3295512ilo.2
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:53:22 -0800 (PST)
X-Received: by 2002:a05:6e02:1bed:: with SMTP id y13mr38117ilv.27.1643925201892;
 Thu, 03 Feb 2022 13:53:21 -0800 (PST)
MIME-Version: 1.0
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.9.I5f367dcce8107f2186b2aad4aef0dfcfafa034b9@changeid> <CAE-0n51N4wB7aTRbZR3zh3hjz56vdkFNwOSuKjU7n9gd_JDcvA@mail.gmail.com>
In-Reply-To: <CAE-0n51N4wB7aTRbZR3zh3hjz56vdkFNwOSuKjU7n9gd_JDcvA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Feb 2022 13:53:09 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UKKZaHHz3-idahLg-ey3xmSZWKeTVVipzpZNQAkUVKmQ@mail.gmail.com>
Message-ID: <CAD=FV=UKKZaHHz3-idahLg-ey3xmSZWKeTVVipzpZNQAkUVKmQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/14] arm64: dts: qcom: sc7280: Disable pull from pcie1_clkreq
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>, quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        Sibi Sankar <sibis@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Feb 3, 2022 at 1:42 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Douglas Anderson (2022-02-02 13:23:43)
> > I believe that the PCIe clkreq pin is an output. That means we
> > shouldn't have a pull enabled for it. Turn it off.
>
> It sounds like it's a request from the PCI device to the PCI phy that
> the clk should be on. I googled pcie clkreq open drain and this pdf[1]
> says
>
> "The CLKREQ# signal is an open drain, active low signal that is driven
> low by the PCI Express M.2 add-I Card function to request that the PCI
> Express reference clock be available (active clock state) in order to
> allow the PCI Express interface to send/receive data"
>
> so presumably if there isn't an external pull on the signal the open
> drain feature will not work and the PCIe device won't be able to drive
> it low.
>
> [1] https://advdownload.advantech.com/productfile/PIS/96FD80-P512-LIS/Product%20-%20Datasheet/96FD80-P512-LIS_datasheet20180110154919.pdf

Yeah, I had some trouble figuring this out too, so if someone knows
better than me then I'm more than happy to take advice here. I thought
I had found something claiming that "clkreq" was an output and on the
schematic I have from Qualcomm it shows an arrow going out from the
SoC for this signal indicating that it's an output from the SoC. Of
course, those arrows are notoriously wrong but at least it's one piece
of evidence that someone thought this was an output from the SoC.

Hrm, but I just checked the sc7280 "datasheet" which claims that this
is an input. Sigh.

I guess the options are:
* If we're sure this is an input to the SoC then I think we should
remove the drive-strength, right?
* If we don't know then I guess we can leave both?


In any case, for now we can just drop this patch?

-Doug
