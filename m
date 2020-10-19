Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D79C6292C00
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 18:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730660AbgJSQ62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 12:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730186AbgJSQ61 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 12:58:27 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 796EEC0613CE
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 09:58:27 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id a9so314178lfc.7
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 09:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5NHR3Np8fNGXIXRruqbIIE6HHkI6yNWHe+R9ceI9aVA=;
        b=CCB8cgaeWeZOhlJgMBWEEX4hO2i9pzvsX1LKKNk/MnzUskj5jIGMpALafTZGc6XlS7
         p0vuxut5VxtzgeBzemcAvpIYd7POiHZczki1IyB2OoO1qwWKDjpr9mL3ZUKifyllIDXt
         3pb2fuXmiznrkVRdpKOhsLg0g84B5a3Vby2BHa0XXz7FHDiyfwUlW9ln3Ng4wgZgFtTJ
         a1DUT2t8UQvJppM1Aq3zsL9J4IKYGzILJ/+lRM1QmX6mxpjvda3fBke8rD+/NYTELHo1
         dwsjpkbOKq9Q63CijgE49hziF5tlHaqPnmOhzoN0EX1lZxg1mw6OtaaRJlaNztf2EzZu
         k5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5NHR3Np8fNGXIXRruqbIIE6HHkI6yNWHe+R9ceI9aVA=;
        b=tO1NCpIxc0D5d0RbZnKxGxO4fWLKa2ypuVYU43uwCMz3mdsFzVqvDJz5WbnYal36dy
         vJzSqE2NNH7rq/0A39a7+TSva9R2QO3dIVC7DPis6fWZhIq/3K/rNGqJJ/7v8gtNZxyy
         09qKixbxPh/thzR9Ov3v53h9jWBW1gP+dH/5fmvFmE6goR7mipRGaFrAnQ3Us8ED3YcJ
         h/ZDApaG+SWuSJmSoE3w1jPGDSfpzipMRXV1dq1q5o13j+GhVQZqlrDOPVBWS5crdVSU
         q5h30JtcSMp6WjlMF9Jz/8S6oSAkeIk9DJeQcb8Niq77f0PcK1N65XJGCJrqXppP06ge
         oNcg==
X-Gm-Message-State: AOAM533hW87AZ8ZzgGLAXzocUfxkQfWOYxjh9Ywjfr8PTfTxqRPnevZR
        jTiiDDxwRhRLUTvFCkPpOV7+5fEngle5d1jhwZpBye0hr0c=
X-Google-Smtp-Source: ABdhPJygY/c9drBARc17MFxIHLPBGo4JDFRy8RLIMQ62lThApuVD4K6kvp1h8gS2kpaTCapjKPkXp2i8Xjn4Z8cbunU=
X-Received: by 2002:ac2:4e90:: with SMTP id o16mr208546lfr.251.1603126705990;
 Mon, 19 Oct 2020 09:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <20201017210324.556454-1-geomatsi@gmail.com>
In-Reply-To: <20201017210324.556454-1-geomatsi@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 19 Oct 2020 13:58:14 -0300
Message-ID: <CAOMZO5AoeYuAaf3wEP=9BbUyv8Rv-mD+fagtJOOrbLAUVaQEOw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
To:     Sergey Matyukevich <geomatsi@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sergey,

On Sat, Oct 17, 2020 at 5:57 PM Sergey Matyukevich <geomatsi@gmail.com> wrote:
>
> Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
> KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
> modes. Adapt imx6q-udoo board phy settings accordingly: explicitly
> set required delay configuration using "rgmii-id".
>
> Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>

I suppose this fixes a regression, correct?

In this case, it would be nice to provide a Fixes tag, so that the fix
can go to the stable tree.

Thanks
