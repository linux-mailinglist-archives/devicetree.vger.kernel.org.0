Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9DFF70167
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 15:43:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729828AbfGVNng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 09:43:36 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:41586 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727805AbfGVNnf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 09:43:35 -0400
Received: by mail-vs1-f67.google.com with SMTP id 2so26091114vso.8
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GzeJmpKD7dB1BcnAqy2fLUAETNrLhEZq/GzIzifX3rM=;
        b=k9ec/yRYrEBUkxwk582HRuZ4bh/6llTYhV1Lyfw+mNJYkWylldnN6VCrx6g4FgIzOf
         fFVYTtxL/EXr48ISMBlPUUt+SozF/0RKzg5JpMyJDF56m6g34zuYVofS6Kb3JBDWO5w1
         BjfwU4DuUN9g1mQBXXBMm66PmXKSpUM7AcxKNOTuSQGH2+ma17JiRCGnnq7FLmqGO6/y
         LRDeoMSaw74ZKM74DzzqPcgsplk46aQBAXlGpyia1xuy8Lw7R/sYRAeS7Z260ZzDU5SA
         fm0eq7nLgw5Svdvk04NOKL/eBzFd18N2cO0L1dZV+uNWucq3jm+vdwKHXay0YfyKs1kX
         pL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GzeJmpKD7dB1BcnAqy2fLUAETNrLhEZq/GzIzifX3rM=;
        b=G1O0U0TuXCtE4WG6hfv6J2oIOPFQVVUM5i0pfDUm6Vi4eyXbReDeRFfFekedhi528K
         5/P8F5r0iqWV5QeEJu4i3rA05FzmLiWu6zmlpnJM+oLbowi/EzgtwcHSHBsjEW4MIShe
         6rZulm54LSIA5oY5za3jlhsRlNr4GNEL8qwHRHE9d2QPr3muMHR8dsMVj/ukMNeodBCq
         qRI59Y62Y8opJr/gdqL6KhTv/q4lwneM29GWaYLtWVIf/av8KHWV2IPcHcEHL+e/hF/v
         emtFoEyg5iFtd8QDo09hOqYL14LREOUaNyegTJVwECFxkFbenIzkWXF79fIKCnMWB9Cv
         QfRg==
X-Gm-Message-State: APjAAAXy69iDYF/jkQs2B9zoJTBBT9JgVpkkwoJ7gycPTria69LbJ1kk
        hbUA8h4x/qIoOqvEg0Jdzq18ABIgp2mmVpK8ODnIBA==
X-Google-Smtp-Source: APXvYqysofOLp0mqm8qYUMlKBMjSTE6XdBRitpLtn07et9m3ZF2oRHXMEjMC127T6JQoRdvv8wb0ReINVSNZU/xMTKw=
X-Received: by 2002:a67:8709:: with SMTP id j9mr42148022vsd.35.1563803014581;
 Mon, 22 Jul 2019 06:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190722120740.8966-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190722120740.8966-1-maxime.ripard@bootlin.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 22 Jul 2019 15:42:58 +0200
Message-ID: <CAPDyKFo-HwgkuY1Dat=FXNior0fFcDdD_QtxWqFb5rYGCLNc6g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sunxi: reorder MMC compatibles
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
> The MMC compatibles in the bindings are not ordered as they should, so
> let's make sure it's sorted.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml        | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index df0280edef97..06329115dc6a 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -29,18 +29,18 @@ properties:
>        - items:
>            - const: allwinner,sun8i-a83t-mmc
>            - const: allwinner,sun7i-a20-mmc
> -      - items:
> -          - const: allwinner,sun50i-h6-emmc
> -          - const: allwinner,sun50i-a64-emmc
> -      - items:
> -          - const: allwinner,sun50i-h6-mmc
> -          - const: allwinner,sun50i-a64-mmc
>        - items:
>            - const: allwinner,sun8i-r40-emmc
>            - const: allwinner,sun50i-a64-emmc
>        - items:
>            - const: allwinner,sun8i-r40-mmc
>            - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun50i-h6-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun50i-h6-mmc
> +          - const: allwinner,sun50i-a64-mmc
>
>    reg:
>      maxItems: 1
> --
> 2.21.0
>
