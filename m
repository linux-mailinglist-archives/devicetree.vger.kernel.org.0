Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C37C249EE41
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 23:49:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234642AbiA0Wty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 17:49:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiA0Wtx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 17:49:53 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D1D4C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 14:49:53 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id z10-20020a17090acb0a00b001b520826011so9227799pjt.5
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 14:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k+xO8EqLFUCui4EksMPBTtUzqUy69IME3pxskdaGT84=;
        b=S/3NlMq/VzH6n8N/3ItPaKj87TfCkln/Xpf2ZWUcGIww2DDgYlXdWKPg0qHfB9n7s4
         xdOiXsftmKSBycWFZkjTPVNWlFtY1Zf5COYn/bwEUt7AaInIQxQRuj0To48lViySlErr
         KHE25WkSTam4RCChpke3fQtwBFMDfTfzQgEF92epl5Q1jV5Qo7gtwTjo3GhqYuVG2mrV
         AGY9ZkM7jBHnHO1cpXN/E9CaSLinbz2ctsREOUw+jnvInnrMznwRbPxiUgTjrTf058uz
         k5XaSUIDXVaUr7O1YWP1A7ms0N/RNfNHek0VY5lsH9FUySwzHcTT4pg9L33Etx9ukjH2
         SYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k+xO8EqLFUCui4EksMPBTtUzqUy69IME3pxskdaGT84=;
        b=CNsmzjbVQ8upIIgK6WSU2dGCAA8Ooi7R6YWx42TMikuNdIbzAgXlBbvouPj5ueJVzW
         8fs04NEo5n8Fggmn5i2l5AuVZQQpScXtECC6VKkHGBFfcU55h3jHtXFuMAtNBtP/Umn8
         qeZv5rZrAU4CyYkBiq9GYoa/JRHTIRFstSxi7B0EiEYtVfdVZzbSMAiCiUm5ALRv54+O
         Tck5oXcKkbcY/8ubqvAAieAW+IqUTdAmnGeaJWpjsxgxQAOKG/EYVhR1nbcrB8zLVp8e
         rB1GBg9drhN8Rv7KNbaPnFKb/sicdT79i5b802bljb3KXkA+CAck8A6K4bZeN9W1iYn5
         YSWw==
X-Gm-Message-State: AOAM533CbMuqxSyG+d/AoNY3qytExIkmHNc3ofGl5TVOXS8dnAedpuIW
        p7BKki1XF0Lj3E2xeszNXYrqA1FeeuTfUGLz/YEGJg==
X-Google-Smtp-Source: ABdhPJzHixJG/xXB3xwpj3793Z17iaq6LfTsT5F2gkjyLAl6ZDQgwQE9zFs+Zx3q+fX/aMrEm2pow6J2TZZv0OWaIp8=
X-Received: by 2002:a17:90b:4a82:: with SMTP id lp2mr6552523pjb.179.1643323792568;
 Thu, 27 Jan 2022 14:49:52 -0800 (PST)
MIME-Version: 1.0
References: <20211215001812.9006-1-tharvey@gateworks.com> <20220126090739.GH4686@dragon>
In-Reply-To: <20220126090739.GH4686@dragon>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Thu, 27 Jan 2022 14:49:41 -0800
Message-ID: <CAJ+vNU3Xj-b2BSc_6MQrtrh-G=5dMdMmw0S8EtujVz_7FvkQ0w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8m{m,n}_venice*: add gpio-line-names
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 26, 2022 at 1:07 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Dec 14, 2021 at 04:18:12PM -0800, Tim Harvey wrote:
> > Add gpio-line-names for the various GPIO's used on Gateworks Venice
> > boards. Note that these GPIO's are typically 'configured' in Boot
> > Firmware via gpio-hog therefore we only configure line names to keep the
> > boot firmware configuration from changing on kernel init.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>
> It doesn't apply to my imx/dt64 branch.  Could you rebase?
>

Shawn,

Sure, I'll try to submit another version within a couple of days.

Did you happen to see 'arm64: dts: imx8mm-venice*: add PCIe support'
[1]? It seems to have been archived for some reason and it may have to
be rebased after I re-post this one unless you can take that now.

Best Regards,

Tim
[1] - https://patchwork.kernel.org/project/linux-arm-kernel/patch/20211216164149.13333-1-tharvey@gateworks.com/
