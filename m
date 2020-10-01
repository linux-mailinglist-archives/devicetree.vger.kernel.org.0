Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70E0827FC1B
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 10:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725975AbgJAI7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 04:59:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:43612 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725894AbgJAI7m (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Oct 2020 04:59:42 -0400
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 913E320BED
        for <devicetree@vger.kernel.org>; Thu,  1 Oct 2020 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601542781;
        bh=dxjby0k4ruLwHuefwwJvXuvzJQNaPvKX3XCpTvZTRCM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Kx4RWEsmwMlKo2SzSFITiZFfDMjwJcFrkAWQlVpKSnDSWi6udeSq8QCGHrZs/sYo5
         6oucwe9d7kRUToShABZ1ivYwv70Fvhm6bjhemhTbqPu4Sc2ghVP/xM8JNcc0qFETQJ
         LAXsdQhVfIO4I+z4HtxOA1F0WtMHMEU34JyvCkac=
Received: by mail-ed1-f53.google.com with SMTP id b12so4778536edz.11
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 01:59:41 -0700 (PDT)
X-Gm-Message-State: AOAM530RwHN2B44gv7NAhbwlMHmq43cIuKaSdqvyg8Jf6XL2lRwmNZJZ
        RmgIyXkuOUKx9Y3k5rvVWHdgrK0a0AYcct3QrLQ=
X-Google-Smtp-Source: ABdhPJwUjk9wE19HiYa3JYp+FUpf9iC9/3rDAVR8kbLcgeAE1A3Y/+vLDwP6i33Po/TVw9jWZyfHlUOvWS4rhI7kkPQ=
X-Received: by 2002:a50:e78f:: with SMTP id b15mr7208895edn.104.1601542780136;
 Thu, 01 Oct 2020 01:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de> <20200930155006.535712-8-l.stach@pengutronix.de>
In-Reply-To: <20200930155006.535712-8-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzk@kernel.org>
Date:   Thu, 1 Oct 2020 10:59:27 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf=0Vf-YonZ2dw1g5cz_i-m3gkrO-gGzBJFPrdfh0FG4w@mail.gmail.com>
Message-ID: <CAJKOXPf=0Vf-YonZ2dw1g5cz_i-m3gkrO-gGzBJFPrdfh0FG4w@mail.gmail.com>
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Sep 2020 at 17:52, Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Normally the reset for the devices inside the power domain is
> triggered automatically from the PGC in the power-up sequencing,
> however on i.MX8MM this doesn't work for the GPU power domains.
>
> Add support for triggering the reset explicitly during the power
> up sequencing.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../devicetree/bindings/power/fsl,imx-gpcv2.yaml    |  6 ++++++
>  drivers/soc/imx/gpcv2.c                             | 13 +++++++++++++
>  2 files changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> index bde09a0b2da3..9773771b9000 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> @@ -62,6 +62,12 @@ properties:
>
>            power-supply: true
>
> +          resets:
> +            description: |
> +              A number of phandles to resets that need to be asserted during
> +              power-up sequencing of the domain.
> +            minItems: 1
> +
>          required:
>            - '#power-domain-cells'
>            - reg

Separate patch for dt-bindings, please.

Best regards,
Krzysztof
