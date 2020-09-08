Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4932B261D54
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 21:35:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731783AbgIHTfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 15:35:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730983AbgIHP5a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 11:57:30 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21F4C061A26
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 08:30:02 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id d15so8519496lfq.11
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 08:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Di/sRB46OQMighQk5dHQr7eSM0Xs2HG6mVJOqpHAQVA=;
        b=wivPxHYd6n7P0VAEx89iYB0CDqiBmKAo8bMzcLJfB2IiCRpxk5jYQTa829s47y/wno
         40r/qjNvtJXqW07sGgOhSY/HZAjUZxaTZhtMPSqKN9fEpuZ4CSnpLMNQuWlpJzLMM7fs
         IjlQCq8zRJb/BaBSivOSB4R5Wwu4b1YYCM8rPodch7mYWFCK70cCGVs8t8TZjLu7WN1e
         SiYzFROl6IUYKLWKvvO61Za6fBzGcFbxWI2+IBQ9rr45F6MlSdVG6CUeyWlEB/Wpi3UY
         quha/AzAYYYLaGPkTLNp/jY5SKnnT236N0YwjedIYIuNHh+ogwxXas/gPuTCgKN9zRYj
         CLJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Di/sRB46OQMighQk5dHQr7eSM0Xs2HG6mVJOqpHAQVA=;
        b=iCp2X4gZQiWFYLwtt/aAaAEuL5paIkTZhn00ymccsy0+LBpynGvbkSIs3wksca5KnI
         eZGSzoZ2Nkp/UuDEm/eZN0dtLhEWockfXr3/PlJF7khyxFicrQOAAsw7Yl6D79w376nA
         sQQ7eBbG66cA4BhK1V/K1Bmj9VhG7vlosXzn0WRq8si2Rv1iExJAhae23cY7Ayy2bwOC
         8T8BnifhlRTFsKxbstt/iB+YUU0Wsef7k7MVhiBbXSJZnYOvrYSt4A7uSn0T+EL79Of5
         oSmpn8brhP6wRXJ1Iszk9uZHb7S0rhtRV5EKNTN3V9br/cOOkXIlaLrnrLJ/0q/y3r/V
         wlXg==
X-Gm-Message-State: AOAM5321AmYRoIgTrpXxsRkLLc4NbAxMoF1re7HnKQV+KklJaAlUPbbD
        2sQQg26lF5moXMRYb8cgqjWt1g==
X-Google-Smtp-Source: ABdhPJwjWseqWyMRsUahDpNm7GhAt9M3g9XoH9LfcntDMA996o6s40LVXSJbHhYXWYKWxabeQtFRwg==
X-Received: by 2002:ac2:5327:: with SMTP id f7mr12488078lfh.8.1599579000908;
        Tue, 08 Sep 2020 08:30:00 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id l4sm10066362ljg.42.2020.09.08.08.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 08:30:00 -0700 (PDT)
Date:   Tue, 8 Sep 2020 17:29:59 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH 0/2] Add VIN instances to r8a7742 SoC
Message-ID: <20200908152959.GC2984648@oden.dyn.berto.se>
References: <20200907144509.8861-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200907144509.8861-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lad,

Thanks for your work.

On 2020-09-07 15:45:07 +0100, Lad Prabhakar wrote:
> Hi All,
> 
> This patch series adds support for VIN to r8a7742 (RZ/G1H) SoC.
> 
> Patches apply on top of [1].
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/geert/
>     renesas-devel.git/log/?h=renesas-arm-dt-for-v5.10

For the whole series,

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> 
> Cheers,
> Prabhakar
> 
> Lad Prabhakar (2):
>   dt-bindings: media: renesas,vin: Add device tree support for r8a7742
>   ARM: dts: r8a7742: Add VIN DT nodes
> 
>  .../bindings/media/renesas,vin.yaml           |  1 +
>  arch/arm/boot/dts/r8a7742.dtsi                | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
> 
> -- 
> 2.17.1
> 

-- 
Regards,
Niklas Söderlund
