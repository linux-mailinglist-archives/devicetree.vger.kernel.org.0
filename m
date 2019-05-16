Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3619620E19
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 19:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727613AbfEPRk4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 13:40:56 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:33716 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726771AbfEPRk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 13:40:56 -0400
Received: by mail-vs1-f68.google.com with SMTP id y6so2897316vsb.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 10:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
        b=AIRBhrVhFgw7bH2pwHcH9I6R1AqBcsTlPNnNcXJpBf/pEYgcBTvHtbbQvYiD0GdjC3
         Vcii/zl8/NPtJhsrz/3lINqpDAb6oedjkKAJK8LzPcY1+uUm6aNi4S9Dtla3/QabW+ws
         yU6hWLGod2ZBeAEJzafr03Uc6WR2SvzI45sUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
        b=SkaFAH5nqgYSEzkyTX01zjg2XzjyLrKps3Gc0fI3yQkKDijuiRqDsGs3IGLd/Jxui8
         mE7VaaN1312Zy+fbYh8l/mWBbABVZg5/3Sc8Sn0WiKt81KALmi7Hsojgv+EdwYswUEJn
         QkXnotoQXHx+Nf8UqroO/MdG1UogOxc91EzrbCMlX4wZP8JM+oxOksZVEXDNVO9Ji+Or
         dzEL41AExhTkmWkpw104ijfiMTzaAzAk6n/8oK13PXmcE2vjJFDTl1ExM8tZLMWkhu7D
         wPKOSGUYzQjQQxwGnBJ2fquiES5bljHgKi0UJwXPSA80Y1PmuRVu9UGNXgKPVnAT1YLL
         XVHg==
X-Gm-Message-State: APjAAAXjRq1zArgEwDD4O0mxBAZFLmuhCwlH26dCtRr6we7zAuNsP9iv
        2oSmDEEwULzvJtqSot4xS38i/0JAP1A=
X-Google-Smtp-Source: APXvYqwbonUIcVKLP0ngKphsF0/5lGAbcOy1w4RQdY4aVUjw1S4xPGUtzU9wjJacsMA1jeRAcXUj2w==
X-Received: by 2002:a67:ecc4:: with SMTP id i4mr25036086vsp.240.1558028454764;
        Thu, 16 May 2019 10:40:54 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 2sm6811537vke.27.2019.05.16.10.40.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 10:40:54 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id c24so2855943vsp.7
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 10:40:53 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr1516432vsc.20.1558028453360;
 Thu, 16 May 2019 10:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org>
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 May 2019 10:40:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: add #cooling-cells property to
 the ARM Mali Midgard GPU binding
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The GPU can be used as a thermal cooling device, add an optional
> '#cooling-cells' property.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> index 18a2cde2e5f3..61fd41a20f99 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> @@ -37,6 +37,8 @@ Optional properties:
>  - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
>    for details.
>
> +- #cooling-cells: Refer to Documentation/devicetree/bindings/thermal/thermal.txt
> +  for details.
>
>  Example for a Mali-T760:
>
> @@ -51,6 +53,7 @@ gpu@ffa30000 {
>         mali-supply = <&vdd_gpu>;
>         operating-points-v2 = <&gpu_opp_table>;
>         power-domains = <&power RK3288_PD_GPU>;
> +       #cooling-cells = <2>;
>  };

You will conflict with d5ff1adb3809 ("dt-bindings: gpu: mali-midgard:
Add resets property"), but it's easy to rebase.  I'll leave it to
whoever is going to land this to decide if they would like you to
re-post or if they can handle resolving the conflict themselves.
+Kevin who appears to be the one who landed the conflicting commit.

With that:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
