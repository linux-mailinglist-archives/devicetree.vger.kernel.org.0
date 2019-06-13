Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3AD144374
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 18:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392384AbfFMQ32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 12:29:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:50442 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730925AbfFMQ32 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jun 2019 12:29:28 -0400
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id AF67D20449
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 16:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560443367;
        bh=IA1sl0WAgVc4QRwi3osxrVID6baMw19n8gHARPi9JpU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=CYROQRbBeQ23sCVK/3AKdfxTVhvLgbjCcGVYXOn2zzXxSCWozaxM14r2svT0lYXae
         ejpeEdTSchQ3tpJALRPXctxlJHKrAq8mzPoFsfzRjyWnw/KAVONU0NjLNzPvhyjbRx
         qfvaJBZT0A9/+0Zrm31Ke8PN2K9X0cvIXpcbwjcQ=
Received: by mail-qt1-f169.google.com with SMTP id x2so22374624qtr.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 09:29:27 -0700 (PDT)
X-Gm-Message-State: APjAAAW/624PsJTeJtg16cF2ZRO4gljd5Jm10h1GbQ9OQSfHYKQq+lLl
        PsYCeXG2BfMUVuA2mqn950JNJZv/8RS9xH8+cA==
X-Google-Smtp-Source: APXvYqz7nRNHAVqybvGqVRQjCt3XMPBnSZESMahCXBsUKT+OJpLrP7rhzia7S5ePIDFWLy/TxydSZBG/gc1IevYjNdc=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr4467509qve.148.1560443366968;
 Thu, 13 Jun 2019 09:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190613085712.22241-1-maxime.ripard@bootlin.com> <20190613085712.22241-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190613085712.22241-2-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 13 Jun 2019 10:29:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+OsJthxY2E0VKRROk3iaTfWoOw62GKQTLjtxaEg2tMRA@mail.gmail.com>
Message-ID: <CAL_Jsq+OsJthxY2E0VKRROk3iaTfWoOw62GKQTLjtxaEg2tMRA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: nvmem: Convert Allwinner SID to a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 13, 2019 at 7:50 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have an efuse supported in Linux, with a matching Device
> Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../nvmem/allwinner,sun4i-a10-sid.yaml        | 51 +++++++++++++++++++
>  .../bindings/nvmem/allwinner,sunxi-sid.txt    | 29 -----------
>  2 files changed, 51 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt

Reviewed-by: Rob Herring <robh@kernel.org>
