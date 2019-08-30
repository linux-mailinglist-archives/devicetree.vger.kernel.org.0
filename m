Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1E19A3AA7
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:43:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727751AbfH3Pmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:42:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:52982 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727434AbfH3Pmy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Aug 2019 11:42:54 -0400
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E66EF2342C
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 15:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567179773;
        bh=SjF+r0sRfSw6guTPuHirWIwopvlcS/mInacUNuCDDCA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DM1CXlk1CMfyPGG+0KfVCNMQGXt7kL6/zsk9Vb3449Al86pJsn6TSalEvXkUtHuzn
         b11LJRp6XB3YsulP4B8pzRz9DudGUcUlJV/mtIvvRYPNXsdwNkGrioCMtzSilJ1tCB
         0lSAXuF1GBwBeDXKDif2Bn5lXm6RoGN3QwI5rrYk=
Received: by mail-qt1-f179.google.com with SMTP id u34so8073243qte.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:42:52 -0700 (PDT)
X-Gm-Message-State: APjAAAUN5ky5KdFbkVVd+AY7sMm42r4so9WiT94alSJKIIWcZwZqj5s3
        1tCVKXymC8243XH7Vimb9cDeyYCHPs5sZ4xE9Q==
X-Google-Smtp-Source: APXvYqzXCHsQQOsvgsiISFEf/Zttwtxmy7SUxWU0aJkqVW9uY0SYjqHWdC/KWYvM+YsA8KFQRpWU9v+qwwnvZLkjrU4=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr16280140qtc.110.1567179772161;
 Fri, 30 Aug 2019 08:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-1-mripard@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 30 Aug 2019 10:42:40 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJBs_vmqbe9DmEjNJR3YO6-3mnyxrTbYq0b++0eGJnU3w@mail.gmail.com>
Message-ID: <CAL_JsqJBs_vmqbe9DmEjNJR3YO6-3mnyxrTbYq0b++0eGJnU3w@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] ASoC: dt-bindings: sun4i-spdif: Fix dma-names warning
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
> Even though the H6 compatible has been properly added, the exeption for the
> number of DMA channels hasn't been updated, leading in a validation
> warning.
>
> Fix this.
>
> Fixes: b20453031472 ("dt-bindings: sound: sun4i-spdif: Add Allwinner H6 compatible")
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>
