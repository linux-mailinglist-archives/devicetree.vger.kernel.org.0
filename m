Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E905C3571C5
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 18:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234231AbhDGQJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 12:09:52 -0400
Received: from mout.kundenserver.de ([212.227.126.133]:40189 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354275AbhDGQHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 12:07:13 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N6srH-1le9hy3tsd-018LjN for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021
 18:07:02 +0200
Received: by mail-ot1-f49.google.com with SMTP id y19-20020a0568301d93b02901b9f88a238eso18546649oti.11
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 09:07:01 -0700 (PDT)
X-Gm-Message-State: AOAM532SyL3ONlsG1j/nYiCslj25YgEOx8yOIFXGxZzyuO8MQQjfD1/2
        Ft67syj3SAh3qYc50nl2QSo2YEZ6WwOVHDsbzQs=
X-Google-Smtp-Source: ABdhPJymSQJTahzo74k3DCXqZLabZ7pj1oDnsEr/iW3XDliuXTMvQkoUagOIuZhBUsyHUIVKVPi0LMKTb9enlCKqF4I=
X-Received: by 2002:a9d:316:: with SMTP id 22mr3544860otv.210.1617811620677;
 Wed, 07 Apr 2021 09:07:00 -0700 (PDT)
MIME-Version: 1.0
References: <22814673-e9fe-f65b-cc0f-b02be4f90d1a@gmail.com>
In-Reply-To: <22814673-e9fe-f65b-cc0f-b02be4f90d1a@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Wed, 7 Apr 2021 18:06:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0bp3CUzOQHSX5KYt44j-Njk_u2P=0q-ZQ0HcTBiVVVSA@mail.gmail.com>
Message-ID: <CAK8P3a0bp3CUzOQHSX5KYt44j-Njk_u2P=0q-ZQ0HcTBiVVVSA@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: mediatek: changes for v5.13 (second round)
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Fabien Parent <fparent@baylibre.com>,
        Irui Wang <irui.wang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:NrmKc5AzZD500iEjEF7KYYDMzpBWDWfKqcEMDKzppHORsuDLpNM
 8Siu2krapKZnFrBU+pFD1HwrVGtHGxjwNH3FvcksQtXmZCqbSZh4zoJ6mbvWibg2P23v7qx
 +T1THqNWsdHuYeY+VMP5CETMgj7VcEmSscSh0nTZ+epSmmr/FiIVC1xojtHJeEjRfGa6PF2
 fJAoov5QqKXkoQKwdNSgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VoIV5e1C2nA=:4bqhfp1Km91LlDSe6Sef8J
 zCtrtc0sOvcdbKnGmkZd1i7OZ5XWSI4/ya7QDqGhgj7vscqeuM2z+gTpLsVFI2u/Ba9lLzVUY
 Jz0B3L36+Ud5bnHMqLFGkSNe/v/TIrojBG1pVLNVJOds84Bfp2S9iFDhmwY6Lc3iTXaMcTEVx
 7BjavWh4X3mzJxICVH1uAjnZkGRyvYB6Q0pRREUrvUVEYVG/aEyYx9cxGtR9hkTqafoE/ri6E
 mzm68XeMI5vaGFS6M5QfWTAECyvdPu8+r5KbbwB5qPqumiLoORkWfB4Tty13DEVWalHE1IXui
 NBbJJvOh+Tr28F6acxUFwVyjqBirGoLfe6zh4zhp4e8SxrZrRhbInr1kLD2yM8oNVnvOV270r
 3Mt8Pd4uhTJeAOHmQkpJC2+wwRXmTANPqMIUZ1aPkofPsMcQVFP0xeldQDkWrfcAQAoTJWbAl
 OaQXut+Tqu0vY3TvhGfDhzz2ZJzRwBA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 7, 2021 at 1:00 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
> Hi Olof and Arnd,
>
> Here comes the second round of arm64 DT patches. Hope I'm not too late.
> Basically we add several node to MT8167.
> ----------------------------------------------------------------
> Fabien Parent (6):

>       arm64: dts: mediatek: mt8167: add some DRM nodes

I stumbled over this patch adding a lot of aliases:

+       aliases {
+               aal0 = &aal;
+               ccorr0 = &ccorr;
+               color0 = &color;
+               dither0 = &dither;
+               dsi0 = &dsi;
+               ovl0 = &ovl0;
+               pwm0 = &disp_pwm;
+               rdma0 = &rdma0;
+               rdma1 = &rdma1;
+               wdma0 = &wdma;
+       };


Something doesn't quite feel right about this, and I checked with Rob,
who also thinks this looks wrong. I suppose we need to have a set of
well documented alias types rather than just having drivers make up
new ones on the spot.

I also noticed that some of the referenced nodes are missing a DT
binding file, so those need to be added and reviewed as well.

At this point, I'd prefer to drop the entire branch for v5.13 and have
you work it out for the next release.

       Arnd
