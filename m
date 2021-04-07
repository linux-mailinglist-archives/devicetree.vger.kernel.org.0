Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 168F6357234
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 18:34:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232103AbhDGQe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 12:34:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236269AbhDGQe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 12:34:26 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48785C061756
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 09:34:15 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id u11so6219870wrp.4
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 09:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3sa3LQLOBxeCLo4GFb1u0PqEDuUq0YAJuYAYRfsoD8I=;
        b=XGEZEG8EbHfLGhPcqXiItLDJT4EC8MGWqNa55/FxcpuSmGhINWzIW/e9BYzlRfVPpt
         8Chjb6hQDkHVeujT+buj5xf6zermWti0Qa0SXvzuBWMDIif08WUITkDKlht8HjwadRn6
         qg30lmofu72ZRaQjvCbq43VbmbMeVoqpo0Do2QnI7/2YzIZGhJEcH88tECsxLya7eoIy
         Prnh4iCAhphDOTjeJMeBwM1iiaFE3AqZHhZY9w3vseYc7Ue3zzjghADTowGaQ4AXcQvD
         V+FmEBg0xRYYkzZwaRsGjp2wFgVWoSfk0BoGbmG8V8QtodBHue0zrTidePCmDOFr0Z30
         toMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3sa3LQLOBxeCLo4GFb1u0PqEDuUq0YAJuYAYRfsoD8I=;
        b=msYWMvkVQTDgk9of0/zaNiksOv8StKseIYhNtGTmIr5cEitKQMm/Ye+uUmftq1AZpi
         kxl/x+Dr8gvEIO0arSGyLEs4/irPJI9LmZ4llpJ/ERufSlao4Jj9n78vKAtZe60cNU0E
         bC1yxPt03kc4DMCLyctkW90iY4J03Ojm1cN7GgpDIzfuM4tQgl9PdlIn8yW4n0g9DY4k
         Gb8iVM4qakvSB+vA1STvO0oSMP6hr8mbobkhORjlMoW70w6efeAEzLtkOqZrKtPajyy9
         UUU+QrYXXGM4J/3rbo4whs9aaE0Tp1+O4lcbGWHW4+ZiDpGYQz5eDBrLEjwg/dBeS7o8
         soGQ==
X-Gm-Message-State: AOAM530LYT06MSshpnDKT4XhAhbBrdNKnipgwUBP35Mvs4m3NvDuyHKI
        TdDwAKZUPQk1767GUqxZuiw=
X-Google-Smtp-Source: ABdhPJyZI3anJAkuMlf1PNEYlN4Np6KEOgs1BC7KiD0QDsTVwjdGUHm83p1824PzzaAQM0wcXwG32w==
X-Received: by 2002:a5d:58f2:: with SMTP id f18mr5362228wrd.7.1617813253949;
        Wed, 07 Apr 2021 09:34:13 -0700 (PDT)
Received: from ziggy.stardust ([37.223.140.37])
        by smtp.gmail.com with ESMTPSA id e13sm45662866wrg.72.2021.04.07.09.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 09:34:13 -0700 (PDT)
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Fabien Parent <fparent@baylibre.com>,
        Irui Wang <irui.wang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <22814673-e9fe-f65b-cc0f-b02be4f90d1a@gmail.com>
 <CAK8P3a0bp3CUzOQHSX5KYt44j-Njk_u2P=0q-ZQ0HcTBiVVVSA@mail.gmail.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] arm64: dts: mediatek: changes for v5.13 (second round)
Message-ID: <01c82108-64a8-33ee-3984-5bd7056a0002@gmail.com>
Date:   Wed, 7 Apr 2021 18:34:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0bp3CUzOQHSX5KYt44j-Njk_u2P=0q-ZQ0HcTBiVVVSA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On 07/04/2021 18:06, Arnd Bergmann wrote:
> On Wed, Apr 7, 2021 at 1:00 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>>
>> Hi Olof and Arnd,
>>
>> Here comes the second round of arm64 DT patches. Hope I'm not too late.
>> Basically we add several node to MT8167.
>> ----------------------------------------------------------------
>> Fabien Parent (6):
> 
>>       arm64: dts: mediatek: mt8167: add some DRM nodes
> 
> I stumbled over this patch adding a lot of aliases:
> 
> +       aliases {
> +               aal0 = &aal;
> +               ccorr0 = &ccorr;
> +               color0 = &color;
> +               dither0 = &dither;
> +               dsi0 = &dsi;
> +               ovl0 = &ovl0;
> +               pwm0 = &disp_pwm;
> +               rdma0 = &rdma0;
> +               rdma1 = &rdma1;
> +               wdma0 = &wdma;
> +       };
> 
> 
> Something doesn't quite feel right about this, and I checked with Rob,
> who also thinks this looks wrong. I suppose we need to have a set of
> well documented alias types rather than just having drivers make up
> new ones on the spot.

These are needed in the DRM driver, see drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c

I added Chun-Kuang who is the maintainer of the driver. I think it's a good idea
to have this alias described in the binding. Maybe a good excuse to move to yaml
as well :)

> 
> I also noticed that some of the referenced nodes are missing a DT
> binding file, so those need to be added and reviewed as well.

I suppose you are talking about "mediatek,mt8173-vcodec-enc-vp8". The binding
patches are in the media tree [1]. Maybe I supposed wrongly that they will land
in v5.13? Or perhaps I should have mentioned that in the pull request.

If it wasn't about this compatible and you can still remember, please let me
know so that we can fix that :)

I double checked and didn't find any missing binding. Some of them only have the
fallback binding described, maybe that's what you are referring to.

> 
> At this point, I'd prefer to drop the entire branch for v5.13 and have
> you work it out for the next release.
> 

Fair enough, pull request was quite late. I'll queue them for the next round then.

Thanks for having a look,
Matthias

[1]
https://git.linuxtv.org/media_tree.git/commit/?id=dd0008beef0dda915a255691e8b3b0527efaf1d8

