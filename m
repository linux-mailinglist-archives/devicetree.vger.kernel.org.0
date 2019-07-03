Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16DE65ED21
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 22:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727006AbfGCUEF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 16:04:05 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:42371 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726821AbfGCUEE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 16:04:04 -0400
Received: by mail-io1-f66.google.com with SMTP id u19so7803072ior.9
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=96QcmaBU6PQetN4ksZagHFgDlTk0cqr9dTtquxV84iw=;
        b=g+bATqC4dMpXhAFuOsNN2gNZ4K3Nz36JeiGgdDBBKZdqwTo3e4j2opQ1AEs9+PZ1ZT
         i9hIeDte0PobqWVSrr3goitBqPU7ubH4kL6+NhoY+Mg+rXXcMyjCxUs4y1iuoBd1pH5B
         nlcX26IbnTABvwBEZELAyl0SArRpB9T4/+U+W6h7zB8deaWuTJ5VC4WAgwzsLVIgP0B7
         qDJNTnwhQbHSPdFZDxRolwalIFAlj02zEA8hGEPyJY41v9u2u9k9zLYgIDRfcJN8UNbw
         fE7APf2Ec7lzfHQHHOpqfkPq+roCEBsrhm/LCS5bB9dToZrDdQZLm6pkb4J18wYz3a69
         x7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=96QcmaBU6PQetN4ksZagHFgDlTk0cqr9dTtquxV84iw=;
        b=G07KHF+LtrkyF55Cqi6MAT0mhLCpLkpigbgwYLXL5Oraki3FrKYpKJEg+QQ/cAHPKx
         jCruYd8y8ywcZKVoO77qjuYBZusgKezkoIiZZFbJsWpQcpFc94PkNQFfjWBerUWyiKWx
         aqKApqmpT1ZkqeV0HOAzaDBuXv027PLvzrwRtNMbCnVEW0mITAE5fdjXufjiUGu9AYVT
         I5hErAxQTL05js5+dsCJLGtXFnqIMIHiJJwFVLoS5Flmt+mP0PQOP2ZjjZFiv2O5wHud
         EooygHLBlJtbJf1R0nXLLoRhjXtn6hM+LAwvz0xR19v+XBh06oAIYd5ISnqtpH2Oo4sz
         mfCw==
X-Gm-Message-State: APjAAAUKLsRy3G/0jJXiWsEqztJcSQVoYR2x135SYstt4ALKsn1BZmmD
        KZoeSJvwItKRxhUlnaI93/cibIJk0PTs36i1J+AQEfAfoRk=
X-Google-Smtp-Source: APXvYqzihMh2s3NouVarDqgmqNcCKCFot9tW5KqD3ZwRVkaij7ka5hN0usN2Fd4v9mOoDVEjow/waIPYzqwlAlQohUc=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr7302789iop.58.1562184244059;
 Wed, 03 Jul 2019 13:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org> <1a6616f9f41b560963e86e24d533c5b2c3f05179.1561659046.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <1a6616f9f41b560963e86e24d533c5b2c3f05179.1561659046.git.saiprakash.ranjan@codeaurora.org>
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
Date:   Wed, 3 Jul 2019 14:03:53 -0600
Message-ID: <CANLsYkxxEuLmmiabbyi9-f7U37g7OqHiUWzHHo5GYioEu+aR3g@mail.gmail.com>
Subject: Re: [PATCHv5 2/2] coresight: Do not default to CPU0 for missing CPU phandle
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Leo Yan <leo.yan@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        David Brown <david.brown@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Jun 2019 at 12:16, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Coresight platform support assumes that a missing "cpu" phandle
> defaults to CPU0. This could be problematic and unnecessarily binds
> components to CPU0, where they may not be. In coresight etm and
> cpu-debug drivers, abort the probe for such cases.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Same with this one:

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  .../hwtracing/coresight/coresight-cpu-debug.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm3x.c |  3 +++
>  drivers/hwtracing/coresight/coresight-etm4x.c |  3 +++
>  .../hwtracing/coresight/coresight-platform.c  | 20 +++++++++----------
>  4 files changed, 19 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index 07a1367c733f..58bfd6319f65 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>                 return -ENOMEM;
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         if (per_cpu(debug_drvdata, drvdata->cpu)) {
>                 dev_err(dev, "CPU%d drvdata has already been initialized\n",
>                         drvdata->cpu);
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index 225c2982e4fe..e2cb6873c3f2 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -816,6 +816,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
>         }
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         desc.name  = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>         if (!desc.name)
>                 return -ENOMEM;
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7fe266194ab5..7bcac8896fc1 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1101,6 +1101,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>         spin_lock_init(&drvdata->spinlock);
>
>         drvdata->cpu = coresight_get_cpu(dev);
> +       if (drvdata->cpu < 0)
> +               return drvdata->cpu;
> +
>         desc.name = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>         if (!desc.name)
>                 return -ENOMEM;
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5ceda8db24..cf580ffbc27c 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -159,16 +159,16 @@ static int of_coresight_get_cpu(struct device *dev)
>         struct device_node *dn;
>
>         if (!dev->of_node)
> -               return 0;
> +               return -ENODEV;
> +
>         dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -       /* Affinity defaults to CPU0 */
>         if (!dn)
> -               return 0;
> +               return -ENODEV;
> +
>         cpu = of_cpu_node_to_id(dn);
>         of_node_put(dn);
>
> -       /* Affinity to CPU0 if no cpu nodes are found */
> -       return (cpu < 0) ? 0 : cpu;
> +       return cpu;
>  }
>
>  /*
> @@ -310,7 +310,7 @@ of_get_coresight_platform_data(struct device *dev,
>
>  static inline int of_coresight_get_cpu(struct device *dev)
>  {
> -       return 0;
> +       return -ENODEV;
>  }
>  #endif
>
> @@ -734,14 +734,14 @@ static int acpi_coresight_get_cpu(struct device *dev)
>         struct acpi_device *adev = ACPI_COMPANION(dev);
>
>         if (!adev)
> -               return 0;
> +               return -ENODEV;
>         status = acpi_get_parent(adev->handle, &cpu_handle);
>         if (ACPI_FAILURE(status))
> -               return 0;
> +               return -ENODEV;
>
>         cpu = acpi_handle_to_logical_cpuid(cpu_handle);
>         if (cpu >= nr_cpu_ids)
> -               return 0;
> +               return -ENODEV;
>         return cpu;
>  }
>
> @@ -769,7 +769,7 @@ acpi_get_coresight_platform_data(struct device *dev,
>
>  static inline int acpi_coresight_get_cpu(struct device *dev)
>  {
> -       return 0;
> +       return -ENODEV;
>  }
>  #endif
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
