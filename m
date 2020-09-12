Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33D9D26792F
	for <lists+devicetree@lfdr.de>; Sat, 12 Sep 2020 11:34:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725836AbgILJd5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 05:33:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgILJd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 05:33:56 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 820A8C061573
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 02:33:55 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id y2so8288242lfy.10
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 02:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6p01EYnEk7mg7q2BWRLUYur9aS07ulpNpOQ68P6UEdU=;
        b=T4/DEMnlpnSCV7WTW2xouwOanuflt6Xo/jGK146kbB40c05KWhiHE0chM7d/QQ+SDj
         irF3FaiezunfKJiJ2xgTQx2qb5yv6FMsYhcG+HkabaliX6npKDryguFJo5ukTTbyK57y
         AisgrqPJkQZ4btrIc2XvKIpaKMg/qgl6WDnCeYz5Act8wxOBkYs4tk9Q1vm+s7cRAg14
         /V5o3l7sz5mfMCh6aXbkx9ZxwVQrf72DQiCmXi4uP2GlDKe6W2SochnsR+YFZRbmtki7
         nILXDwycW7wqiy/koVktjvbYpUiwvFAPgRSLu/j59QsIV+c1T90w6HEAtxm/3Re4XiHx
         hZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6p01EYnEk7mg7q2BWRLUYur9aS07ulpNpOQ68P6UEdU=;
        b=kQo9K6HMorm1TrEyI7U+NYZoW0yEDaKbwqzeXd21vY8DioOH0Mug/1QTg6YOmDPC2N
         MQu1WGm/yv3Xv1duRpoB7fbmrc3vO/zIehhe08i6uQ1b3oalv5sFr2sppSLJkd+Z1gWP
         SKvKgPYP6yH0MtDn6yr6aSBTcI4l3c2q7UgSherRwc5TcZen88SNKhJZXdZDHGEE2js2
         VpDFEIExZhqFGabLN7MI63cdGRxqSeSf4rpehGSO6TPza7srMU2EcdxFSs4ENswA8/zU
         F4qkLlJ7k7kxDVU9lgXiTwlAiA7/p8/TMPcY+j9aJMgRkZRi/ByxAcWfsHd12yJoqyxg
         ulgA==
X-Gm-Message-State: AOAM532d5vWmQAOtev2iam3b0N27g/yurv5sa60M+edrFMwVezcEDyBd
        uZdBcabGbD7YtQqlQiLzdaLH/jd+/GrAeeKBEUFh8A==
X-Google-Smtp-Source: ABdhPJxAcLCKcwWcBH5jCc3n7aA0z0TjdMgW1G14Oic5M3BEJe1es9jWRV/hhZhegEIkFOIYX0OOgztT8qtC+kf6ZU4=
X-Received: by 2002:ac2:4c11:: with SMTP id t17mr1620153lfq.260.1599903233892;
 Sat, 12 Sep 2020 02:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200821112208.5295-1-geert+renesas@glider.be>
In-Reply-To: <20200821112208.5295-1-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Sep 2020 11:33:43 +0200
Message-ID: <CACRpkdby9c+_Hww9RJosMrsBCw+GUVfuSjn06OB0jXJWcWyXCg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: sh-pfc: Convert to json-schema
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 21, 2020 at 1:22 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Convert the Renesas Pin Function Controller (PFC) Device Tree binding
> documentation to json-schema.
>
> Document missing properties.
> Drop deprecated and obsolete #gpio-range-cells property.
> Update the example to match reality.
> Drop consumer examples, as they do not belong here.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Nice work on this!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Expect to get it from you as a pull request.

Yours,
Linus Walleij
