Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D188A119244
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2019 21:41:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726100AbfLJUlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Dec 2019 15:41:20 -0500
Received: from mail-io1-f68.google.com ([209.85.166.68]:42766 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726187AbfLJUlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Dec 2019 15:41:20 -0500
Received: by mail-io1-f68.google.com with SMTP id f82so20265238ioa.9
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2019 12:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wFg8ZEWJIN7vey53mkr4mIFmYCyQyvthzeZbaGJwPkw=;
        b=a6cnK+73982+3Kq5xHFk7AV6S2kIJzbXAeQjdiuU/quDeRHtvjScGn9NdiBzAl+ehr
         YObqKIw+0lJPMEvJ2S4WKhnhjyPdQmeaAfUXnzZrpkSItd5rvp+KOq19FUd9FR3Xc07s
         PSqfT0D1aQ/Apqo1M8znUmPBZWMMbjplC9MMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wFg8ZEWJIN7vey53mkr4mIFmYCyQyvthzeZbaGJwPkw=;
        b=TZA6FMFQLMz1GCAlDfUDG11gvXcyvIXRrbEhJH9FBnVNyuYEAcug1L4nH8iotHnng6
         f3Vl3Ej+1EvTCWltVETzFXw7kywWMy9DlB3DUsaTq6HdRSywahwMKfmPmbJtbPcCc6SJ
         7gZkYAzd0Y+qp3U5s+pNi6Vq67jesmra80X7M3Q/nRm3bzLEdleP1pxEQXkMwm9mdOzn
         Yne0lyGcWuuG9/o6APZI2bADEO3K7IzM7EICvsBzMcBMRK52ttVMekj0moEIsKW+5JaQ
         0tNLB02QmIJqd0TVoGWFOW4eu8hnS7EnuaqbfU1rhTCzthlMS8IKLe8vP9qQvqULuOY6
         A6Zg==
X-Gm-Message-State: APjAAAWbWJsD4CY6PUoQ+5lhom0w/MSViQVXBIYRAMG7Q2zzmRle/LKx
        X34wl/J/QXiv7RhDWjFzyneVVsc71Xc=
X-Google-Smtp-Source: APXvYqyAGkhy+Dtq3ExUyqrN5iFK6hPD76Y/BpVkxvbp+VjGcTjPLxgPGYSEpxYs4+lkFiV+b2pblw==
X-Received: by 2002:a02:742:: with SMTP id f63mr34595036jaf.138.1576010479495;
        Tue, 10 Dec 2019 12:41:19 -0800 (PST)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id v21sm945072ios.69.2019.12.10.12.41.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 12:41:17 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id s2so20252543iog.10
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2019 12:41:17 -0800 (PST)
X-Received: by 2002:a6b:be84:: with SMTP id o126mr25960550iof.269.1576010477101;
 Tue, 10 Dec 2019 12:41:17 -0800 (PST)
MIME-Version: 1.0
References: <20191108092824.9773-1-rnayak@codeaurora.org> <20191108092824.9773-14-rnayak@codeaurora.org>
 <CAD=FV=VUoj1egZqw9koNHDPBCCEh_XZ5nZAPNKcnya2UACG8hw@mail.gmail.com> <0101016eef5f3e37-2ab48ced-3543-4680-82f8-2c1950b012cd-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016eef5f3e37-2ab48ced-3543-4680-82f8-2c1950b012cd-000000@us-west-2.amazonses.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 10 Dec 2019 12:41:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UgqcO0zELnopP9DXSqc-AZpJVwT24CDxrt_P39eWK9Lg@mail.gmail.com>
Message-ID: <CAD=FV=UgqcO0zELnopP9DXSqc-AZpJVwT24CDxrt_P39eWK9Lg@mail.gmail.com>
Subject: Re: [PATCH v5 13/13] arm64: dts: sc7180: Add qupv3_0 and qupv3_1
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Dec 10, 2019 at 2:33 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> On 12/6/2019 5:55 PM, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Nov 8, 2019 at 5:29 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
> >>
> >> From: Roja Rani Yarubandi <rojay@codeaurora.org>
> >>
> >> Add QUP SE instances configuration for sc7180.
> >>
> >> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> >> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> >> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sc7180-idp.dts | 146 +++++
> >>   arch/arm64/boot/dts/qcom/sc7180.dtsi    | 675 ++++++++++++++++++++++++
> >>   2 files changed, 821 insertions(+)
> >
> > Comments below could be done in a follow-up patch if it makes more sense.

Just to note: looks like your patch is now landed in the Qualcomm
maintainer tree, so I'll look for the fixes in a follow-up patch.  :-)

-Doug
