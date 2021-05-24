Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DEC438E853
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 16:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232844AbhEXOMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 10:12:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232462AbhEXOMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 10:12:22 -0400
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B480C061574
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:10:54 -0700 (PDT)
Received: by mail-vs1-xe2c.google.com with SMTP id f9so7822303vsp.6
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 07:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l5h+WQ0oEWo38CL1jqONencxRgJu9VTR6nMezb6lhhU=;
        b=GUwyy8oLVtvgR/eVwjg9YG73fIlQJGj74auOljdnWJShozK2XxEvHWunJzAd9tyAB8
         JXwELDLtm525q0YbcH1QKAWHDpwkvrNYimXaPuxKgYG+L/3DBPg6PgiaHmB5IS6zRMHr
         8c7x+GALzPTPJHEQiyYu4W8Nsm5+fGArsEPhmCMTMkG0ylHyRhpXRFtdcXZ49P6IkRtR
         XcqquB1KrkUNuJ3dmRvJMX9qQyoXxH8iCq9Nly2mhS3Xm3/jQn0A8ZXMW76crG+Lg79T
         a0iHkN4ZAPHXMN4vBESk0Blnt5eO8iZft9p+8JY+IrlMH5muNLQuMdaH8VzUsi+tG/UN
         bEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l5h+WQ0oEWo38CL1jqONencxRgJu9VTR6nMezb6lhhU=;
        b=nk9zlnTT/INkFBEi8fg8b0wUbS1tQFoEjzL66Krrv6KZ6z9pCA/SNdjhKdwdrwA9Jb
         pYB18OcYo6yw5GkeOuWlS0UiWuHV1tkbbsNTXUgfQo5wESHmEtLK6t386JSteeYydyxP
         yjquHGTzbTxsFzJEJPO+/Ld+dV5I+rZRskWtsiyPaU73EL1LFWUM+F5LwjPjnMvjPT8c
         FmEBe1KpMpuGx2MOg1P2idW4oIQ/Yojem8lryRgHbiP2v8ssqOI3g4FbkfoK9ETWTXIi
         La+1Mj7v4k4ew//a+Oy8RzTxjx0/mFgN7yc5dAg2J9MkSySDj9P+OHh2LdL2DRyu1DLF
         iJ6w==
X-Gm-Message-State: AOAM532oNlCtw+KA7c0MPR8T6n0mwGUx+fQDc9uy0/F6hLwYnSZGHQju
        M3v8iV8MjCvgMUFnhCMAjXL41AfZ9ts+2fjaoP0gNkrylg34Bw==
X-Google-Smtp-Source: ABdhPJwtziN/FCGvgGw4/XlFkWpcDdnay97ug47LPV8fFhhcyAayvbokIVDoG13Dji6ETVLY30FzGOnySJip8KB3INs=
X-Received: by 2002:a67:1087:: with SMTP id 129mr20524337vsq.42.1621865453208;
 Mon, 24 May 2021 07:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210510190400.105162-1-l.stach@pengutronix.de>
In-Reply-To: <20210510190400.105162-1-l.stach@pengutronix.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 24 May 2021 16:10:15 +0200
Message-ID: <CAPDyKFqL+7dgBaYL5ozrsB2U-+FEERx6MgAoAib6YdmAN6hHDg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: add no-mmc-hs400 flag
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 at 21:04, Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Lucas Stach <dev@lynxeye.de>
>
> HS400 requires a data strobe line in addition to the usual MMC signal
> lines. If a board design neglects to wire up this signal, HS400 mode is
> not available, even if both the controller and the eMMC are claiming to
> support this mode. Add a DT flag to allow boards to disable the HS400
> support in this case.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> Acked-by: Rob Herring <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index e141330c1114..ac80d09df3a9 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -220,6 +220,11 @@ properties:
>      description:
>        eMMC HS400 enhanced strobe mode is supported
>
> +  no-mmc-hs400:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      All eMMC HS400 modes are not supported.
> +
>    dsr:
>      description:
>        Value the card Driver Stage Register (DSR) should be programmed
> --
> 2.31.1
>
