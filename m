Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5879B2D4162
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 12:52:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730926AbgLILt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 06:49:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730923AbgLILt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 06:49:26 -0500
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E974DC0613D6
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 03:48:45 -0800 (PST)
Received: by mail-io1-xd41.google.com with SMTP id t8so1328705iov.8
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 03:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j3uGWJhYTw6GKZHD8wfKlSNKe6wdrtYdPYkKgKUgxgg=;
        b=06+rhWd8+y6iJvjo/+iWgqONBMCsCjSjihXULqFxCdI19FRSFOE1qKqDyNI8Py53HG
         x75OopikQdvCY0j75xpQhzRPu6xxO9SbOTXqDwZOBF2F5zhHfSy1TE6N+PZl82GJp6N0
         OlrM1Z2dWgOu9xL/Qc8w2WJQ2os624p0Wcfopz0R4O7uxrOFRX26z0S4U95Y21kP/1c7
         aSQ0quwz7yJMMoWIWsXn4SW75CAGDVQENl3/dfcr3Vw6CCoASlPMUbY1kKEVD9mZtsYe
         nhg5QymztkxgSfizfVJPUWcNih7BRHPPQh1ZZAr+3oncmj6CaKJrLu8Rmddc6m8z5eTa
         QcvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j3uGWJhYTw6GKZHD8wfKlSNKe6wdrtYdPYkKgKUgxgg=;
        b=hNOWbXZTWX0ggk6W0lWsVPMaFW2hSYvxr5kc0RKAqpY1ozvzYycS60D+gy3amhmz2Y
         SR9Y8hnhSjgmqyLQUaSRkZ05D4GymX7lQH7mD2tu8PtrJMmdk5GjjFuzJVAF7A55nw4l
         QhYgyIG7LhzfVB/6/oj1sHJ0NVzYJ9788ld913+nSXPNirrQwGz1LgCRwAy8qe54e005
         H38DdTuWePSFFsTlCcmg58WXbFPvEXUVytvJ3UPK3KtCydS2ZJiTcIlcDJgBGeVkiA8+
         a4r59AeKCwQjCwpxOfkGXj6rMuGypfG1mnAmVGeh97xxslU29u054TwnQEClQMkgDvMi
         XUVg==
X-Gm-Message-State: AOAM531FE4F0KwKfBa/oR6GuM2iDBoY2/l7K5/x/SyoZsLyrsFJW9/dw
        FrtvkFaaDFRwBJ+lbOYzZgsYDkq7lZTJ/fi+clDEhQ==
X-Google-Smtp-Source: ABdhPJwbQYL5n5RxpdrD8qygMiWe+C20JC4G4yrDR2T5YkOM/MbdAUfZY6za7jqeE7Dk8OtDbfD6reyrXup+NvBRUpw=
X-Received: by 2002:a02:6557:: with SMTP id u84mr2532784jab.82.1607514525257;
 Wed, 09 Dec 2020 03:48:45 -0800 (PST)
MIME-Version: 1.0
References: <20201209114440.62950-1-fparent@baylibre.com>
In-Reply-To: <20201209114440.62950-1-fparent@baylibre.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Wed, 9 Dec 2020 12:48:34 +0100
Message-ID: <CAOwMV_xMfSV9+zTZzUgB5XYNZR0ed8J=H9G39++bBJNWiR_Ehg@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BPATCH_v2_1=2F2=5D_=F0=9F=93=A4_dt=2Dbindings=3A_dma=3A_mtk=2Dapdma=3A?=
        =?UTF-8?Q?_add_bindings_for_MT8516_SOC?=
To:     Sean Wang <sean.wang@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh@kernel.org>, dmaengine@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sorry, resending without the unicode symbol in the title

On Wed, Dec 9, 2020 at 12:44 PM Fabien Parent <fparent@baylibre.com> wrote:
>
> Add bindings to APDMA for MT8516 SoC. MT8516 is compatible with MT6577.
>
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>
> V2: no change
>
>  Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> index 2117db0ce4f2..fef9c1eeb264 100644
> --- a/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> +++ b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible should contain:
>    * "mediatek,mt2712-uart-dma" for MT2712 compatible APDMA
>    * "mediatek,mt6577-uart-dma" for MT6577 and all of the above
> +  * "mediatek,mt8516-uart-dma", "mediatek,mt6577" for MT8516 SoC
>
>  - reg: The base address of the APDMA register bank.
>
> --
> 2.29.2
>
