Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E202A303D79
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 13:46:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731341AbhAZMpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 07:45:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391804AbhAZJ7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 04:59:37 -0500
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F52C0617AB
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 01:58:48 -0800 (PST)
Received: by mail-vs1-xe2b.google.com with SMTP id o125so8718123vsc.6
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 01:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l2QpuY8rM4toyVpou9vFx2TY09PAPQwcRntc7oTA0is=;
        b=REheRH86QOMZ/fp5spJI+HYISUR+or1vKvxmyLai8utojsCRMMqRZNCOUCtr9iDzzT
         XKCjgZykN3eQ+Yd4tWF8Nx84mDqCcPaAX51DnmV1EQb0s+BU7FQ4/dGwbq8Hjyx4lb8X
         1bz23M3gWrmtbp0qNqGFhbDKnqcf/r4Nv8yHm996ztOvPdgDCz+F3cpsXgpcSvwX9/BB
         5M1Ld2sSZPlcwZEZgnauow/fO1i+zZ2dRrWkLhVtJm6FyvYm7Mzu7FdKu0qA41KQHY+c
         5mtgGQP6aqes5Uoo/O6YvxTu2aLRM9Al9fxuL8529+GWQY26Y2Za0GGLeltGrnjt6kff
         l6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l2QpuY8rM4toyVpou9vFx2TY09PAPQwcRntc7oTA0is=;
        b=O8BwyXJtxc2mysoJsRopBRzFsEbYcwj9OiAGbGDvzqrnpKsyEcixtmY/k3WIvcNYyl
         GKpXN6v/RqpT3MlHqa2dYrUP0MbQUK1+fOHNoSisrtLQjkYHRhe0UE2q9IT/kqTmx8ta
         sW2zxWpcDk+AjH/ULLxtye8eGJ+MgCXR1uM7tcRL1T+7sh1wQsMxzav316uNqMDLeE9E
         LwDbKZCpw+iYGZUW0kIx1JcmWbIsfx1VfyDXm92Z9Bif10PuHeVdbkwiLWFp89AbNd9c
         9BqTr5//m2WcG48kgJYA+PbgyOpSshCXcKac0rq0hh+PQbxtvLvB6XZb0PWXzCuY+wXN
         UDdg==
X-Gm-Message-State: AOAM532xWdeo9KZtWu8/wzLDuBbHiASmfaIsqpxcGRrdGl1o6z9i5ZCu
        6bdQXWK03B3k8czwaLbZXnEqYehb/DnYwYBS0xaPEA==
X-Google-Smtp-Source: ABdhPJyTySMXS2eZMh5eS03L32cNf15ToE5AvKZz7eICs1uJdhhGYno+oad4aRW7fF20tSBBSv54Xp63sFrSLCAF2oM=
X-Received: by 2002:a67:f997:: with SMTP id b23mr3471696vsq.34.1611655127850;
 Tue, 26 Jan 2021 01:58:47 -0800 (PST)
MIME-Version: 1.0
References: <20210124170258.32862-1-marex@denx.de>
In-Reply-To: <20210124170258.32862-1-marex@denx.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 26 Jan 2021 10:58:11 +0100
Message-ID: <CAPDyKFrUnx4XSyxx=H8reDV=_vRORe7fE=6HQivC9T7OkHfyRg@mail.gmail.com>
Subject: Re: [PATCH V2 1/4] mmc: mmci: Add bindings to operate CMD, CK, CKIN
 pins as GPIO
To:     =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marex@denx.de>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Ludovic Barre <ludovic.barre@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jan 2021 at 18:03, Marek Vasut <marex@denx.de> wrote:
>
> Add DT bindings to describe GPIO line associated with CMD, CK, CKIN pins.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Ludovic Barre <ludovic.barre@st.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: devicetree@vger.kernel.org

Applied for next, thanks!

Kind regards
Uffe


> ---
> V2: Rebase on next-20210122
> ---
>  .../devicetree/bindings/mmc/arm,pl18x.yaml    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> index eddc1f6bdbe5..47595cb483be 100644
> --- a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> @@ -127,6 +127,26 @@ properties:
>        driver to sample the receive data (for example with a voltage switch
>        transceiver).
>
> +  st,cmd-gpios:
> +    maxItems: 1
> +    description:
> +      The GPIO matching the CMD pin.
> +
> +  st,ck-gpios:
> +    maxItems: 1
> +    description:
> +      The GPIO matching the CK pin.
> +
> +  st,ckin-gpios:
> +    maxItems: 1
> +    description:
> +      The GPIO matching the CKIN pin.
> +
> +dependencies:
> +  st,cmd-gpios: [ "st,use-ckin" ]
> +  st,ck-gpios: [ "st,use-ckin" ]
> +  st,ckin-gpios: [ "st,use-ckin" ]
> +
>  unevaluatedProperties: false
>
>  required:
> --
> 2.29.2
>
