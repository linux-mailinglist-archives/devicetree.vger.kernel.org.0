Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90B584007D2
	for <lists+devicetree@lfdr.de>; Sat,  4 Sep 2021 00:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236561AbhICWR6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 18:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236069AbhICWR6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 18:17:58 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09886C061760
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 15:16:58 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id g4-20020a4ab044000000b002900bf3b03fso121343oon.1
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 15:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=gyxxsdZLj8EDyZ8pMKsT8E9AIC0KIFdqfoCQ/9/VW7s=;
        b=KzKWTzHJKM0GKba56YF5OciltCPo9hSKK8f5cpEKMtbsG9tWyvJJGHkeT6PSfXQ2TN
         b1Ap77GzvCJpOaZ6+t7kiXTbDUsBwqHylC5VC7qzcLwLId5gKVHxIAUiiHWe+YGotf+q
         TOt4BjbM9gaM0JxQ2MbNsexxH40Xp8tGP+7II=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=gyxxsdZLj8EDyZ8pMKsT8E9AIC0KIFdqfoCQ/9/VW7s=;
        b=rjiawH8McOpcRaVHYXsLz3fl1/A6fd+MTXgIvvFDKNq2qITtSjAuFijPSXwQ/JGTgT
         T0aRyqdD8prRzm74yMk+nHdJPPNYMA8VLy9sauimNeifHjepnvAgj84mkMDf0WCRaDkE
         qEO9Gh+T5h2TQZCda5F/Z3CUD9MSv0GEZuAv/TNFWQZqKOnxzbbEqqYKW9kDkIWOqt3C
         0WYWX/VgAdVTmjbgrc5UXSOmpNxCYUTlmSK3MmBp0ltY8fAvnx34HtvHEx0vKPRo74nC
         T3jXUB9NBJYzG0603isLBxhGvS1iEAta6lSpl8/uYhVnWzNWIq2MWOJ5dvg8b50UzZqw
         u8GA==
X-Gm-Message-State: AOAM532+6/6A/1yfJ3dNXpPtppqj5x/B/d0ye8oKVrgQf0nxADMZIynW
        euHjqcpYporUTCO9GbSCbiSe7o42z2hB1qBGuZtncw==
X-Google-Smtp-Source: ABdhPJxWPP+fblb2lSlYDuskdZ7Ww49r0yeIcSQUmfZQvLdpLnGscWBy3tt3mJcdzD7/hJtBMIyVBzoxRJdl9jX/D5A=
X-Received: by 2002:a4a:a98c:: with SMTP id w12mr4727929oom.29.1630707417219;
 Fri, 03 Sep 2021 15:16:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Sep 2021 18:16:56 -0400
MIME-Version: 1.0
In-Reply-To: <20210903122212.v2.1.I9777d0036ecbb749a4fb9ebb892f94c6e3a51772@changeid>
References: <20210903122212.v2.1.I9777d0036ecbb749a4fb9ebb892f94c6e3a51772@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 3 Sep 2021 18:16:56 -0400
Message-ID: <CAE-0n50WDf21qkLpEynUJ4mQChLrK-2EhUaroE96spQ45JBqpA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180-trogdor: Delete ADC config
 for unused thermistors
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-09-03 12:22:19)
> The charger thermistor on Lazor, CoachZ rev1 and Pompom rev1+2 is
> either the wrong part or not stuffed at all, the same is true for
> the skin temperature thermistor on CoachZ rev1. The corresponding
> thermal zones are already disabled for these devices, in addition
> delete the ADC nodes of the thermistors.
>
> For Lazor and CoachZ rev1 also disable the PM6150 ADC and thermal
> monitor since none of the ADC channels is used.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
