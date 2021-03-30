Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 740E734F52D
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 01:55:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232246AbhC3Xyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 19:54:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbhC3XyT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 19:54:19 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4F3C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 16:54:19 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id x7-20020a17090a2b07b02900c0ea793940so246230pjc.2
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 16:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4eVDKwhdLmciP93KTCC0yDxL5KfIZeE8g1SyVsqOLkA=;
        b=AlKXlLsA5yjVpl1CX25zymbCDal6W0KEOLvxT4VwnOEYesq4ZDx+gAr/9NziioBh2d
         EBqtWpicZr/mamdSf7J+UaN2FceX+60I+T9RVpm0muefken1m/AuVKntCTSKN7f3EOtW
         XCnV6eRQfewJp0THXtwT2vxo10+wyU7BgTRMSYK2UVHaazCd1CWsG9NeoZb+SxzAbu6p
         4/EbRqAglhHPqRkoLWWwPkqn0LhmqFg5evzFxUeejxyoWBnNXtLO7ZvhuakYQNYqI8Tj
         Ddkz21c+cS5oD7gggWaFlzrQRHqqfzV0k22WBrx3lIY8ssKz0g3e4tEGLl2urNkAGEvF
         rHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4eVDKwhdLmciP93KTCC0yDxL5KfIZeE8g1SyVsqOLkA=;
        b=EJU87o1kgdO+0ywKr6YpGV0ysSDV/VXHuCVqlbOO47hMxeF+aClIz3vfM9FpxkMb2t
         btYPJhGSJEz/J7umlx9HHJ08TAkF+/+pKbpmVNtJ8efleskZrNcyLMOAlxj+ehSl7sCQ
         GUNg0C1nEz1PzxGbYqPAjzs/3agrNLVXG3kTdpsH/hqr3avmpiQKVBZozv4XzWnB8fFw
         HRiBwAxlvYUc4INcwBHjqT8Q/ZQciPHty+rrVABzTwRWaIKOy24sgbtPNUKDklrBsDD0
         njU/QTdIEHeeK1p9tpHCeOMAw34+N4qGTiGM8sgnC+GhvrK082SgAnRt167R30z7I/eN
         7dFg==
X-Gm-Message-State: AOAM532w0eqNO4lOKbD8IHN4Gd2WPA26jc0dSWq3yjScaNnv1QRqS5ck
        VCX4YyPXmi/xqqDtGZUuQdZlWvsGBMLQVUKBQiY=
X-Google-Smtp-Source: ABdhPJyv6Y/IWr85TsPhRhzUNvg49VdAa4O+NvEAVMjplZUTBY5Ax+gXoj0f79QdzyQQRKgKWYrz9Zyim4Cb6CEbMPc=
X-Received: by 2002:a17:902:be02:b029:e6:bb0d:6c1e with SMTP id
 r2-20020a170902be02b02900e6bb0d6c1emr680485pls.77.1617148458772; Tue, 30 Mar
 2021 16:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-1b7b4cb7-2f9a-4bdb-b00c-14ec1d7008b0@palmerdabbelt-glaptop> <1afc3d35-55ff-eefd-3fc9-6342f85fa887@microchip.com>
In-Reply-To: <1afc3d35-55ff-eefd-3fc9-6342f85fa887@microchip.com>
From:   Jassi Brar <jassisinghbrar@gmail.com>
Date:   Tue, 30 Mar 2021 18:54:08 -0500
Message-ID: <CABb+yY2s+ovT4Dhbsy4Mjn2EtgEwYdezhmUcL3H8GWCdaO2bPA@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add support for the PolarFire SoC system controller
To:     Conor.Dooley@microchip.com
Cc:     palmer@dabbelt.com, Rob Herring <robh+dt@kernel.org>,
        Damien.LeMoal@wdc.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-riscv@lists.infradead.org, j.neuschaefer@gmx.net,
        Lewis.Hanly@microchip.com, Cyril.Jean@microchip.com,
        Daire.McNamara@microchip.com, Atish.Patra@wdc.com,
        Anup.Patel@wdc.com, david.abdurachmanov@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 30, 2021 at 6:06 AM <Conor.Dooley@microchip.com> wrote:

> >>  create mode 100644
> >> Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> >>  create mode 100644 drivers/mailbox/mailbox-mpfs.c
> >>  create mode 100644 drivers/soc/microchip/Kconfig
> >>  create mode 100644 drivers/soc/microchip/Makefile
> >>  create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
> >>  create mode 100644 include/soc/microchip/mpfs.h
> >
> > The only problem I see here is that patch #3 (the driver for the system
> > controller) comes before patch #4 (the DT bindings for that driver).
> > That
> > triggers a checkpatch warning.  I can just reorder it, but it would be
> > great to
> > have some reviews from the DT and mailbox people.  If not I'll try and
> > find
> > some time to take a closer look.
>
> I've had a fair bit of back and forth with Rob about the dt bindings,
> hopefully this version he happy with - think all of his concerns have
> now been addressed. Haven't heard anything from Jassi Brar on the device
> tree side however
>
Nowhere is explained how the controller works, and the bindings seem
trivial, so I have no concern.

-j
