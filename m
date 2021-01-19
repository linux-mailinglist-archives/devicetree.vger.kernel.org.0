Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16E352FC5B5
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 01:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726443AbhATAVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 19:21:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391420AbhASNpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 08:45:44 -0500
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EED8C0613CF
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 05:43:29 -0800 (PST)
Received: by mail-ua1-x934.google.com with SMTP id a31so6661474uae.11
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 05:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iN6LdNddtCPvRlGXitGPbToLS1CEl0fCsvQKN0BpriY=;
        b=m785Q8QxruIQgi3wqou/VxiBLJ/MVprrsoEl26S11OjFrdkVNeBiBSQzbWq5wc3Bnk
         WebjUhGaBZup0HmRhG1iHJWgPSiFnLZyBzGWNI20XYsn0k5hKcZiKhImt7Ma53urQp36
         Ks0JtGiJq+9ofbOLlSzc0kEaziHNjCAEr7Sz5mI5NogFbrmG7T7P87zGcBBsxFuKgqRL
         UkP3EvyYE72XCvWqmms377Treyd3hnNcDperSD7wzNJ6RWRciyYfh7wdpACYJEJSpEs9
         Xt1aHHTKD5GTRaT1mnwWEyAqr2PoRhM3/wJJgFlU3SZldkU0vszqgdYfJurQCU0hPcoJ
         2VRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iN6LdNddtCPvRlGXitGPbToLS1CEl0fCsvQKN0BpriY=;
        b=jkAiVndm2mvD8DqBfx3OYrt0xgUVDy30EVnxC9hFRy8WytfwG3e8e+kLqUZoa75lVB
         Bg6tawAMes1yUxZp6O4a8KGzEPrVmHl/fWNOsSuDkizDK8E0nG861mV3KKrZihGU0Cgy
         IuMRgLHs6OwElRG8596iwS7qji0OEISJFWDAD3okp8LMubWIfFb9CMGmYTFDlPZ8SdyV
         b0evJ41Ntz+meV6KyGAWqB9S+xAD55hS7gkDSoo70HQAW77v7y56IqDzKYVy2A1nVRuI
         L7mf0nMOHquNGutH1Ag6FYB6dHIBbaPrlzs+2TFrrpcLQ7Eagdy9fz9+5WO0Psx/SlNS
         1nVA==
X-Gm-Message-State: AOAM5313HOhj0BBzqdggxpvUTPrWVuDgr5pTFmBBh4Ybc+8lmog7APm+
        kmTlxPse/ElgU/NodgNFNgE8p85imAz98gCblD8VkA==
X-Google-Smtp-Source: ABdhPJy8YfW3TY12bJa5OWZwiU4SCjJkJNpC1EcV4z3zof+egZ29HsMFioSINO1T9lcPwSbYO0VGk61l1zVyHuRcmlQ=
X-Received: by 2002:a9f:204e:: with SMTP id 72mr2102277uam.19.1611063808290;
 Tue, 19 Jan 2021 05:43:28 -0800 (PST)
MIME-Version: 1.0
References: <20210114152700.21916-1-muhammad.husaini.zulkifli@intel.com>
In-Reply-To: <20210114152700.21916-1-muhammad.husaini.zulkifli@intel.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 19 Jan 2021 14:42:52 +0100
Message-ID: <CAPDyKFrzg-mXTEQUd2oZiiSvbn29O+AGDC0VVDjbSQo6YOji8A@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] mmc: sdhci-of-arasan: Add UHS-1 support for Keem
 Bay SOC
To:     Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Michal Simek <michal.simek@xilinx.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Shevchenko, Andriy" <andriy.shevchenko@intel.com>,
        Rashmi.A@intel.com, mahesh.r.vaidya@intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 at 16:28, Muhammad Husaini Zulkifli
<muhammad.husaini.zulkifli@intel.com> wrote:
>
> Hi,
>
> This patch series adds Ultra High Speed(UHS-1) Bus Speed Mode Support for Keem Bay SoC SD Card.
> Summary of each patches as per below:
>
> Patch 1: Use of_device_get_match_data() helper to get the match-data.
> Patch 2: Convert to use np pointer instead of using pdev->dev.of_node.
> Patch 3: Add struct device *dev in probe func(), so that dev pointer can be widely use in probe to make code more readable.
> Patch 4: Change from dev_err to dev_err_probe() to avoid spamming logs when probe is deferred.
> Patch 5: Export function to be use by device driver to configure i/o voltage rail output which communicate with Trusted Firmware.
> Patch 6: Update phy and regulator supply for Keem Bay SoC.
> Patch 7: Add DT Binding for Keem Bay SoC SD Regulator.
> Patch 8: Add SD Regulator driver to support Keem Bay SoC. This is to model using standard regulator abstraction during voltage operation
> as for Keem Bay SoC, i/o voltage rail need to be configure by setting specific bit in the AON_CFG1 Register.
> AON_CFG1 Register is a secure register. Direct access to AON_CFG1 register will cause firewall violation in secure system.
> Patch 9: Add Ultra High Speed (UHS-1) Support for Keem Bay SOC. For Keem Bay hardware, two regulators are been used to change the I/O bus line voltage which are "vqmmc-supply" and "sdvrail-supply".
>
> All of these patches was tested with Keem Bay evaluation module board.
>
> Kindly help to review this patch set.
>
> Muhammad Husaini Zulkifli (9):
>   mmc: sdhci-of-arasan: use of_device_get_match_data()
>   mmc: sdhci-of-arasan: Convert to use np instead of pdev->dev.of_node
>   mmc: sdhci-of-arasan: Add structure device pointer in probe function
>   mmc: sdhci-of-arasan: Use dev_err_probe() to avoid spamming logs
>   firmware: keembay: Add support for Trusted Firmware Service call
>   dt-bindings: mmc: Update phy and regulator supply for Keem Bay SOC
>   dt-bindings: regulator: keembay: Add DT binding documentation
>   regulator: keembay: Add regulator for Keem Bay SoC
>   mmc: sdhci-of-arasan: Add UHS-1 support for Keem Bay SOC
>
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml |   7 +-
>  .../bindings/regulator/keembay-regulator.yaml |  36 ++
>  drivers/mmc/host/sdhci-of-arasan.c            | 313 ++++++++++++++++--
>  drivers/regulator/Kconfig                     |  10 +
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/keembay-sd-regulator.c      | 112 +++++++
>  include/linux/firmware/intel/keembay.h        |  82 +++++
>  7 files changed, 532 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/keembay-regulator.yaml
>  create mode 100644 drivers/regulator/keembay-sd-regulator.c
>  create mode 100644 include/linux/firmware/intel/keembay.h
>
> --
> 2.17.1
>

Applied patch 1 to patch 4. I assume you will be respinning the rest?

Thanks and kind regards
Uffe
