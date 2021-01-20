Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A46062FDAB4
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 21:23:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732098AbhATUX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388501AbhATN6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 08:58:12 -0500
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com [IPv6:2607:f8b0:4864:20::936])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45022C0613C1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:57:32 -0800 (PST)
Received: by mail-ua1-x936.google.com with SMTP id u27so4415891uaa.13
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NQRUNaC5+h0p4y2UVASnStt5pCZ++1OHwy904QFlDOU=;
        b=YmKwnOpeJW4eDGtKIslo97cWH9y3TeYb8DX/Vbu89eB8jz3hfa0yhw37AKWLEUhNWd
         mt3IwgaDym8aJRq9Uz7lV6K8iNHAMwk2fJ+r+8K0olNYvHJzDEyDG4vkPw9y7mkBaGnk
         lH8ym/UWGq5LphZM0VqjKC49dRyr42PaAz8+VR/Uxysqyr68nVD1SSnriakNF2W/xEmk
         8GOjJLQeOgHpw+jxwsd3OmuYxjZrCzbWBa1L/gKkrUlOj7tCITYhgfzlrYTc05H5W2Xp
         LkliuoROmVlBiW6V4n9iDOJEzqerJVNCnmfz/3uGpfFKAgHPHvVD6E2LlwAlmAIWpjN+
         HITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NQRUNaC5+h0p4y2UVASnStt5pCZ++1OHwy904QFlDOU=;
        b=CMIfvcfCYJHnjHsuXhr9cSP/LxIdDglSLJGhDAJvb5JD940DUK6rgcuezuhsroUWhf
         sazHwKIy1f+VmV+dFoM0tH+vtYJ3mwiY11ArAwmGQ5wM7n2naMa45GYcndm9aGDPlri+
         zKOSlIc6WOseGbkL7WHet8xc6DCm0xM8mre8vW8rCG4Xwlayl52QziC/xuhWCA72ZBk6
         /7Szpwhhn6hMmObkwXrqKdUdWd954QsaSDA49CYlLVQ/spkEsi+fIR2wa+/5GqqSnQQQ
         b52dxVad3s6Cli+nlxo16RAgp5NWOhgScBSCo5U3a6lXy54KXF+idlejCvd1p0nqKQy5
         O24A==
X-Gm-Message-State: AOAM530IMd2RdeWQYUS/9P5pQ52bzwpyANQP43zU6BM8+dEsEI03q3cn
        8rbTDBuU0ckkaBbXm6Vzlb/0Nx2sxIas6+iPQD9EIg==
X-Google-Smtp-Source: ABdhPJwMO/0D8TqJK6Fkbz71C7eV0brQdczzonmnmAX0at6juF1yaKbw/I3Yc90cQE95Mkb1cMyQpmukFxP54jUO160=
X-Received: by 2002:a9f:204e:: with SMTP id 72mr5752752uam.19.1611151051471;
 Wed, 20 Jan 2021 05:57:31 -0800 (PST)
MIME-Version: 1.0
References: <20210114031433.2388532-1-andrew@aj.id.au>
In-Reply-To: <20210114031433.2388532-1-andrew@aj.id.au>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 20 Jan 2021 14:56:55 +0100
Message-ID: <CAPDyKFqBOWLBbAxZNhN5r=qjXTG9+3tX4nT8+Gz+Xbppsxh5_g@mail.gmail.com>
Subject: Re: [PATCH v7 0/6] mmc: sdhci-of-aspeed: Expose phase delay tuning
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        ryan_chen@aspeedtech.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 at 04:14, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> This series implements support for the MMC core clk-phase-* devicetree bindings
> in the Aspeed SD/eMMC driver. The relevant register was exposed on the AST2600
> and is present for both the SD/MMC controller and the dedicated eMMC
> controller.
>
> v7 is just a small change to the the kunit testing in response to Adrian's
> feedback.
>
> I've just done a quick build test of v7 given the small change and more
> extensive testing done with v5.
>
> v6 can be found here:
>
> https://lore.kernel.org/linux-mmc/20201218035338.1130849-1-andrew@aj.id.au/
>
> Please review!
>
> Cheers,
>
> Andrew
>
> Andrew Jeffery (6):
>   mmc: core: Add helper for parsing clock phase properties
>   mmc: sdhci-of-aspeed: Expose clock phase controls
>   mmc: sdhci-of-aspeed: Add AST2600 bus clock support
>   mmc: sdhci-of-aspeed: Add KUnit tests for phase calculations
>   MAINTAINERS: Add entry for the ASPEED SD/MMC driver
>   ARM: dts: rainier: Add eMMC clock phase compensation
>
>  MAINTAINERS                                  |   9 +
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts |   1 +
>  drivers/mmc/core/host.c                      |  44 ++++
>  drivers/mmc/host/Kconfig                     |  14 +
>  drivers/mmc/host/sdhci-of-aspeed-test.c      |  98 +++++++
>  drivers/mmc/host/sdhci-of-aspeed.c           | 255 ++++++++++++++++++-
>  include/linux/mmc/host.h                     |  13 +
>  7 files changed, 423 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/mmc/host/sdhci-of-aspeed-test.c
>

Applied patch 1 to patch 5 applied for next (patch 6 should go via arm
soc), thanks!

Thanks for stepping and helping with maintenance as well!

Kind regards
Uffe
