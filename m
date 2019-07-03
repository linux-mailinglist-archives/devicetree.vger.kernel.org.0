Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EAEC5ED1E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 22:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726656AbfGCUDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 16:03:04 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:44119 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726885AbfGCUDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 16:03:04 -0400
Received: by mail-io1-f67.google.com with SMTP id s7so7789959iob.11
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 13:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UKh+fnCjeVqcQm0IwUHZUc5vltmZ8E0kqz9Ok6uJVI4=;
        b=EIIpKwYigj//ohw/Hx/d7USCLYQ6Yz7CE5EleU+SyrJULC2Fj/eLP/4fOYzc89xM75
         8ifdTZ2G88o7ItmphKYgUPbJB+abRou6TKyNi7KyE+2xJEXze5Lp4Z9e5BNv8RchqzQ9
         wEdy6vOTEm2EaFnEJxAfuww3pGtAweWtCXg3SkK4hTV3xFwZeQr3Sc/G5MBsWKrFSkLm
         xjrb1E3oqGmHMNVHWVZ8gxN3WOr6b/PsqLUhI9snTyH8Z9pnjPntS9aFwjJ6i6+P01xf
         iR1aDSllthbZYMqBxEdAPvCd592QwZ1nwWYrXyD1vmy2zvCAJODbOW4U/7pkPL5ePznv
         OK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UKh+fnCjeVqcQm0IwUHZUc5vltmZ8E0kqz9Ok6uJVI4=;
        b=Uy95g/5c0g3uKMcFoeetUmN+zWYD73ZbOwRjsnEuzy9iPoLiKcJnob1hV3jtiDHozT
         /zsf1QJTSdUk2B88Nu/1DkVSjd7OjvOMrroA8KsFIF/QklRCLkwPJ0CRFBwNY1REbVWL
         gS5E0/WWlDwfRrbdTqBo2VwI9q4TwyyM+DfLof4xui+e5ht/q8CACnznvKb/W0Y/Kc+o
         VDKJsKT+vbYcGviRQhnJ6Et2id+hqVmSnDiBW8Vilgra2LDg13q577q4GzvdqEu8CsR5
         5Q1mWJj25mN6NEwaFkQf4La/twZRZduirLdmgPNqJ11FxtDTYa+51sHO5e3bCTL93NAO
         ZMZA==
X-Gm-Message-State: APjAAAWMlyWXrPu7OrrVQWGVBDwbhKuj4uI4nnZHbrRfAQ5AewQKntaa
        lz7+3rYXApWmeb3K2QBCbUXm/SUHm4zkIyyRRXZZbw==
X-Google-Smtp-Source: APXvYqwoE6c94VoRDisMNtWzyjcFI4tXdYpggqbejcxRg98CE8mWN8SWLgyCum0KXlMbwrRNVk/eX+bCnISJDGHcvbo=
X-Received: by 2002:a02:7642:: with SMTP id z63mr31807037jab.36.1562184183245;
 Wed, 03 Jul 2019 13:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org> <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
Date:   Wed, 3 Jul 2019 14:02:52 -0600
Message-ID: <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Leo Yan <leo.yan@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        David Brown <david.brown@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Greg,

On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Do not assume the affinity to CPU0 if cpu phandle is omitted.
> Update the DT binding rules to reflect the same by changing it
> to a required property.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

I'm all good with this patch - can you pick this up for the coming
merge window?  If not I'll simply keep it in my tree for 5.4.

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  .../devicetree/bindings/arm/coresight-cpu-debug.txt       | 4 ++--
>  Documentation/devicetree/bindings/arm/coresight.txt       | 8 +++++---
>  2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> index 298291211ea4..f1de3247c1b7 100644
> --- a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> @@ -26,8 +26,8 @@ Required properties:
>                 processor core is clocked by the internal CPU clock, so it
>                 is enabled with CPU clock by default.
>
> -- cpu : the CPU phandle the debug module is affined to. When omitted
> -       the module is considered to belong to CPU0.
> +- cpu : the CPU phandle the debug module is affined to. Do not assume it
> +        to default to CPU0 if omitted.
>
>  Optional properties:
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 8a88ddebc1a2..fcc3bacfd8bc 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -59,6 +59,11 @@ its hardware characteristcs.
>
>         * port or ports: see "Graph bindings for Coresight" below.
>
> +* Additional required property for Embedded Trace Macrocell (version 3.x and
> +  version 4.x):
> +       * cpu: the cpu phandle this ETM/PTM is affined to. Do not
> +         assume it to default to CPU0 if omitted.
> +
>  * Additional required properties for System Trace Macrocells (STM):
>         * reg: along with the physical base address and length of the register
>           set as described above, another entry is required to describe the
> @@ -87,9 +92,6 @@ its hardware characteristcs.
>         * arm,cp14: must be present if the system accesses ETM/PTM management
>           registers via co-processor 14.
>
> -       * cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
> -         source is considered to belong to CPU0.
> -
>  * Optional property for TMC:
>
>         * arm,buffer-size: size of contiguous buffer space for TMC ETR
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
