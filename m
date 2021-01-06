Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50B402EC3E2
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 20:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbhAFT0i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 14:26:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726600AbhAFT0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 14:26:37 -0500
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89562C061575
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 11:25:57 -0800 (PST)
Received: by mail-il1-x12f.google.com with SMTP id 14so3028116ilq.2
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 11:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xaFKfRohtaPoE3enOI+u2FSK7SL+8x1EsgceIYGP8uY=;
        b=CTKvplSxhfDDVOfavQZaAMG4qBbj2/8mhcrz4FSmQxCA735HPG7QpgAqjyG1eoJyZW
         tmEP3wSLXCuQHe2GXLuRJR7/Pd6onZfoqIAJlydBBv3DBMjwiEeD05Wd93HZl7FSqtfQ
         Lcj0fzWdehg1I07F9jaHheCSADzToVQgCo96A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xaFKfRohtaPoE3enOI+u2FSK7SL+8x1EsgceIYGP8uY=;
        b=kC1GoLI0lyzCKg3ZvanzTUP1wrDuROdp+eYq8HjcjHmE549iz9kyrwBnycNBLUdxzQ
         sZAzeShK+kQpx87IlVqsiAksEnqQxWaTJj4un2XYQLJKb5EydPMqZhcZa7L2eDCnJ40E
         X+/5s717OJDQw/43pCWeMLukilFQHYvYglOKRhKc+P+I3WmNJ1es2h4VRy++rgW8LQeG
         JxVTIsHJgQReta8s8Nzg0illsAoPVU50529eGtRbjyjiVawITBSXvC5mYa1WvUUDdZ8b
         tDij+RBOL6+ETGZUWF74tKQzMVODnMqQbgXeR54qnwXtKANpB5RcpHOcWZl8FXkSdwIN
         L1JQ==
X-Gm-Message-State: AOAM5316uz+OH7bIvi5hVsVQkgRiqKZ7Bd1r7RIBi1B8tVbWq+9stVZM
        6BTL1WORxjrC2h41EnZGTJBJDG/TVPZ3SRmVqul1
X-Google-Smtp-Source: ABdhPJy51fbUUwakj9NV8ZScGrO56Pbqi49pgPApun+/P9bZPiya9P3FPQipMyC56ASSnauXW2I93TA7Q3Yw/ZURi5E=
X-Received: by 2002:a92:c5a7:: with SMTP id r7mr5454936ilt.219.1609961156880;
 Wed, 06 Jan 2021 11:25:56 -0800 (PST)
MIME-Version: 1.0
References: <20201223163247.28923-1-conor.dooley@microchip.com>
In-Reply-To: <20201223163247.28923-1-conor.dooley@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Wed, 6 Jan 2021 11:25:46 -0800
Message-ID: <CAOnJCUKw=UBt27XQoVxU=BXtEU0Nf6D2AnmsuyNVJGvJpVUMGw@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Add support for the PolarFire SoC system controller
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
        Anup Patel <anup.patel@wdc.com>, j.neuschaefer@gmx.net,
        Atish Patra <atish.patra@wdc.com>, lewis.hanly@microchip.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 23, 2020 at 8:33 AM <conor.dooley@microchip.com> wrote:
>
> From: Conor Dooley <conor.dooley@microchip.com>
>
> This patch series adds support for the system controller on
> the PolarFire SoC, using the mailbox framework. A Microchip directory
> in the SoC subsystem has been created to hold the mailbox client
> driver and will be used for future service drivers.
>
> This directory is included by the kconfig option:
> CONFIG_SOC_MICROCHIP_POLARFIRE, so this patch series depends on Atish
> Patra's PolarFire SoC support patches which introduce that option.
>

What version of clock driver are you using? I am waiting for an
updated clock patch to post the next
version of the basic soc support series.

> It further depends on the MAINTAINERS entry created in the same series.
>
> Changes from v2:
> * Further reworked dt bindings to satisfy errors and feedback
>   (hopefully phandle array is the correct type for the mboxes)
> * Full maintainers entry moved to Atish's PFSoC support series, this series now only adds mailbox driver
> * Converted config options from MPFS to POLARFIRE_SOC so they are more recognisable
> * Further simplified driver code from feedback
>
> Changes from v1:
> * Squashed header into first patch
> * Fixed DT binding warnings & small fixes
> * Cleaned up drivers from feedback
>
> Conor Dooley (5):
>   mbox: add polarfire soc system controller mailbox
>   dt-bindings: add bindings for polarfire soc mailbox
>   soc: add polarfire soc system controller
>   dt-bindings: add bindings for polarfire soc system controller
>   MAINTAINERS: add maintainers for polarfire soc mailbox driver
>
>  .../mailbox/microchip,mailbox-mpfs.yaml       |  47 +++
>  .../microchip,mpfs_sys_controller.yaml        |  34 +++
>  MAINTAINERS                                   |   1 +
>  drivers/mailbox/Kconfig                       |  12 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/mailbox-mpfs.c                | 285 ++++++++++++++++++
>  drivers/soc/Kconfig                           |   1 +
>  drivers/soc/Makefile                          |   1 +
>  drivers/soc/microchip/Kconfig                 |  10 +
>  drivers/soc/microchip/Makefile                |   1 +
>  drivers/soc/microchip/mpfs-sys-controller.c   | 127 ++++++++
>  include/soc/microchip/mpfs.h                  |  51 ++++
>  12 files changed, 572 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
>  create mode 100644 drivers/mailbox/mailbox-mpfs.c
>  create mode 100644 drivers/soc/microchip/Kconfig
>  create mode 100644 drivers/soc/microchip/Makefile
>  create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
>  create mode 100644 include/soc/microchip/mpfs.h
>
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
