Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7442706E1
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 22:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRUVD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 16:21:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUVC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 16:21:02 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81FADC0613CE
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:21:02 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id m17so8389184ioo.1
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gfig0mzAlJaPnbwPG2ndnN/ke6uDHaqhq3zr7HC85pA=;
        b=aHphpi0lYBZrG5SwR3zA6j47tjwA3IFz/1lv9Q1YzAeZJ0ruLVOoCGhj6r3uLlfyqk
         FSkVnYTGFg5Hj6zdj1ADRrOlOu6JbrwDGaDOZ6YW0URo8rk6IwRUjLPk7HBmufZSo4CU
         Id0j0JXSxKXuLwW9rJ7svN+ezFPoLvXprwegQ1YamMTC4P0WfiAeBadCGBWUPq1sTmBx
         zrbGIjbWS89Aup+3l08sli8yjOfyOwK0trSuEJIZnFBY1XxsRRURJI5L3drECod7VhzZ
         iOsL5vxRAxHs1APjlqlFgd56Mn5kq8aFhFFFtA4ShJF4moO34nP4ncUpX+tRyjfGlZGB
         7sZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gfig0mzAlJaPnbwPG2ndnN/ke6uDHaqhq3zr7HC85pA=;
        b=YriQP7fl9ryaUQGGv+qUpUt4Y5GgzYwIIQh+v39YruHMX12Gkv5tHx4kvTT/HGIYfZ
         LW6l7+Tg2uBMDOM2y7ZX+wlRMTFkXuOEMjvLdjIbWdijyKCEWhl14pNr4Jsb7a2Mqj/h
         H/NTvXxX8vDuUOJxhX0p+Xxv2E5pPbn1X3Q9zdHJM9xE5dj0UwLszHe4iBEOog8mPDTv
         bftJYnqQmOJo4knqgi01jjxPaQkSM1hO53mxVKeQyNIP80dDpufN/unbpos2nrmhbKRE
         o7yUmCaqe4+0CykoGdsVgSejwNy0bNbNV4K8NJcEawT41cbjLmYgzmMxicjrVOat5CwO
         02fQ==
X-Gm-Message-State: AOAM532ac8qI6kkZKPBTiNY3uhwAz76UZkqGY/RmdAS+bjfiuMMGP+pe
        3h4AtRuq4iWRK3Lpy+v/2SfLIg/5R0wCT4reVMss9w==
X-Google-Smtp-Source: ABdhPJznCrMerWd7RxXkanBXIr5zeV+S2EftTdo5ViYZNZHe4okH4/3nmpXzWouRHQDNJgGYo2EjlwzLLu5qx4yl9LI=
X-Received: by 2002:a02:c60b:: with SMTP id i11mr2041563jan.82.1600460461816;
 Fri, 18 Sep 2020 13:21:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200910172826.3074357-1-enric.balletbo@collabora.com> <20200910172826.3074357-4-enric.balletbo@collabora.com>
In-Reply-To: <20200910172826.3074357-4-enric.balletbo@collabora.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Fri, 18 Sep 2020 22:20:50 +0200
Message-ID: <CAOwMV_z9OBpNqStCH+HEcwAK-TwPVeMH4LwJbp78T1P=t9bEKg@mail.gmail.com>
Subject: Re: [PATCH 03/12] arm64: dts: mediatek: Add mt8173 power domain controller
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        drinkcat@chromium.org, hsinyi@chromium.org, weiyi.lu@mediatek.com,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric,

> -               scpsys: power-controller@10006000 {
> -                       compatible = "mediatek,mt8173-scpsys";
> -                       #power-domain-cells = <1>;

This change generates a lot of warning when compiling the MT8173 device-trees.

Warning (power_domains_property): /soc/mutex@14020000: Missing
property '#power-domain-cells' in node /soc/syscon@10006000 or bad
phandle (referred from power-domains[0])
