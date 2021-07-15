Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E6073C98DB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 08:40:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231251AbhGOGn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 02:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbhGOGn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 02:43:26 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E789C061760
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 23:40:34 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id y42so8000567lfa.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 23:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=unaBiWnJarMH1gL7KYAkXbKz3od/E6fqsCgI629LIGM=;
        b=etu1S8miUnZsNSpg3HW7x38uMVbiLPD1tNvKTPEnOlRvEcWJzm7exG7BPJaod1ka0w
         CDa1vvopBYQX351vd75gYooym69T9Nf/RaGcFiYe3LjhfDCFhimGra+WB9snRBMOwYDS
         EPTfEacpnlvH9TbmEuvaYVdzOLBjl4lRLI9Wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=unaBiWnJarMH1gL7KYAkXbKz3od/E6fqsCgI629LIGM=;
        b=dYg+C/AJmiaIsfZlvKSqfSCKzbancbJN1dDfFYcVBqzBu4pGCSp8oB1WTfP+gCcHD6
         xH6Ky+4CXoBRmAtApAIxEbPC9tRniJ3L/JXaIXZR2DPO8FGv5ZIGPW82rGeyuOP6o+cf
         OCeLRUiT+NNmwBXPmgP4Kkceetwak1gAp0NhRUP/oGqglBQQa6o4veIMfZzRtf9X5VRB
         8dZQoQh2NolGadggvKeCd2cIW9KIP01cr3t3xZyPKV81k8SI3a2mlTQdCMq9IWNbh8Ay
         Is6laOsqaRKcRbyYHQ1ZdhPESOOfviHoHW6zyDRL2dpMFgFCM0k1sPL9SxaTaZlVzzHW
         JKLw==
X-Gm-Message-State: AOAM532JbRnjbNRxlzHSmDG8tfivA2+Ll/R/TjBrLzdppj04kL5hALbS
        0FSMQj4jmaExX7U9p9KITdUiN4JW0vyCc4qLWBAiOw==
X-Google-Smtp-Source: ABdhPJy9IXnVib4DwY4g5a0dAWpWJk7dTChMptWv36qjycMCr9phL4RvEij4IZ7zX1gWMYsr8+0hSgzSXnmOIVcsi3U=
X-Received: by 2002:ac2:48b8:: with SMTP id u24mr2049392lfg.587.1626331232261;
 Wed, 14 Jul 2021 23:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210705054111.4473-1-chun-jie.chen@mediatek.com> <20210705054111.4473-6-chun-jie.chen@mediatek.com>
In-Reply-To: <20210705054111.4473-6-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 15 Jul 2021 14:40:21 +0800
Message-ID: <CAGXv+5ETE=qSPyKL6AjDtSHCDvu3Ua-rrLZWOECjZXrcNZ-9Tw@mail.gmail.com>
Subject: Re: [v3 5/5] soc: mediatek: pm-domains: Remove unused macro
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 5, 2021 at 1:48 PM Chun-Jie Chen <chun-jie.chen@mediatek.com> wrote:
>
> Due to clk resource data will be allocated dynamically by
> searching parent count of clk in power domain node, so remove
> the unused marco MAX_SUBSYS_CLKS for static allocation.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>  drivers/soc/mediatek/mtk-pm-domains.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
> index caaa38100093..1b8967b9829e 100644
> --- a/drivers/soc/mediatek/mtk-pm-domains.h
> +++ b/drivers/soc/mediatek/mtk-pm-domains.h
> @@ -72,8 +72,6 @@ struct scpsys_bus_prot_data {
>         bool ignore_clr_ack;
>  };
>
> -#define MAX_SUBSYS_CLKS 10
> -

Future advice: cleanups like this and other fixes should be put in the
front of the series, before any patches that introduce support for new
features or hardware. That way if the new code still needs work,
maintainers can optionally apply the fixes so you don't have to carry
a large patch series forward.

ChenYu

>  /**
>   * struct scpsys_domain_data - scp domain data for power on/off flow
>   * @name: The name of the power domain.
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
