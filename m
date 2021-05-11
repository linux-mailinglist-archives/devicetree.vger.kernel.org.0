Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96DFC37A589
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 13:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231397AbhEKLQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 07:16:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230443AbhEKLQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 07:16:27 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0704C061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:15:20 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id l124so3901350vkh.7
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hHAQPVzBsVWn5SIpJgCp6vriYjWaGYRU2fNUBN0wdpw=;
        b=o+S/wjsPy/FGxRO/OYk6oXHPiTIptpc5DQdLEJLZDMeyGJLtpaH9D4X3Oy69dI/DKh
         W6SmuaZ2/PT/d/P7p40GeqWIgudOzlm5zoiV6AQ6Z1t8cq+maDbGzvNUM6L8nv7xZH2U
         XSqX3QmG5TGZk/orIoOidfCyS3GrbtCCNTOBFUcv/bVctmUbL2t+CTHIPUu+Jx3B7bdc
         EpV+95xKr2FS5xTWZkljH9d6ZtUOAWDCaU47nKNXWZO5scDai2sv1bkxUzcUZ6Z9/RYD
         9ZGm+4GkWNZQKHsPtjkUf+9zvRhQEeUKKPRj5o25OogUkb1o+k+csM17ltTp56AAZ30J
         Jfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hHAQPVzBsVWn5SIpJgCp6vriYjWaGYRU2fNUBN0wdpw=;
        b=Y0zNkFmERPOjQcc0xssD8JVI7OYimqLAel8ThIqgj7EoBPEqxQdc2IyUcexP5g6QPf
         XgrHsrgI5ezqPknSPU4FdnhggM96BXQYn2q9qyHUvbTKOzskQZfiHQ60Z+c5JxObVjNV
         lucvi5ADxbMDWQ005w+uuNTKDlkWiNCQQlZkLHyRfWb7gIXWLBgfL3NwttEw08Usl822
         JGQHJUAMjoVQDC1Hj479HNjOtT2HaqISStWMV63vyannO9yapt8wBSdi2uVl9UGu6fJF
         Olnqp+Uf6GzGH6V/zqIc9w+kendcgmiun3zIBzRLNAaRawNtk2MEayGwZ2orCGRBDCtJ
         7SqQ==
X-Gm-Message-State: AOAM5310ZUMQYOLzd3NEqSkoLAlym261f9GM6569mpyOayj29qjV1A6w
        auyMmlqa/1L94QWOx/e+PYYKHhxJO8BekwnTmSikTA==
X-Google-Smtp-Source: ABdhPJxYxWbFj2qO8+8U3f8oWGl4hGBN1E219YphlbQgPjhS4n0vUXrkjDTIzdBj9d6FR8xgDoHg7YisbPO/vyknD2Q=
X-Received: by 2002:a1f:f2ce:: with SMTP id q197mr21391439vkh.15.1620731720168;
 Tue, 11 May 2021 04:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210510190400.105162-1-l.stach@pengutronix.de> <20210510190400.105162-3-l.stach@pengutronix.de>
In-Reply-To: <20210510190400.105162-3-l.stach@pengutronix.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 11 May 2021 13:14:44 +0200
Message-ID: <CAPDyKFrAe-+CENhXkY2fGNw04g-zn+ebcAXSVGa9Td5pJcsujA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mmc: core: add support for disabling HS400 mode
 via DT
To:     Lucas Stach <l.stach@pengutronix.de>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+ Chris Ruehl

On Mon, 10 May 2021 at 21:04, Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Lucas Stach <dev@lynxeye.de>
>
> On some boards the data strobe line isn't wired up, rendering HS400
> support broken, even if both the controller and the eMMC claim to
> support it. Allow to disable HS400 mode via DT.

Before I review the series, I just wanted to highlight that quite
recently we got a related series posted from Chris [1]. I made some
comments, but he hasn't replied yet.

In any case, if I understood it correctly, it looks like some
controllers may support HS400 ES, but not HS200. Could that be the
case here as well? Or is this a different problem?

Kind regards
Uffe

[1]
https://patchwork.kernel.org/project/linux-mmc/patch/20201208061839.21163-7-chris.ruehl@gtsys.com.hk/

>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> v2:
> - move to core
> - actually disable all HS400 modes
> ---
>  drivers/mmc/core/host.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> index 9b89a91b6b47..0e066c5f5243 100644
> --- a/drivers/mmc/core/host.c
> +++ b/drivers/mmc/core/host.c
> @@ -351,6 +351,9 @@ int mmc_of_parse(struct mmc_host *host)
>                 host->caps2 |= MMC_CAP2_NO_SD;
>         if (device_property_read_bool(dev, "no-mmc"))
>                 host->caps2 |= MMC_CAP2_NO_MMC;
> +       if (device_property_read_bool(dev, "no-mmc-hs400"))
> +               host->caps2 &= ~(MMC_CAP2_HS400_1_8V | MMC_CAP2_HS400_1_2V |
> +                                MMC_CAP2_HS400_ES);
>
>         /* Must be after "non-removable" check */
>         if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
> --
> 2.31.1
>
