Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AFAE281525
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 16:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388126AbgJBObf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 10:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387908AbgJBObd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 10:31:33 -0400
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EA03C0613E3
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 07:31:32 -0700 (PDT)
Received: by mail-vk1-xa42.google.com with SMTP id e5so346134vkm.2
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 07:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cnU95a4B/lopWn7PJb9EKa9/N6eV+gD0Xs8KJ/fY4rM=;
        b=A5cXXjzFewYmWbzazwRS0/VaBU2zMwnx+gFsMz74IU9GsLD3USy5XdWUJzxT39eCc7
         lnBzqESdtLpD0XCCYhvmegsVhtPZJmgxrgt5ttIqBvgDpGo/QdTT6fGyWy8toyId5OSE
         FWLvaBXHHL3dljVDcvJ7tOLPA1Na5BenHsg6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cnU95a4B/lopWn7PJb9EKa9/N6eV+gD0Xs8KJ/fY4rM=;
        b=YFjebqWXfyxWcEiflFWMOY9IRv1pCn1ENstWhQkkWUeB96lTP+TOtZSBXiFnuaN7j/
         5LuUJzOpQXKv7pbt9OhUbFWbJsZihYS5/S6U0QkXqnavOH0rNEKvIJoVA1/OLss+stN2
         vrcj43TGhh3AUnLUV1HYAtXEB3EzB6FPjAtk7ZzhioO2ABBfeYtqwEmOLcAEle8+wdRo
         9DCajPEtgvyn3Eq3iW8CNdhQsQzY8FiCyXS5DsgpZlifD6qDfiFXXuQrjuRwNA3+Cpoc
         /Mz30HoaLffdHv58Il8gTZDmDjHw8MFImhEnjFTX/O5vIMXjm4qPiFK0sxjoD2OykWCn
         7Nwg==
X-Gm-Message-State: AOAM530vQL66MLaoVhkScmGScPvTn+Mc5fg/kCLVWtN/tjXdVewVab5n
        vudv7CDWFmC2KN/pG+Dfw+YJRZEKDhO/BQ==
X-Google-Smtp-Source: ABdhPJwi3JcENANQADE7di8KRYW9aGZgR/UPQtxgyKcohjR21WV4WPqpg/qP+2sA7LGSoDej5yG0fA==
X-Received: by 2002:a05:6122:6bb:: with SMTP id r27mr1286393vkq.3.1601649091089;
        Fri, 02 Oct 2020 07:31:31 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id o83sm266807vko.29.2020.10.02.07.31.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 07:31:30 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id g11so731411vsp.13
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 07:31:29 -0700 (PDT)
X-Received: by 2002:a67:f4c2:: with SMTP id s2mr1288376vsn.4.1601649088871;
 Fri, 02 Oct 2020 07:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <20201002114426.31277-1-lukasz.luba@arm.com> <20201002114426.31277-4-lukasz.luba@arm.com>
In-Reply-To: <20201002114426.31277-4-lukasz.luba@arm.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Oct 2020 07:31:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UbNP5-G1z95F37Fmv8=n0JPSSwnPQO_K==WpAc4vAHWQ@mail.gmail.com>
Message-ID: <CAD=FV=UbNP5-G1z95F37Fmv8=n0JPSSwnPQO_K==WpAc4vAHWQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: thermal: update sustainable-power
 with abstract scale
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>, linux-doc@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        amitk@kernel.org, Jonathan Corbet <corbet@lwn.net>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Dietmar.Eggemann@arm.com, Quentin Perret <qperret@google.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 2, 2020 at 4:45 AM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Update the documentation for the binding 'sustainable-power' and allow
> to provide values in an abstract scale. It is required when the cooling
> devices use an abstract scale for their power values.
>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  .../devicetree/bindings/thermal/thermal-zones.yaml  | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> index 3ec9cc87ec50..4d8f2e37d1e6 100644
> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> @@ -99,10 +99,15 @@ patternProperties:
>        sustainable-power:
>          $ref: /schemas/types.yaml#/definitions/uint32
>          description:
> -          An estimate of the sustainable power (in mW) that this thermal zone
> -          can dissipate at the desired control temperature. For reference, the
> -          sustainable power of a 4-inch phone is typically 2000mW, while on a
> -          10-inch tablet is around 4500mW.
> +          An estimate of the sustainable power (in mW or in an abstract scale)
> +         that this thermal zone can dissipate at the desired control
> +         temperature. For reference, the sustainable power of a 4-inch phone
> +         is typically 2000mW, while on a 10-inch tablet is around 4500mW.
> +
> +         It is possible to express the sustainable power in an abstract
> +         scale. This is the case when the related cooling devices use also
> +         abstract scale to express their power usage. The scale must be
> +         consistent.

Two thoughts:

1. If we're going to allow "sustainable-power" to be in abstract
scale, why not allow "dynamic-power-coefficient" to be in abstract
scale too?  I assume that the whole reason against that originally was
the idea of device tree purity, but if we're allowing the abstract
scale here then there seems no reason not to allow it for
"dynamic-power-coefficient".

2. Is it worth adding some type of indication of what type of units
"sustainable-power" is represented in?  Maybe even a made up unit so
that you could tell the difference between made up units in the same
system?  I'd envision something like:

sustainable-power-units = "qualcomm,sc7180-bogoWatts"

...and on the dynamic-power-coefficient side, the same:

dynamic-power-coefficient-units = "qualcomm,sc7180-bogoWatts"

One could imagine someone even later (after devices are widely
distributed) figuring out translations between these bogoWatts numbers
and real Watts if someone could come up with a case where it matters.


-Doug
