Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1EB25A83F
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 11:04:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726927AbgIBJEM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 05:04:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726821AbgIBJEA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 05:04:00 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C16C061247
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 02:03:59 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id p185so2158385vsp.8
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 02:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=itlRbbBGemMZj6RC0w5yK0m6b8wHA0Bm1ChisOFrb20=;
        b=yBNyr78rhsjgGIM6THzbWs8HNIWZJ3x9mSBKPQCKbhJk3Z50mWkfvV36AeniWzm6Qe
         aV0O3gIzUSf2TBtCm8WiZfgTVOWDl5LrvDeSwdxS3af72jZ/nJ+ADWDAiInBepByAp1e
         PL7ZPKwuNQeUZHw8De3+ZvVR+Ey0sVdeRLxMKBdV4K67r0wUlexb75TREUjIyXlGg7is
         PihY0GAo6MCkNFPdUGtP5slwKjLpJZs9K1Q6/AlqFWGkvARIzhXvAXjseCwYU9TutPp2
         noJqeDASqYPwPcHT+7ZIoQciA7tsbb9NCIxdulFry0shP9Iscn23Cvo1dpeWNkQmxHu6
         0eIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=itlRbbBGemMZj6RC0w5yK0m6b8wHA0Bm1ChisOFrb20=;
        b=g2Uj1J9mG1bt7ktdDD+/DHVxrrunzxTHryFJK3pk1t/coL/mKF64k/aKlpF/xm42Jf
         v1iMNPGZIxciKR89KFdl4PqXy/KIIUaL3rsw3+Hz6hrIw6jY2ahG0AMJKG2tDimwImsp
         yg+dFK03JbqDES0vacFWFZ/wMatj81VCIw0/N4P4xUkc2rq4ShY/L2Ae6jV9ZcAvnVHl
         LrGoKsw297CwYxffYUbj7xtbYjQfkJUds6jupjtrogKGq0j4RBTy/fSaS0Dc18s8dw5D
         7Mno9TYb56Y689kA9wCMolLmY1ciOH2Qz5vBIhkwqrCeWeZfazo0xJupykmJFjhfpQWz
         tLbA==
X-Gm-Message-State: AOAM530mgnygzIXVS4qcz8AGlNexgnGmlIs20WK4iVm0KmsItKveEdOT
        1uuC8bkAWpMwZ97/ha9BO1Nt1qJj31/Vixp8cKhhlQ==
X-Google-Smtp-Source: ABdhPJxjEM29jRCiVuNOJSS+uxtsMkMIs0ZX0+YfZ9Sew8Mzc1PTjMp9+B4YulTDlW5/psJ9L3xHp7zU+/tu3AYfYyg=
X-Received: by 2002:a67:7c4e:: with SMTP id x75mr4509007vsc.60.1599037439148;
 Wed, 02 Sep 2020 02:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200901085004.2512-1-matthias.schiffer@ew.tq-group.com>
In-Reply-To: <20200901085004.2512-1-matthias.schiffer@ew.tq-group.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 2 Sep 2020 11:03:23 +0200
Message-ID: <CAPDyKFrC62rLOQraHvh=8APWDk84YYo5YEg=uoUsgAeMx19G=Q@mail.gmail.com>
Subject: Re: [PATCH mmc-next v4 1/2] dt-bindings: mmc: document alias support
To:     Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Sep 2020 at 10:50, Matthias Schiffer
<matthias.schiffer@ew.tq-group.com> wrote:
>
> As for I2C and SPI, it now is possible to reserve a fixed index for
> mmc/mmcblk devices.
>
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> v4: moved alias documentation from example to description
>
> v3: new patch
>
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index b96da0c7f819..f928f66fc59a 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -14,6 +14,10 @@ description: |
>    that requires the respective functionality should implement them using
>    these definitions.
>
> +  It is possible to assign a fixed index mmcN to an MMC host controller
> +  (and the corresponding mmcblkN devices) by defining an alias in the
> +  /aliases device tree node.
> +
>  properties:
>    $nodename:
>      pattern: "^mmc(@.*)?$"
> --
> 2.17.1
>
