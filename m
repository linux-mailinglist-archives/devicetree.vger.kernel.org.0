Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 639DF2DD64D
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 18:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729275AbgLQRdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 12:33:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727723AbgLQRdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 12:33:38 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E6E3C0617A7
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:32:58 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id p22so29434010edu.11
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zjsadC0SrvL7bfYGGmZtpCipLIKDSHj6M2hPm9pjfwY=;
        b=pMcQVkLKUWhaprhCG/UXYLaIKMmzRu4DQvDe8+jmuhj+0HVngx/EcqbByaFIE4UHO3
         2OW93xoso+ObXyUQB8aTFRcwR0v8J+X89D3hALp267cy5ErqO1r8OtL0Mo4p5bRCYHLO
         5DaerrSVLtqpecOuJoghu02mVfVTtAAtljqcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zjsadC0SrvL7bfYGGmZtpCipLIKDSHj6M2hPm9pjfwY=;
        b=aYY9Pb4Ex2BCiiiOKTzd+cuI1X46SpzlKcHpbabcpL2CjvAiTjCJ63cktDsEP5rauL
         lckL0Geh2xIcfsOlYHfP7rzO2KhktUI2bhrGe0XOwPcfI1INPwM+ewDvM7ZCzgSxp7eC
         l1oSbw5Qy0/6bZwjLL84GSbvJkTZ6iRl8ziehfX1kluN40ZkereJwtUrJOUgauB+0btt
         XDVMCDJzdbwra02/9a2eeEbEJ0a/JlidaNqYK05p7jFZj5GiqItS4BLMOoCvPqy06Ask
         6Eb+w9zc5MQes5fEb3p9xgQMhUU8aEZlII1pODIoyJcIB3iafCfkYoYvM8aZVPYwKTZ9
         LjKQ==
X-Gm-Message-State: AOAM530tZmUxBIS/5vfiOardWlktJCllMIZ4ThoF3irmdvCllshPMQjA
        zstvwtV8FWiBJnjtaTWh8NxvmMEi0rFsgrqPMVLsgA==
X-Google-Smtp-Source: ABdhPJwYpwYlQ4NdCgCt1hC6OM6uC7jWpVg5pJ2B+5S7M4oYSd2YkxyZO6gNjEMzAVoZf54t107jvSJ6lXXasFbvf5o=
X-Received: by 2002:a05:6402:2041:: with SMTP id bc1mr376539edb.369.1608226376626;
 Thu, 17 Dec 2020 09:32:56 -0800 (PST)
MIME-Version: 1.0
References: <20201215235639.31516-1-adrien.grassein@gmail.com> <20201215235639.31516-3-adrien.grassein@gmail.com>
In-Reply-To: <20201215235639.31516-3-adrien.grassein@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 17 Dec 2020 23:02:44 +0530
Message-ID: <CAMty3ZAuej4+T9eBJDBqJF_t5Q5hXFb5dFNNsrOmqAoopEa-Nw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] regulator: pf8x00: add a doc for the module
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Troy Kisky <troy.kisky@boundarydevices.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 5:27 AM Adrien Grassein
<adrien.grassein@gmail.com> wrote:
>
> pf8x00 module build was not documented.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  drivers/regulator/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index 53fa84f4d1e1..9c6508e99fdd 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -828,6 +828,10 @@ config REGULATOR_PF8X00
>           Say y here to support the regulators found on the NXP
>           PF8100/PF8121A/PF8200 PMIC.
>
> +         Say M here if you want to support for the regulators found
> +         on the NXP PF8100/PF8121A/PF8200 PMIC. The module will be named
> +         "pf8x00-regulator".

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
