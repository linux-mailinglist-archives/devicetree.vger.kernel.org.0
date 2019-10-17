Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE18DA800
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 11:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439363AbfJQJEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 05:04:47 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:36278 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728987AbfJQJEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 05:04:46 -0400
Received: by mail-vk1-f194.google.com with SMTP id w3so341303vkm.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 02:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3YEZ6kmrwj0jmNEINZ5DrxfXAkCY+f5snursTVbXw/Q=;
        b=W2e51Z687HKzqeEUxw8//AMcHGkkuFOP8XPRGjOfymWxiy5Zp1IsFw7JpdMcbsWu2b
         3XRp9hda4U35V3m4NBdsGLbwORsP7M6z6hcLgkBMeNdc6Kv9H54zl1XG8UyqG3oVaiRA
         uYXbj1yTpmGTc5+j3xXkUibu704TmnkPoO2sjQNeCRQIL58QuDsOIAezBG7b14OxBFv6
         5FbrylzIeAFhCyolzRmA8yt6ll3bpHI/fYR97EcEQ3jn9UGLTrm83xRCCHz8AS86pmze
         m1mdnFdbPnS0BElbdxvOVcKomZv+rfTKsUOZ1i3MKBNxnh2hdw7vJ49G7aVlAm37710n
         WkLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3YEZ6kmrwj0jmNEINZ5DrxfXAkCY+f5snursTVbXw/Q=;
        b=PZQcs/d5SQYKxL+t0N0C9nyCtF1i6fLzkoAPodNfRmrAM5AKXI+r8BQfdDTU7kUqwZ
         nzf0olV5k1gqlhZm7o086NUhZwtbB/YlbnMuTi1mCVw/FIri1726ontVQ1DJyi/4/fC3
         4XxsWS2NGw91gyNH57qQh5i11zpoB54paCjpAvfyrXLArdXGsgFQA9cXgb1dip72wS6V
         REbTscF0+PIFxQxNxxJCJnNGEB/3bW6NkIjHYDi+P+xYdnoahO/t0LvWOI/oA4j31SvP
         Rgc/yFuk9IIicvg8J7jUyl5RYhz13LW5mC4Wl3Pdz32ey0iP1sAKDk/K2cNnDTrq6tyW
         R0UA==
X-Gm-Message-State: APjAAAXbYuOL5pu5co1Rr5MhUdKiuj7jTiJDVWie/beB6FL5zZy1uvEm
        kPL26Pc5pKrViVplveuOvxCXBvwJMix1djFWLw5N2Q==
X-Google-Smtp-Source: APXvYqyt8CM8fHUNAOrVRVddOgQGQx8mRNb41o6lI3llgLFlyRzgA5YeS309L///NMZr8TxyMVq1MEKf6S7M8tbxb2E=
X-Received: by 2002:a1f:b202:: with SMTP id b2mr1313280vkf.59.1571303083600;
 Thu, 17 Oct 2019 02:04:43 -0700 (PDT)
MIME-Version: 1.0
References: <1571254641-13626-1-git-send-email-thara.gopinath@linaro.org> <1571254641-13626-7-git-send-email-thara.gopinath@linaro.org>
In-Reply-To: <1571254641-13626-7-git-send-email-thara.gopinath@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 17 Oct 2019 11:04:07 +0200
Message-ID: <CAPDyKFqcKfmnNJ7j4Jb+JH739FBcHg5NBD6aR4H_N=zWGwm1ww@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: soc: qcom: Extend RPMh power
 controller binding to describe thermal warming device
To:     Thara Gopinath <thara.gopinath@linaro.org>
Cc:     Eduardo Valentin <edubezval@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>, amit.kucheria@verdurent.com,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Linux PM <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Oct 2019 at 21:37, Thara Gopinath <thara.gopinath@linaro.org> wrote:
>
> RPMh power controller hosts mx domain that can be used as thermal
> warming device. Add a sub-node to specify this.
>
> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
> ---
>  Documentation/devicetree/bindings/power/qcom,rpmpd.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> index eb35b22..fff695d 100644
> --- a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> +++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> @@ -18,6 +18,16 @@ Required Properties:
>  Refer to <dt-bindings/power/qcom-rpmpd.h> for the level values for
>  various OPPs for different platforms as well as Power domain indexes
>
> += SUBNODES
> +RPMh alsp hosts power domains that can behave as thermal warming device.
> +These are expressed as subnodes of the RPMh. The name of the node is used
> +to identify the power domain and must therefor be "mx".
> +
> +- #cooling-cells:
> +       Usage: optional
> +       Value type: <u32>
> +       Definition: must be 2
> +

Just wanted to express a minor thought about this. In general we use
subnodes of PM domain providers to represent the topology of PM
domains (subdomains), this is something different, which I guess is
fine.

I assume the #cooling-cells is here tells us this is not a PM domain
provider, but a "cooling device provider"?

Also, I wonder if it would be fine to specify "power-domains" here,
rather than using "name" as I think that is kind of awkward!?

>  Example: rpmh power domain controller and OPP table
>
>  #include <dt-bindings/power/qcom-rpmhpd.h>
> --
> 2.1.4
>

Kind regards
Uffe
