Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 676AC263873
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 23:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726440AbgIIV2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 17:28:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726414AbgIIV2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 17:28:17 -0400
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF1CC061755
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 14:28:17 -0700 (PDT)
Received: by mail-vs1-xe44.google.com with SMTP id b16so2224245vsl.6
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 14:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0B+f5EUKKQ2J3MpI4Sx58UmBuViiwCjCr/4VdaizHMc=;
        b=Od/BNOuqJin26VSVXto0zQ70I2i+1D5m+tF7dZbpoRgrpYD5zTa7oruoZe3TuKSCLz
         +aUkSlno/mybqvqL8n+NfX4gMH32Ehppe6USW20WWON0ETf3fGPnshIcG2KWRKNTuoUs
         cF19615mLBHP7cf55krv2gokojiDSN22luOIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0B+f5EUKKQ2J3MpI4Sx58UmBuViiwCjCr/4VdaizHMc=;
        b=OV1G3kqQOSw2uH1Q1r4eXUXo4Ka3LoXitThmDon+GPqIPq/FtiscYv1aowVRv/xhAc
         CpgNKuy8PxyaLfsbbHp2fxBaqZ5B4Hcb7enpNHePlQPFQK9bba5hPipJcEL4yQhSV0h0
         c0UZWv9wFHdtLL1FRP+kMf612pit0/WTZEpUEFk3vBqnqLKVlJOFicwDx7PGz/byjjoh
         BmSXUcrcb1CONeqXFRXqhYK3eMK7C66dUnQr5kz/d6ygtaLVag4ATFG1mQVCd+gZ3SG+
         hk8wnFk10pWh6HVHH+itXlYTvg6+HTwDKxWcagxAT+aWtAePOefAzS4pTuOqzJ2HG/KB
         OTfg==
X-Gm-Message-State: AOAM533v0hGfeKw1yyfzmbvfMXnOa7P4JFZPbsPWVR7hTtA8THCz2/cc
        RnhnDbrcphyw0G/0P44EtiAFL3GZEvzbxg==
X-Google-Smtp-Source: ABdhPJxDU1ezZolkS02PFMxqWv+dYTzFhZLsVjrubqKL1vJJvIWWGLEV18fJBurCFVx8yUAORqzO8w==
X-Received: by 2002:a67:328b:: with SMTP id y133mr2229861vsy.10.1599686895673;
        Wed, 09 Sep 2020 14:28:15 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id m186sm433893vkm.39.2020.09.09.14.28.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 14:28:14 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id v20so1334368ual.4
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 14:28:14 -0700 (PDT)
X-Received: by 2002:ab0:1584:: with SMTP id i4mr1985606uae.64.1599686893792;
 Wed, 09 Sep 2020 14:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <1599145498-20707-1-git-send-email-skakit@codeaurora.org> <1599145498-20707-3-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1599145498-20707-3-git-send-email-skakit@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 9 Sep 2020 14:28:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XZgmQXCzVx3CdeOkAWC6zz8bNW+f6Qt1=O9ZSaGUr75g@mail.gmail.com>
Message-ID: <CAD=FV=XZgmQXCzVx3CdeOkAWC6zz8bNW+f6Qt1=O9ZSaGUr75g@mail.gmail.com>
Subject: Re: [PATCH V4 2/4] arm64: dts: qcom: sc7180: Improve the pin config
 settings for CTS and TX
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        msavaliy@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 3, 2020 at 8:07 AM satya priya <skakit@codeaurora.org> wrote:
>
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -474,32 +474,30 @@
>  &qup_uart3_default {
>         pinconf-cts {
>                 /*
> -                * Configure a pull-down on 38 (CTS) to match the pull of
> -                * the Bluetooth module.
> +                * Configure no-pull on CTS. As this is driven by BT, do not
> +                * specify any pull in order to not conflict with BT pulls.
>                  */
>                 pins = "gpio38";
> -               bias-pull-down;
> -               output-high;

Weird, how did that output-high sneak in there?  Glad it's going away.


> +               bias-disable;

I'm not convinced that the removal of the pul is the correct thing
here.  Specifically for the rx line the comment makes the argument
that if we power off the Bluetooth module then it will stop driving
this pin.  In that case if we remove the pull here then the line will
be floating and that can cause some extra power consumption as the
line floats between different logic levels.  Do you really need to
remove this pull?

Same comment for the next patch where you add the sleep settings.


-Doug
