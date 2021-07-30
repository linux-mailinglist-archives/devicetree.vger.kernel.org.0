Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 106F73DB8C8
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238843AbhG3Mlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238745AbhG3Mlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:41:55 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B235EC061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:41:49 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id g13so17608858lfj.12
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/kRBaSoBVL6nxcj2peq5Os69JE28/PQ01R2kk52zEtQ=;
        b=B1kunCRaY6no1HNTHwInM799kDhf+SgjE7ndjdQ84sewMwawNelivcKSO+rton5MPJ
         y4VYcB/Cg8peeDLhGK/2EDol6AoEzxmHYcf4vDsVIvQScv0t+nkECI19WiJCCVlgzSgP
         vFD0ICa74wfojGbkMPz1WlXVD+sTiS7IDtsPAuUIm0e/cPN8eoJve3FJYuc9eqFBSPIz
         i0frmYAuX8hlfM2KV0J7JYvmnPggSsWJhhRXEsSRslLQTn4l1vL4o4mvfZn8qW/NJ5ln
         y4D4C5Fbi3GRWp9Q6Xd1R+v1fTQHcQrQmEoBarlD93n03ymt092utj2uYKtbbo30Hpy3
         5xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/kRBaSoBVL6nxcj2peq5Os69JE28/PQ01R2kk52zEtQ=;
        b=fEYI7+2qPraZ5+FO+c8h5VJZx23n1epeJYDnDCfEDXCjtErQIrVxvCZi/CogsYXohV
         CltpgqEoFQsbg9iNV9kL5WatHzy3/o7LSjuYNAg0EABsljUA6go2VAyC5rr4qKK3C7Xl
         BWMjXlRTS+AvlCE3E0fbEcGUKu5zKzoo3KBngVENYsUtYA7Mw97NxM2a9hI9YGkUsMdY
         Ha3XEq+C33ANjkZ2rWHiFd7TJb6DV9cNC/J93uQgTFcuWAz40cLH4dvCSuEtc+zrvLwm
         VZaGLiZ2DeXGEAzefr7P7p88L8qRguGwMQC9PS1CBa2jdNg8Nf//eiDc7MgINUkBVoBB
         s6tw==
X-Gm-Message-State: AOAM531a7ZH1LpXmsbtcMfV/nJrelMapszsU9b5X1TUNkJHxqHs3szWw
        wKxKb5HFAjoqyI52j2C1O7zCZi6cX9eRrhMexdmUmg==
X-Google-Smtp-Source: ABdhPJweLT/YBIhfBwINTJU7OPApJzz6dnBvoUzGLj8wntDPaxCPjbi2z1j7Y4AtTc+9QppJM2z/97sOVnrc/zLurXo=
X-Received: by 2002:ac2:4c4c:: with SMTP id o12mr1712680lfk.157.1627648908126;
 Fri, 30 Jul 2021 05:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <1626868353-96475-1-git-send-email-lakshmi.sai.krishna.potthuri@xilinx.com>
In-Reply-To: <1626868353-96475-1-git-send-email-lakshmi.sai.krishna.potthuri@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 14:41:37 +0200
Message-ID: <CACRpkdZ=sJTz04NUbKzMkGa1_hW6VrzKCG5xkSYDdNiZfgvhqA@mail.gmail.com>
Subject: Re: [PATCH 0/4] pinctrl: pinctrl-zynq: yaml conversion and minor
 driver updates
To:     Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        git <git@xilinx.com>, saikrishna12468@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 1:54 PM Sai Krishna Potthuri
<lakshmi.sai.krishna.potthuri@xilinx.com> wrote:

> This patch series does the following
> - Covert Zynq pinctrl driver binding file to yaml.
> - Update the binding for Zynq pinctrl to replace the 'io-standard' with
> 'power-source' parameter as recommended by Linus during ZynqMP pinctrl
> driver review(https://lkml.org/lkml/2021/3/25/278).
> - Update the Zynq pinctrl the driver to remove custom pin
> parameter(io-standard) and instead use generic parameter(power-source).
> - Update Zynq dts files to replace 'io-standard' with 'power-source'.
>
> Reason for adding the generic parameter 'power-source' in Zynq pinctrl driver
> is to maintain common pin parameter across Xilinx Zynq and ZynqMP platforms
> for power supply configuration.

I applied patches 1-3 to the pinctrl tree, patch 4 should be applied
to the SoC tree.

Yours,
Linus Walleij
