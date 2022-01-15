Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFFCA48F87A
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 18:29:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiAOR3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 12:29:25 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:36828 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbiAOR3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 12:29:25 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D40F260E7F
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 17:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C3D8C36AE3
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 17:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1642267764;
        bh=5lA2VY9bR311PFBLCn06y4hfL8BVUCwz/+B7MX0FmzM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DF/YvwpJiD6XzRpWqS78hRk2ZHZNL0piQaSetmeHtjFf3J+DRPU3OO/+adtzCD+1N
         3GdSOqmXSFvCoT4lW1ZaMlq5dijD+m3SL5o5bDvSULiWdHebKg39Yos6LnOw8if++d
         CemNboQJmYLDZtKqO3C3iwDVbPVlW0+TXCnK25u/fXH1NmJPYb2SKC4g6UhTDEeIDL
         l1vVh6GVj0y7pL1bX8HEXdDLG5k4gVicOZjASdQBZ2n2TkiGQ90ICZLxFByTiEvmDI
         iVrgcqWkDSBE4WFiZPPr8wKh7A5BUF3DMwHt9FDOHRK9taPhx8m9d3cVkgrEV2MtO8
         CSJTIm4IUfnow==
Received: by mail-ed1-f50.google.com with SMTP id b13so46864060edn.0
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 09:29:24 -0800 (PST)
X-Gm-Message-State: AOAM531Xl8XE32WtFSdLDOat9CiNP5IYZyyds6biqqLbq30/FzM0UrH6
        hom7ZVwFE7yolBH9UDoeBNlcqzQXG6aErjnVig==
X-Google-Smtp-Source: ABdhPJxDQ9cPq17DNilAEMCjSYU7qqzqKPL027S9zuRvKb7W6VdcKaGF/3iBvKOOeUi1IEJqS7i0eDRZZO8TBFkFiI8=
X-Received: by 2002:a05:6402:4315:: with SMTP id m21mr13953213edc.67.1642267762614;
 Sat, 15 Jan 2022 09:29:22 -0800 (PST)
MIME-Version: 1.0
References: <20220115093557.30498-1-alexander.stein@mailbox.org> <20220115093557.30498-2-alexander.stein@mailbox.org>
In-Reply-To: <20220115093557.30498-2-alexander.stein@mailbox.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Sat, 15 Jan 2022 11:29:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKfSLb2EB4AJObPqHN7iKm555xHuiNAdmd4mu4jgW0H1g@mail.gmail.com>
Message-ID: <CAL_JsqKfSLb2EB4AJObPqHN7iKm555xHuiNAdmd4mu4jgW0H1g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: meson: axg-fifo: convert Amlogic FIFO
 controller to yaml
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 15, 2022 at 3:36 AM Alexander Stein
<alexander.stein@mailbox.org> wrote:
>
> Convert Amlogic FIFO controller documentation to yaml format.
>
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Things to note:
> First of, Jerome, sorry for adding you as maintainer, but
> 1) it's mandatory
> 2) your are the (only) author of amlogic,axg-fifo.txt
>
> Please add your Signed-off-by if that is okay with you.

That's not how Signed-off-by works. 'Acked-by' would be correct. But
as the only author, I don't think that's required here.
>
> License is mandated by checkpath, not my choice.

checkpatch doesn't mandate anything. It is guidance. If you copy the
existing binding, then you inherit the default license (GPL-2.0). But
if Jerome is okay with relicensing, that would be nice.

Rob
