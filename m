Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 46F0370172
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 15:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730055AbfGVNny (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 09:43:54 -0400
Received: from mail-ua1-f68.google.com ([209.85.222.68]:35655 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729708AbfGVNnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 09:43:53 -0400
Received: by mail-ua1-f68.google.com with SMTP id j21so15320731uap.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 06:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iRYfNxmRGZxja2aVerHwx+L3OctiiirveEgY/SpoZGo=;
        b=LyH7T9dlRo7g4lnuXgZU64vVwhjnpNVE0dmH0+KSUIiLJSNWCQgZoqIWq5XaHwhC3P
         8ydM6v5YUdfeTPYmUnfjEaWYR71/3wbRj6bX555P9r6zI1LS/fttMxBXbkdw/wWvRLDU
         4wsCi9S5vleIdvxmfzsrwtxs8rpXO/3bcIkqTngmeygsWEqdkzyqMgBelhlkBiwo+r8e
         NLE4VgjkjPGj59aOXIT6Gh0EtoVYSYzqd29yGnndn89Kgfs5QqgwQKNycm+J0NcQuBSB
         SFlNjifPIw+SBmO1a3hfIsuMspDoiRCucdhfptRR34hhCDLg66Rh9glIUFXAGZpIRBS0
         6gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iRYfNxmRGZxja2aVerHwx+L3OctiiirveEgY/SpoZGo=;
        b=mtWjzkSuWdEOwe1aAicYwCmyc4+1DLiCqRlYDxQp/43Eok9hSz6LOYbE/XydTITgmQ
         Y9Q+pIvTL+E7GUUgqNygdCkBKmXOHiKQQA5pKVYCE5lLYF5D7diHLc69Uyv4iiWiSK7K
         fIfMAX8imaG6V7BbZOa724SDjCi+1RFB0fQHw81N/FLsf4qEKE4Oy87AltgP0vT6mHXs
         RDaEzl50XIhFRqwCYePYSi9Nl1zDeBwrhAsGsRGlIfFiS46M39OfFDU291QEDi2l0nfi
         GEnRFDLON60aroJ/ff0ArgXfXadwkuwBUcrjzb5CmQEMwZzlH9O3yO5WM8BzFNrEIyO+
         l6yg==
X-Gm-Message-State: APjAAAV0Z3d6REH8wj9tspJixbj+fOe1tsOJUdj56FXJ4a9AXMP3564m
        Gg++48hy6Ipszkk6VlwzckbdHzaclDo1ED/qxD60aw==
X-Google-Smtp-Source: APXvYqw3AfSjTqhb46VrvlwGb6HfSPyjBQ4zqei8hoJZ9u+BGXpYvPmlaOewG1Gyhz0LPpTnVsahsy6rkH67aXY7HR8=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr41461397uad.15.1563803032923;
 Mon, 22 Jul 2019 06:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190722120740.8966-1-maxime.ripard@bootlin.com> <20190722120740.8966-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190722120740.8966-2-maxime.ripard@bootlin.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 22 Jul 2019 15:43:16 +0200
Message-ID: <CAPDyKFr+W4jofZb1Ajt4hyRFYBvB3M64cM=zW5AA0=gcp6OWnw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mmc: sunxi: Add H5 compatibles
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Jul 2019 at 14:07, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The conversion to the YAML binding left out two compatibles. Add them.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml    | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index 06329115dc6a..d2d4308596b8 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -35,6 +35,12 @@ properties:
>        - items:
>            - const: allwinner,sun8i-r40-mmc
>            - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun50i-h5-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun50i-h5-mmc
> +          - const: allwinner,sun50i-a64-mmc
>        - items:
>            - const: allwinner,sun50i-h6-emmc
>            - const: allwinner,sun50i-a64-emmc
> --
> 2.21.0
>
