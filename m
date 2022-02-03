Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59DA94A8FE1
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:28:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355025AbiBCV2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:28:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232038AbiBCV2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:28:02 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B974CC06173D
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:28:02 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id x193so6280676oix.0
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=6VplieGMJAR9UNduIPc0+Hmk4xJP3Y1QDTbjYLcBmE8=;
        b=C3cZahKkdjZzC2AhHhwwKQNR1OVsiw4vU8GHVmm59kXb7HIsQ1/v9bY3Mtlps8XMXH
         XWV2aexgvt2i5tbbGQWxI07NXbsWXybbLu6DEDqBdtLAlOVU5KaeTiMscJfb1xCWfRkF
         2e4LUcdbEptCWXlNBe0GOm3sG1Q4kmwo4+SkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=6VplieGMJAR9UNduIPc0+Hmk4xJP3Y1QDTbjYLcBmE8=;
        b=Fp+3K5MEsYoT2ZuadbkpQglc1E1HjZ3FcEawzbwPJTVT8TbxVzNUCOV+BTn9odwP+/
         Qpeh3gqePCSQGstaPGVrHR52gGRfAT+RTGAZ69SGKcNj8PAlrgMvSgQUmCWi+mXVqG6w
         GTY9+PH7gaVQSMO8C55OhcL0ESmioVk4s1DRc2RjIL3uC0n0ftlLCoCw0q8MgdizHV1d
         nMFezKmkdJEqA1V3/XqvMnqhGJrH1tr30opx7XGSvYTUhX9OPVqzc+lUEAa8/wAK9rvI
         X+H/tX56GhD+jyWJhDa/Je2yhiyVe373AHarLKypez9+fHzMvfykLwYnzlHraF1+2gTR
         kupw==
X-Gm-Message-State: AOAM531ePX3pxSkVuNkpQLn7dojZwcqNTVecJ+SzfRkoDLC7M6tufdtd
        z9Hq1Vo1xBYBqVaw4sxFnwpCoOhbDcEshwdjLDCg4w==
X-Google-Smtp-Source: ABdhPJyRGGh5o3RQEE4N30LJAoPRh1VFd99uBGzTml3OZn6L9Hkq2Au4hX556EyY3v8cR0CPMV4NBudGKeghR/0q+o8=
X-Received: by 2002:aca:df82:: with SMTP id w124mr8788790oig.112.1643923682140;
 Thu, 03 Feb 2022 13:28:02 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:28:01 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.4.I79baad7f52351aafb470f8b21a9fa79d7031ad6a@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.4.I79baad7f52351aafb470f8b21a9fa79d7031ad6a@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:28:01 +0000
Message-ID: <CAE-0n50+AzZv2Q7Uda0OpEKxkbSY_-S8_CZeScjicChm94Dtjg@mail.gmail.com>
Subject: Re: [PATCH v3 04/14] arm64: dts: qcom: sc7280: Clean up sdc1 / sdc2 pinctrl
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-02-02 13:23:38)
> This patch makes a few improvements to the way that sdc1 / sdc2
> pinctrl is specified on sc7280:
>
> 1. There's no reason to "group" the sdc pins into one overarching node
> and there's a downside: we have to replicate the hierarchy in the
> board device tree files. Let's clean this up.
>
> 2. There's really not a lot of reason not to list the "pinctrl" for
> sdc1 (eMMC) in the SoC dtsi file. These aren't GPIO pins and
> everyone's going to specify the same pins.
>
> 3. Even though it's likely that boards will need to override pinctrl
> for sdc2 (SD card) to add the card detect GPIO, we can be symmetric
> and add it to the SoC dsti file.
>
> 4. Let's get rid of the word "on" from the normal config and add a
> "sleep" suffix to the sleep config. This looks cleaner to me.
>
> This is intended to be a no-op change but it could plausibly change
> behavior depending on how the pinctrl code parses things. One thing to
> note is that "SD card detect" is explicitly listed now as keeping its
> pull enabled in sleep since we still want to detect card insertions
> even if the controller is suspended (because no card is inserted). The
> pinctrl framework likely did this anyway, but it's nice to see it
> explicit.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
