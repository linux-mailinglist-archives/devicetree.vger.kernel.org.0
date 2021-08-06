Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4890C3E288C
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 12:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245069AbhHFK2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 06:28:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245066AbhHFK2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 06:28:45 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73F6C061799
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 03:28:28 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id zb12so9539631ejb.5
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 03:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vrtbo3nYb+A1LV8QTCtXNA/gtUtVZ8Uwf/UCTJHHo2E=;
        b=fN0cCGCnATKllE3GHDHpwHGjFTP4zxQpCnNb/5OfuQkBBUgvts8cC2rVV6AByyrtbn
         nBZLih1LgMqaSwFOIAlwkMSUaHeIRTRdj7DY+Ar3tXA9YGtb2rsVlL+82X74s8KO4WnD
         m2CXJuM4WjmjBdPHR714R91GCaef/8GOscYIhUL44iZy/I7qP/AIIaRZ8QWy+PmtMoRf
         JeYUuVHq9mR+d2PmIOX40WW9W+ChSkFF8+Qe8laaI88bxSxQ8jTrrZ3We6+A5XjRAfJ7
         yxCZ7iCA+bhChVaxFAyEf67Jh9asfF98M2cED4LdUGH3FhHkwY74fIZp/j+enZbkWOUG
         K93A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vrtbo3nYb+A1LV8QTCtXNA/gtUtVZ8Uwf/UCTJHHo2E=;
        b=M+Lp38VYPInJQyIMImPSMwQ+skXaNCMJzEot1925rtrPqZgm4MNpx7KwNoFxnnw65x
         hXWqD5J1htxGlKECpR07Byr3ry4L2e6QD2UQwrXrQ8/IXkT244DNOIoYECwV1/OajpyI
         xKh4TvB+5RS0YMbWv/ceiS7/6diOs8kXi6FjQPJ2xZTjAGf95t8j63waHk7oCyObptPR
         YDT74rVIsj6oQSojggpYt2tI/GIKt1f3CpZ8idwlkWIjtwjggzmDszwpOiGWO4ks5Pv/
         M2jfGpdjjkfBErzcR6xj0GH770ThX6cJ6VR9HBdTarc4V6e+iv5cBMTy5Sf32jaOvDL1
         NPDw==
X-Gm-Message-State: AOAM533Hr9vcGEjFq2tICkWqF2cqLYz3CCfLM+h6MusVtivmUG4EKr+s
        QMoNWMCs9ND0dNkKQyKWThEBM5FeKoT5IMzIN5h5LA==
X-Google-Smtp-Source: ABdhPJwa9HUUcxdtqwQ3XG5MjEhWNE43w2E0x+nkczBIqoR2r2er3dww7NDeYZnIZy5VyrBY6Sphn+vjF1fsvOf773g=
X-Received: by 2002:a17:906:8a66:: with SMTP id hy6mr8959236ejc.309.1628245707552;
 Fri, 06 Aug 2021 03:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1624618100.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1624618100.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Fri, 6 Aug 2021 12:28:16 +0200
Message-ID: <CAHTX3dL5qTaB+YFPXiDYQAcDD_L9mYu_zAY=zV_2kXMsOR=YAA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] PCI: xilinx-nwl: Add clock handling
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>,
        Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Ravi Kiran Gummaluri <rgummal@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn and Krzysztof,

p=C3=A1 25. 6. 2021 v 12:48 odes=C3=ADlatel Michal Simek <michal.simek@xili=
nx.com> napsal:
>
> Hi,
>
> this small series add support for enabling PCIe reference clock by driver=
.
>
> Thanks,
> Michal
>
> Changes in v3:
> - use PCIe instead of pcie
> - add stable cc
> - update commit message - reported by Krzysztof
>
> Changes in v2:
> - new patch in this series because I found that it has never been sent
> - Update commit message - reported by Krzysztof
> - Check return value from clk_prepare_enable() - reported by Krzysztof
>
> Hyun Kwon (1):
>   PCI: xilinx-nwl: Enable the clock through CCF
>
> Michal Simek (1):
>   dt-bindings: pci: xilinx-nwl: Document optional clock property
>
>  .../devicetree/bindings/pci/xilinx-nwl-pcie.txt      |  1 +
>  drivers/pci/controller/pcie-xilinx-nwl.c             | 12 ++++++++++++
>  2 files changed, 13 insertions(+)
>
> --
> 2.32.0
>

Can you please take a look at this series?

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
