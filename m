Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D47E2EC7D8
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 02:52:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726370AbhAGBvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 20:51:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725860AbhAGBvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 20:51:13 -0500
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31404C0612F1
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 17:50:33 -0800 (PST)
Received: by mail-io1-xd34.google.com with SMTP id n4so4662596iow.12
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 17:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2P2u9jEjWHYVU1qxKrf4iKIpSUfUX3zNuv6jnN50kWY=;
        b=o9uaPPJjdoOqqWjDoF+6zow7bpzZM5nAd4zCN8YCAQETkDD3CrOk+M0aOrjER+Ma1P
         K+8feL8e1xUQrEePD7AMiNB2UaGYxrQFfbptq3Rgav+7h5GLeYHgxrN99bj4CZ0+HFl+
         QJW03cwujyZUkSKyslBTbIadFmtgAaGiMjmNOv78ZTLyjk1yo24TOx3kGRpYdcQk5dqR
         /xNf8s9seXFP/0DJrVhnvj+MmHCKBe3lvA1L431DZ0p3xKpegyJxMDzTTCjlIua5UL5f
         7wNU8HC650Eq0eCbp6nmzGqbLLtXJEnfxQqYb16lclGBr7XvlJYejMLfUeDhj0s5iG5+
         G5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2P2u9jEjWHYVU1qxKrf4iKIpSUfUX3zNuv6jnN50kWY=;
        b=aHuOiWD1q+60v0HeHqqWPTqqd1IzgZOuCkY0sL8Knp+6X+1xfJRjQ8PVW2o4t2N4HY
         1D0nMHBsctzHIT8mH/PD0MFKfo5CV9okpDpHm3AgO8SVs64+v7buakEbbNtkbK3tGWB7
         b1NF+5sGgdk7VYBF4X9IGcVQuaYcjDOqqH8eA2jWdRlnwKezWbExoh6fAK3yZFF+tUm2
         tA2jjgwemi7XtEQdoG9kkLLIA2kzUL/VEpr17veIU8hCFjcga96cVRE+iPjgIONBVJHs
         dUzDMVLHrpqdWX7OkWBR5iBLiyz4W/G+Jluq+Jf3rSB5QeQ9fzGaAlcCNkWSDPtAOcJy
         9IOQ==
X-Gm-Message-State: AOAM531ud06okXrB3JytiQNb5ONteCFgFdxjzrqoBnfR6vrydKv/qUym
        FP0RuY9eCehmNODaW60CxexkX/4veeFuikPGFIJC/A==
X-Google-Smtp-Source: ABdhPJwnLMZbzPVzAP5dJqQf/bIvgS2HPh2LtxSQphRjCMi9klzEWcLCchHZzWTLlzo2OiyqneoUmKEGjiuJIzgTWAE=
X-Received: by 2002:a02:c804:: with SMTP id p4mr6149995jao.110.1609984231882;
 Wed, 06 Jan 2021 17:50:31 -0800 (PST)
MIME-Version: 1.0
References: <20201214050521.845396-1-tzungbi@google.com> <20201214050521.845396-3-tzungbi@google.com>
 <20210106231513.GC9149@xps15>
In-Reply-To: <20210106231513.GC9149@xps15>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 7 Jan 2021 09:50:21 +0800
Message-ID: <CA+Px+wXEV9GDCMjR8inbQ89tNV9n7RedeAOGJL_yATmeCLjXJw@mail.gmail.com>
Subject: Re: [PATCH 2/2] remoteproc/mediatek: support L1TCM
To:     Mathieu Poirier <mathieu.poirier@linaro.org>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:REMOTE PROCESSOR (REMOTEPROC) SUBSYSTEM" 
        <linux-remoteproc@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 7, 2021 at 7:15 AM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> >  static void mt8183_scp_stop(struct mtk_scp *scp)
> >  {
> >       /* Disable SCP watchdog */
> > @@ -714,6 +749,19 @@ static int scp_probe(struct platform_device *pdev)
> >               goto free_rproc;
> >       }
> >       scp->sram_size = resource_size(res);
> > +     scp->sram_phys = res->start;
> > +
> > +     res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "l1tcm");
> > +     if (res) {
>
> As far as I can tell the if() condition isn't needed since
> platform_get_resource_byname() returns NULL on error and devm_ioremap_resource()
> is capable of handling that condition.  As such the code to parse "l1tcm" can be
> the same as what is done for "sram".

The "l1tcm" memory region is optional.  The if() condition is for: if
DTS doesn't provide the memory region, kernel can skip the code block.

>
> With the above:
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> > +             scp->l1tcm_base = devm_ioremap_resource(dev, res);
> > +             if (IS_ERR((__force void *)scp->l1tcm_base)) {
> > +                     dev_err(dev, "Failed to parse and map l1tcm memory\n");
> > +                     ret = PTR_ERR((__force void *)scp->l1tcm_base);
> > +                     goto free_rproc;
> > +             }
> > +             scp->l1tcm_size = resource_size(res);
> > +             scp->l1tcm_phys = res->start;
> > +     }
