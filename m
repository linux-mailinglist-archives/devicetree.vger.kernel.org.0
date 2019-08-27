Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4D039EA12
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 15:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730317AbfH0NuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 09:50:24 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:45051 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730306AbfH0NuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 09:50:24 -0400
Received: by mail-vs1-f68.google.com with SMTP id c7so13465353vse.11
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 06:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Guoi8CEbmiEQL58vlM08bbKsHwcExynBojoPctnPZQ0=;
        b=RNPb/Pp8yJsUTuHGjh2jKkjRQX2ljYb0W/XDYEKzB+FhQFV/R9HrN1fiHznv3QWbKj
         Sfd084Ajkfy+zKTBO5aQ2HlSsn9KYya3GZOoRN3sYZH5EVfrOacXSA/eLCUABkDBHKXZ
         HgqNEhQmz+aS3sqpEDAM2LtMimWH6XbNE2mBn+KZLBTctvkTxjSop/G8s5bxTh87Pmg2
         A1wtOHfHfMQHdDckfH10h05OH6i8sQIEV+tUZMfc5hVtF6P2OBv1dYt6xLONVHGNsDU2
         bS1kXes0awjw9J6ilPUG5rjU9w2U5rtdNq2fBPyBxzS1s68byE4UVzQKn5aIaggg37LH
         sg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Guoi8CEbmiEQL58vlM08bbKsHwcExynBojoPctnPZQ0=;
        b=Ssq58blX4t5ugsAzc3aq60x7GD+edz3jS2O1KSVsvyl7LJOJLKs3lLU6bpLN4FLC/9
         6cPjzCrQCH1+R4QDz+H0m0Rkb2LfYaw7GIDrjaLcqOKHzqpxIRfpE75jAwyRiYfVAUNr
         EPsCEz4x2hXlCO08aVT5qcSgyy10X1r2augPyRRPhzhonwkwBf5DnWbDbong9S05Z9Ce
         BoV7LTgdpz0QGop8kI15iaS9JNz/VwF/vuFM1Oqg5IzzcHmhyQfycKhLe7z88pZZ1xX1
         kUGaXMuB6s8r6n241LXjxYJuUu8o9LIEDnUYoQBQv/s+xO5iOBJ6n1PRfg56HQcL4SMX
         0gCQ==
X-Gm-Message-State: APjAAAWiSizpwOXszvPS2eGFAnkXGB77iEr6vDcSg7dilDc5qWVLaLG9
        mDonYuRs+Gby4acWOkmhh9C3bSrvkUIb199SR8qwZA==
X-Google-Smtp-Source: APXvYqzncKmxLayhEBMLlhwrVoNiyd8CgMvPymu/cA3tDurKWXmJDQS8p/pR1gGiwmMXm8tlrZoSHbCz53D4HFxX4k4=
X-Received: by 2002:a67:347:: with SMTP id 68mr13733195vsd.35.1566913822835;
 Tue, 27 Aug 2019 06:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 27 Aug 2019 15:49:46 +0200
Message-ID: <CAPDyKFpsvZ+LEwY91LiSExgm=4g=BhWNpkkJMniBNff+qch-QA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: mmc: sdhci-of-arasan: Add new
 compatible for Intel LGM eMMC
To:     "Ramuthevar,Vadivel MuruganX" 
        <vadivel.muruganx.ramuthevar@linux.intel.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
        qi-ming.wu@intel.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Aug 2019 at 09:28, Ramuthevar,Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>
> Add a new compatible to use the sdhc-arasan host controller driver
> with the eMMC PHY on Intel's Lightning Mountain SoC.
>
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 1edbb049cccb..7ca0aa7ccc0b 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -17,6 +17,8 @@ Required Properties:
>        For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>      - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
>         Note: This binding has been deprecated and moved to [5].
> +    - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
> +      For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>
>    [5] Documentation/devicetree/bindings/mmc/sdhci-am654.txt
>
> @@ -80,3 +82,18 @@ Example:
>                 phy-names = "phy_arasan";
>                 #clock-cells = <0>;
>         };
> +
> +       emmc: sdhci@ec700000 {
> +               compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
> +               reg = <0xec700000 0x300>;
> +               interrupt-parent = <&ioapic1>;
> +               interrupts = <44 1>;
> +               clocks = <&cgu0 LGM_CLK_EMMC5>, <&cgu0 LGM_CLK_NGI>,
> +                        <&cgu0 LGM_GCLK_EMMC>;
> +               clock-names = "clk_xin", "clk_ahb", "gate";
> +               clock-output-names = "emmc_cardclock";
> +               #clock-cells = <0>;
> +               phys = <&emmc_phy>;
> +               phy-names = "phy_arasan";
> +               arasan,soc-ctl-syscon = <&sysconf>;
> +       };
> --
> 2.11.0
>
