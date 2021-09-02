Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA95C3FF164
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 18:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346307AbhIBQae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 12:30:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235316AbhIBQac (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 12:30:32 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD00C061575
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 09:29:33 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id v20-20020a1cf714000000b002e71f4d2026so1447556wmh.1
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 09:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qQvOt1ifW0ovIWo97MoqTyVwvytJ42yalJvh/YjFrhM=;
        b=p8ado44xanvC4B/fKnLguA2DmivjS2TeW3djiqa/2r+oVa+jqGY027XInEM0j3+v1o
         AabOhM3PBEKE56zOsZNGcCSr6XmRYZofpDVKnmC08qjaVCXu10FPqjJNxF9mkSGGgkO5
         ahBD4WCcCD42PKuIbcpKeIHoURMYLmreJ1fCtiM8PcbQxeLJKLZyd1XeKHPiwbrYQ9b6
         GawOOhnEJx0dhbNmOQ2Kez5nl9zndX3aodb3ic0pGSNQaXK008f9KugS0Uo7DUypqP76
         cVmiMc/AxIxbYZaReBjG+tk838zOpJNnHwdWG6/ks+1LW7ErI23fLoeut+yogqOcfRlj
         LVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qQvOt1ifW0ovIWo97MoqTyVwvytJ42yalJvh/YjFrhM=;
        b=UVajkqS9Qaqy5k32JvLR0xD7R3RVY/8STp2D5Li5+aDdRYh7L93XQMwKM1C1KqViaN
         8dDUEeu14S5rD4cpSS05LQxLspCilq0Dd/ui21NqqPgLVwmb4BVOHqkSGP3UVeHZDpY5
         hizA/sgRSBJtc4VmUkf9dHLasemY8w8nuE/RQnXg1NahxB3oAbBzSFNE9BpFOuzo9alF
         Iq0bRGQ3KK51I01nuMn6tfWo3DW14jHvEgexkU4kfheu8a7+V0xz7fwfTggcBRvh0/kn
         uz0W7bnC/LHgJomsVIcVF55NxIhe6UqPNTFjFfpMCpAu+r5hRjz0rGkEYiak5nklgwBc
         Ym2g==
X-Gm-Message-State: AOAM533xs/+IssB0vOT3aRq9xVXmoXofTuxkKeifQqhGI7v5Jt9yHX8P
        jq5fD5Xf993OJP31o4iBGNZZX1970tq4Xzc59J7mew==
X-Google-Smtp-Source: ABdhPJzegKdPT7GVfqg1nm/VqXqHR5cLcsBF3qggWeZa/6HxS2Id2bCF3GL9zBxs99FDHrAkWCdSAHpkFGlRxKf84YI=
X-Received: by 2002:a1c:2090:: with SMTP id g138mr4025430wmg.98.1630600172342;
 Thu, 02 Sep 2021 09:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210901131049.1365367-1-tanmay@marvell.com> <20210901131049.1365367-3-tanmay@marvell.com>
In-Reply-To: <20210901131049.1365367-3-tanmay@marvell.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Thu, 2 Sep 2021 17:29:21 +0100
Message-ID: <CAJ9a7VhXL76usDHhmyExONZ_fBx8_5=xUWqCEdg9bfNS3mmL+w@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Configure AXI write burst size
To:     Tanmay Jagdale <tanmay@marvell.com>
Cc:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
        Leo Yan <leo.yan@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Coresight ML <coresight@lists.linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, Al Grant <al.grant@arm.com>,
        Sunil Kovvuri Goutham <sgoutham@marvell.com>,
        Linu Cherian <lcherian@marvell.com>,
        Bharat Bhushan <bbhushan2@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Sept 2021 at 14:12, Tanmay Jagdale <tanmay@marvell.com> wrote:
>
> The current driver sets the write burst size initiated by TMC-ETR on
> AXI bus to a fixed value of 16. Make this configurable by reading the
> value specified in fwnode. If not specified, then default to 16.
>
> Introduced a "max_burst_size" variable in tmc_drvdata structure to
> facilitate this change.
>
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> ---
>  .../hwtracing/coresight/coresight-tmc-core.c  | 21 +++++++++++++++++--
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  3 ++-
>  drivers/hwtracing/coresight/coresight-tmc.h   |  6 +++++-
>  3 files changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
> index 74c6323d4d6a..d0276af82494 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
> @@ -432,6 +432,21 @@ static u32 tmc_etr_get_default_buffer_size(struct device *dev)
>         return size;
>  }
>
> +static u32 tmc_etr_get_max_burst_size(struct device *dev)
> +{
> +       u32 burst_size;
> +
> +       if (fwnode_property_read_u32(dev->fwnode, "arm,max-burst-size",
> +                                    &burst_size))
> +               return TMC_AXICTL_WR_BURST_16;
> +
> +       /* Only permissible values are 0 to 15 */
> +       if (burst_size > 0xF)
> +               burst_size = TMC_AXICTL_WR_BURST_16;
> +
> +       return burst_size;
> +}
> +
>  static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  {
>         int ret = 0;
> @@ -469,10 +484,12 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>         /* This device is not associated with a session */
>         drvdata->pid = -1;
>
> -       if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
> +       if (drvdata->config_type == TMC_CONFIG_TYPE_ETR) {
>                 drvdata->size = tmc_etr_get_default_buffer_size(dev);
> -       else
> +               drvdata->max_burst_size = tmc_etr_get_max_burst_size(dev);
> +       } else {
>                 drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
> +       }
>
>         desc.dev = dev;
>         desc.groups = coresight_tmc_groups;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index acdb59e0e661..0ac2a611110b 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -982,7 +982,8 @@ static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
>
>         axictl = readl_relaxed(drvdata->base + TMC_AXICTL);
>         axictl &= ~TMC_AXICTL_CLEAR_MASK;
> -       axictl |= (TMC_AXICTL_PROT_CTL_B1 | TMC_AXICTL_WR_BURST_16);
> +       axictl |= TMC_AXICTL_PROT_CTL_B1;
> +       axictl |= TMC_AXICTL_WR_BURST(drvdata->max_burst_size);
>         axictl |= TMC_AXICTL_AXCACHE_OS;
>
>         if (tmc_etr_has_cap(drvdata, TMC_ETR_AXI_ARCACHE)) {
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index b91ec7dde7bc..6bec20a392b3 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -70,7 +70,8 @@
>  #define TMC_AXICTL_PROT_CTL_B0 BIT(0)
>  #define TMC_AXICTL_PROT_CTL_B1 BIT(1)
>  #define TMC_AXICTL_SCT_GAT_MODE        BIT(7)
> -#define TMC_AXICTL_WR_BURST_16 0xF00
> +#define TMC_AXICTL_WR_BURST(v) (((v) & 0xf) << 8)
> +#define TMC_AXICTL_WR_BURST_16 0xf
>  /* Write-back Read and Write-allocate */
>  #define TMC_AXICTL_AXCACHE_OS  (0xf << 2)
>  #define TMC_AXICTL_ARCACHE_OS  (0xf << 16)
> @@ -174,6 +175,8 @@ struct etr_buf {
>   * @etr_buf:   details of buffer used in TMC-ETR
>   * @len:       size of the available trace for ETF/ETB.
>   * @size:      trace buffer size for this TMC (common for all modes).
> + * @max_burst_size: The maximum burst size that can be initiated by
> + *             TMC-ETR on AXI bus.
>   * @mode:      how this TMC is being used.
>   * @config_type: TMC variant, must be of type @tmc_config_type.
>   * @memwidth:  width of the memory interface databus, in bytes.
> @@ -198,6 +201,7 @@ struct tmc_drvdata {
>         };
>         u32                     len;
>         u32                     size;
> +       u32                     max_burst_size;
>         u32                     mode;
>         enum tmc_config_type    config_type;
>         enum tmc_mem_intf_width memwidth;
> --
> 2.25.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
