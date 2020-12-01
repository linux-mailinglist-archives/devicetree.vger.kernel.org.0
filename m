Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFE202CAA83
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 19:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404232AbgLASHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 13:07:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404205AbgLASHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 13:07:45 -0500
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB47C0613D6
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 10:07:05 -0800 (PST)
Received: by mail-io1-xd44.google.com with SMTP id i9so2572534ioo.2
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 10:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dAdg6b6cYixdYgFaCuE0pZDeuMpazwFSdy6lqfCnkuY=;
        b=kRMViXSVAwj+lxBuRy8XKpG2HXc8f31JPSdnGpSmXmn/igFMF+QiItMGxjSeIj7Avs
         rvhC7hYQRVrFNA1Eudpy2mxOQIDcDFx03GkOGskyVkChLfZKebOlZYH38uwQqT0Zx+Vq
         X2MmxsBrHQKx/FozJ5s76uWQ6AjvG6UyBrIHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dAdg6b6cYixdYgFaCuE0pZDeuMpazwFSdy6lqfCnkuY=;
        b=Ajo9HFOlL8Rfz76vq6wdgKgc6o0PnpJoJBC8PmhsV//pWeK4/eyIfJo1Dy84C237Sn
         TFEFAXmFnUdld64Rtm8YeqUg1nU3qUTuEvKC/F+T3AbdbAoA9hj0HCwaARS/Yz3bcNKt
         /JnWiCFvIoHYyl+BVs8DAK/hC4BXE3wUC7NB/iNEITtNdSEY2ZbLwqat9Npf0QMRVKsb
         fCAyNpasXT7jYBMZ04X9IGsBJvBvqolAUuqNUjRaNQMTR4ETdBSs2mW9u0GpmK+vNf/Y
         3GV7QKEWfUs5vshLZkwY/AhsJniogObVAT4iYOWYrUR35wZg1tgU2MrSepMXDou1N4CS
         ULFg==
X-Gm-Message-State: AOAM531fHUXlG1md0XVQPhJH4KKyfkrdOWh+bG9kFe2lIt9o0kV7/C8U
        eKAmjsBarsyKzv+Kq7Y4pnsWWRUPivF/pAyGfPoV
X-Google-Smtp-Source: ABdhPJyW+IBT9JmskDLzbwCZrN0qoqLka2UcsZXfg9sKR3tZPvGf3SB+L7xM5cYaVIPXq+hRhKTdfhGI+mL+K4wISS8=
X-Received: by 2002:a5d:8617:: with SMTP id f23mr3317826iol.174.1606846025016;
 Tue, 01 Dec 2020 10:07:05 -0800 (PST)
MIME-Version: 1.0
References: <20201201110316.28656-1-conor.dooley@microchip.com>
In-Reply-To: <20201201110316.28656-1-conor.dooley@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 1 Dec 2020 10:06:58 -0800
Message-ID: <CAOnJCUL3qELbuDAAgyGB8jMP3x6WB1qhubd3UZNKqE5zs1B2wg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] MAINTAINERS: add microchip polarfire soc support
To:     conor.dooley@microchip.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        jassisinghbrar@gmail.com, Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        cyril.jean@microchip.com,
        David Abdurachmanov <david.abdurachmanov@gmail.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>, lewis.hanly@microchip.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 1, 2020 at 3:03 AM <conor.dooley@microchip.com> wrote:
>
> From: Conor Dooley <conor.dooley@microchip.com>
>
> Add Cyril Jean and Lewis Hanly as maintainers for the Microchip SoC
> directory
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

I think this patch will make more sense in my basic SoC support patch.
Can I include this patch in my series as is?

> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2daa6ee673f7..2241bdac4816 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14989,6 +14989,15 @@ F:     arch/riscv/
>  N:     riscv
>  K:     riscv
>
> +RISC-V/MICROCHIP POLARFIRE SOC SUPPORT
> +M:     Lewis Hanly <lewis.hanly@microchip.com>
> +M:     Cyril Jean <cyril.jean@microchip.com>
> +L:     linux-riscv@lists.infradead.org
> +S:     Supported
> +F:     drivers/mailbox/mailbox-mpfs.c
> +F:     drivers/soc/microchip/
> +F:     include/soc/microchip/mpfs.h
> +
>  RNBD BLOCK DRIVERS
>  M:     Danil Kipnis <danil.kipnis@cloud.ionos.com>
>  M:     Jack Wang <jinpu.wang@cloud.ionos.com>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
