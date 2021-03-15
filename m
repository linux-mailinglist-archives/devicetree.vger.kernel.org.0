Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C09A833C8CA
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 22:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233722AbhCOVty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 17:49:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233841AbhCOVtb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 17:49:31 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E2EBC06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:31 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id l4so33304822qkl.0
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CFeSJS/MRHlKtItdRjinPI+VLJU1JVPOY38JbLtHXag=;
        b=oEtzhfheH12wp/ca7p21OEaxExfRoiHNdT6o/p3p23Ws/jJ3D1GK7+kCr/hbGBXR50
         Dy1yFg8C/fDxgdwaA+veTFn++A32/JJ+rfknledpTJxlE7LaSQpzot0JTIkn5p0ovbfO
         1bNq3gCpOr+5/q+VZuq/wp3Yzs9uHRYCvzFog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CFeSJS/MRHlKtItdRjinPI+VLJU1JVPOY38JbLtHXag=;
        b=b3qnjrVAJG5PIY96wR9r19rcs562TWwkad2o5OFZJkQnsOqzGXzlo+HX4B5L0ftt3p
         UGL9eCPWWcSp5nbluNMuXriemskIZP0+YNYKP6++GSE9zgAnllo3QGzETkTSc8oQbFp5
         /ebQ8OOcSpZu18w0QX6OFFESh3SaJmq/Z/WsdEFLJRQe9ByJ6gCE5cMsgRcOshuWRoqw
         iP1LsJkwm2huOYzufecwGnyM6dx8Q4yYbokDx2RClz9cTJEXwaZbN5eCbuW5zhpRTAts
         Ne6KdcL1Po7oVbAyHsV15A99BhBaaib3dlkX8BcFypPnuTbBnhIf2vWgb04ksXMgVvvf
         xiOA==
X-Gm-Message-State: AOAM5330NIGi6inDAkiYU7XyTIVcUI1BFIDvWFRqjT/JKPSuvUdENG5z
        zxx6/eoJOCML7n9ESSHfI7QXA3CTrehGfg==
X-Google-Smtp-Source: ABdhPJyxvp4LBjwYXjY2BC1KT8TqOc8zB3BtM+BsUYupewr583uWfjCO7mLyzHecQglA/ZyXmsoUvQ==
X-Received: by 2002:a05:620a:15d:: with SMTP id e29mr27874487qkn.48.1615844969551;
        Mon, 15 Mar 2021 14:49:29 -0700 (PDT)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id w78sm13609235qkb.11.2021.03.15.14.49.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 14:49:20 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id h82so34684605ybc.13
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 14:49:16 -0700 (PDT)
X-Received: by 2002:a25:cf88:: with SMTP id f130mr2592963ybg.476.1615844956124;
 Mon, 15 Mar 2021 14:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210312183228.550779-1-mka@chromium.org> <20210312103211.v2.3.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
In-Reply-To: <20210312103211.v2.3.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 15 Mar 2021 14:49:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xq4bd8j3_to_9rJmyqWTi-78OWVCd0meaJ9e_pmOH+Rg@mail.gmail.com>
Message-ID: <CAD=FV=Xq4bd8j3_to_9rJmyqWTi-78OWVCd0meaJ9e_pmOH+Rg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc7180: Add CoachZ rev3
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 12, 2021 at 10:32 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> CoachZ rev3 uses a 100k NTC thermistor for the charger temperatures,
> instead of the 47k NTC that is stuffed in earlier revisions. Add .dts
> files for rev3.
>
> The 47k NTC currently isn't supported by the PM6150 ADC driver.
> Disable the charger thermal zone for rev1 and rev2 to avoid the use
> of bogus temperature values.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v2:
> - added CoachZ rev3
> - updated subject and commit message
>
>  arch/arm64/boot/dts/qcom/Makefile              |  2 ++
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r1.dts |  9 +++++++++
>  .../dts/qcom/sc7180-trogdor-coachz-r2-lte.dts  |  4 ++--
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r2.dts | 13 +++++++++++--
>  .../dts/qcom/sc7180-trogdor-coachz-r3-lte.dts  | 18 ++++++++++++++++++
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r3.dts | 15 +++++++++++++++
>  6 files changed, 57 insertions(+), 4 deletions(-)

So what you have here is good and we could land it. Feel free to add
my Reviewed-by tag if you want.

...but I want to propose an alternative. It turns out that these days
coachz-r1 and coachz-r2 are actually the same. The only reason both
exist is because <https://crrev.com/c/2733863> ("CHROMIUM: arm64: dts:
qcom: sc7180: add dmic_clk_en back") wasn't the proper inverse of
<https://crrev.com/c/2596726> ("CHROMIUM: arm64: dts: qcom: sc7180:
remove dmic_clk_en").

It sorta squashes two changes into one, but if you combined your
change with one that folded "-r1" into "-r2" it would actually make a
smaller / easier to understand change, essentially, it would be:
- just a rename of the "-r2" file to be "-r3"
- add "-rev2" into the list of compatibles in "-r1" file.
- add the "disable" into the "-r1" file.

Anyway, I'll leave it up to you.


-Doug
