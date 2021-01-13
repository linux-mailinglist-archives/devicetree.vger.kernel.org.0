Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A90B2F4C09
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 14:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726433AbhAMNIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 08:08:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726381AbhAMNIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 08:08:52 -0500
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32DE0C061795
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 05:08:12 -0800 (PST)
Received: by mail-vk1-xa32.google.com with SMTP id l187so491573vki.6
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 05:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F1VCZY/xQ+vpNaSDs4SQBOLwRNdfsfyajYOieVemPvE=;
        b=Ymt+5sQxFikWk16r7SfFK77X/rN1bJIfBj6jyTKFNxEBjIcK+Th6zxAkw/Lw9nZW6Q
         1I/hwM7Jn6RxpVxdl8TVZu7v/IZaX6wXF4utZ1ZzOV5qDXY38AYWml8eUYkjazwqgBF2
         5jDrcvtufb47T0ST8IjVPkdvv41vNqxD+JqFMnC/jAs0UQNJrKgzMwgQP96uuhUBHq0e
         1bIoYBqOyBa/7aaIlwxkDTygkPpXSEgmJt1PLBsMdVNyzeyeVVX6HfxVpOciQqC8xR2t
         790F2xDghJJatj2mYU4sV75kHSMOM9PUNIxlrcJCqyekCeijcGHS1/V0mCjRQsIWnyLH
         8UZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F1VCZY/xQ+vpNaSDs4SQBOLwRNdfsfyajYOieVemPvE=;
        b=OQcyB9ih2OQO+XMvbd5rrNfZgiK5zMAgIFurzJYStM6Pxu0G1iQqy2UEWkqbf1KHqF
         ppYXsFrFE5pApQSxLwi4OEOECN+KGvHq1W5KjCwX0trLSlbNG+SiJAnLuHaQvHGCf5jt
         oxbH+R5fvZTZIi1porNoshxL8SzqiGCIud5DcUin1gaP+gvOsXskjgw7/c5GjAuzcUZ9
         iG2kBxEdbxQJhljWW3ALXjqqXL/RMIyPqNWyalhLG2piwNzF9Y7Sm79scYEFNkIKlPPU
         UIFqomr4V3f1B6+eDl7LS814jllcSCT6IDf9FsjbDxFzJ6jKgzq+WwdT77QLUwXnXpPd
         mVBg==
X-Gm-Message-State: AOAM533Y3MUlAVj1MyrpYb67i4G7BGDiKOF7gwuopBq5BsuTvSylzmoa
        HXBfSjKMzaCxzFFLttSn1WQv4YjCUvOLZyei7RAYSg==
X-Google-Smtp-Source: ABdhPJx13VI/0VizHXnDWHCUsAA4PZBjhuZON6WlckJx25fnR3SWumOpr705uMTSxBv2Cby3FvToHokULHVrsB8KR1s=
X-Received: by 2002:a1f:4582:: with SMTP id s124mr1772016vka.7.1610543291449;
 Wed, 13 Jan 2021 05:08:11 -0800 (PST)
MIME-Version: 1.0
References: <20210113115908.3882-1-a-govindraju@ti.com>
In-Reply-To: <20210113115908.3882-1-a-govindraju@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 13 Jan 2021 14:07:34 +0100
Message-ID: <CAPDyKFojZXy156mdh1VP2vAXFugRj2dOEitPfc6qs25sNk7qmQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] mmc: AM64: Add new compatible string and driver support
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Sekhar Nori <nsekhar@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Faiz Abbas <faiz_abbas@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jan 2021 at 12:59, Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> The following series of patches,
> - Adds new compatible string for AM64 SoC
> - Adds support for AM64 SoC in sdhci_am654 driver
>
> This patch series is a combination of the patches [1] and [2].
>
> [1] - https://lore.kernel.org/patchwork/patch/1361560/
> [2] - https://lore.kernel.org/patchwork/patch/1364589/
>
> Aswath Govindraju (1):
>   dt-bindings: mmc: sdhci-am654: Add compatible string for AM64 SoC
>
> Faiz Abbas (1):
>   mmc: sdhci_am654: Add Support for TI's AM64 SoC
>
>  .../devicetree/bindings/mmc/sdhci-am654.yaml  |  2 ++
>  drivers/mmc/host/sdhci_am654.c                | 28 +++++++++++++++++++
>  2 files changed, 30 insertions(+)
>
> --
> 2.17.1
>

Applied for next, thanks!

Kind regards
Uffe
