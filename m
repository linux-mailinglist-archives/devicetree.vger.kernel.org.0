Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0CA5A3A98
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727979AbfH3Pl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:41:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:52414 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727751AbfH3Pl6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Aug 2019 11:41:58 -0400
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B9D9F23407
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 15:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567179717;
        bh=lsv2HRJcjTPCOFeqJ4kraE6eDC6maYXr6PJXlqUCXaw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=oBz2Tae3hdCx6RiJE6e45gTAvbSObmBRsWEQzcAIaH4OfYdj1Bwv0vHUi6REFP2LQ
         6bH7KOZUI5o5kzfIK74iLaIyT5z0ZxGRpET9Vtq3CuX8I/MGq14AwF2ACzqcSyp6ry
         n7lDiVUgjAxr55lcJd4zoTsHIs2rN8eUIX84j6FE=
Received: by mail-qk1-f172.google.com with SMTP id m2so6460210qki.12
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:41:57 -0700 (PDT)
X-Gm-Message-State: APjAAAVN2A9Nv2dnjy7zHRA44nxzwt1BlOmcUtyKexUW/WSJMx96f+GU
        PQsKgE/72VvBHGoSOwkx1LFfvEtHauhAy9SGFw==
X-Google-Smtp-Source: APXvYqx9Je0tyYggCCfvH9K5Yx8giZ/vSqa+dRS9Eg9xmRkJhQxAfUT6bndfMmkl21JD4YuSVXy8kryHoASXVusLWWo=
X-Received: by 2002:ae9:e212:: with SMTP id c18mr10022345qkc.254.1567179716986;
 Fri, 30 Aug 2019 08:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org> <20190828125209.28173-3-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-3-mripard@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 30 Aug 2019 10:41:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+ZQy02-3TOyagfdtsxFJkMkSiQh0-o1MpcbgvuM_e8oQ@mail.gmail.com>
Message-ID: <CAL_Jsq+ZQy02-3TOyagfdtsxFJkMkSiQh0-o1MpcbgvuM_e8oQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] ASoC: dt-bindings: Convert Allwinner A33 codec to
 a schema
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
>  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
>  2 files changed, 57 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt

Reviewed-by: Rob Herring <robh@kernel.org>
