Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5F934DFEA
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 06:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbhC3ERm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 00:17:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbhC3ERK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 00:17:10 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14029C061762
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:17:10 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso6993226pjb.3
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=Xzt2D7D/8qz9mqZc73J/MiaNdoFuDDHzLfWD7WrwK28=;
        b=Zh7TWBOdRmF/EDwfsamsz513qbOcE5p9e88aXakOnV4FGH5MrWa+RvNe5O7aXrr++8
         QjNv0CQyjr0DlyPFwE8mcWLuFQtR0C5dIhw8Kve1PTgWWteh35odSG83C2/qwNUsmlZD
         jGuDT6Pv2FvR7P2tCUc+u1cy2+nJ6nMMdWajSu16UtVF7puSH9SXhCYuqCSJQ8bsL6F6
         vvV+u0gg+YmI5yplq9xKSQu9RxjeDGEhlgy9sQDIQ4N9SM/HZjniztNQ3SJKheMF4EyU
         uvD3axZ7V8E9Yy9wJHbJqv3d+yo6fQSd1gcJkM373xhG0kmVZFm5TVcewSVe/auSMbDZ
         h7Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=Xzt2D7D/8qz9mqZc73J/MiaNdoFuDDHzLfWD7WrwK28=;
        b=AS5DzFXi/jjSY1bITjnpPSviuml73npDvB1Spc8sdnJ/lln281bkLVNSEaJlVJXdgs
         T/LcQClUxBgJbOhuLF714rmzrzldC+ZzGn2jjs9gIIsMV7qhSzDSMNveKqSeo59FG48b
         MMK5Ci4Q/D2MYUOVEbaRvPSw+h7uUkUXM03EaD+mk9HpWc8xMHhfNPz3KsZHfyKOM3WP
         gtDyV5qedOFDH3bOwLyvoyfziNhlC7u99HDC7JBnURS+Ms+2dfYnL1dwwOAiLNvsZG7I
         +X2GIMvdZuk0e/+6299l9hCQRDwkc89qjLF4e8LA1dTlkpdH8bRoObIvBtQo7DWlTVVr
         Nylw==
X-Gm-Message-State: AOAM530hPNuoOeTV8L752itRGVeTm/6SOtbAWdZyRNtYqGCNTdFaqYwC
        1/bKWyRPrdAvc13g/yBIqVWDMg==
X-Google-Smtp-Source: ABdhPJypvRQPu93Uxmqk90Jsqq7AsyUo3Ja6eWm7OV8vxclphJJc65shzNBXomosibxYw+Mv3AOweQ==
X-Received: by 2002:a17:90b:3d1:: with SMTP id go17mr2410818pjb.70.1617077829569;
        Mon, 29 Mar 2021 21:17:09 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id 11sm19252590pfn.146.2021.03.29.21.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 21:17:09 -0700 (PDT)
Date:   Mon, 29 Mar 2021 21:17:09 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Mar 2021 21:16:33 PDT (-0700)
Subject:     Re: [PATCH v4 0/5]  Add support for the PolarFire SoC system controller
In-Reply-To: <20210311113431.15378-1-conor.dooley@microchip.com>
CC:     robh+dt@kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        j.neuschaefer@gmx.net, lewis.hanly@microchip.com,
        cyril.jean@microchip.com, daire.mcnamara@microchip.com,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>, david.abdurachmanov@gmail.com,
        conor.dooley@microchip.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     conor.dooley@microchip.com
Message-ID: <mhng-1b7b4cb7-2f9a-4bdb-b00c-14ec1d7008b0@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Mar 2021 03:34:31 PST (-0800), conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> This patch series adds support for the system controller on
> the PolarFire SoC, using the mailbox framework. A Microchip directory
> in the SoC subsystem has been created to hold the mailbox client
> driver and will be used for future service drivers.
>
> These drivers are gated by the kconfig option:
> CONFIG_SOC_MICROCHIP_POLARFIRE, so this patch series depends on Atish
> Patra's PolarFire SoC support patches which introduce it.
>
> It further depends on the MAINTAINERS entry created in the same series.
>
> Changes from v3:
> * Fixed mboxes reference in dt binding for mailbox client
> * Bug fixes and cleanup from Jonathan Neuschäfer's feedback on
>   mailbox-mpfs.c & mpfs-sys-controller.c
> * Renamed dt binding files to match compatible strings
> * Removed PFSoC gating condition on drivers/soc/microchip subdirectory
> * Converted all size based operations to bytes for consistency
> * Converted response array to a structure, enabling support for more
>   complex services that return a status instead of/alongside a payload.
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
>   MAINTAINERS: add entry for polarfire soc mailbox driver
>
>  .../microchip,polarfire-soc-mailbox.yaml      |  47 +++
>  ...icrochip,polarfire-soc-sys-controller.yaml |  36 +++
>  MAINTAINERS                                   |   1 +
>  drivers/mailbox/Kconfig                       |  12 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/mailbox-mpfs.c                | 277 ++++++++++++++++++
>  drivers/soc/Kconfig                           |   1 +
>  drivers/soc/Makefile                          |   1 +
>  drivers/soc/microchip/Kconfig                 |  10 +
>  drivers/soc/microchip/Makefile                |   1 +
>  drivers/soc/microchip/mpfs-sys-controller.c   | 127 ++++++++
>  include/soc/microchip/mpfs.h                  |  57 ++++
>  12 files changed, 572 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
>  create mode 100644 drivers/mailbox/mailbox-mpfs.c
>  create mode 100644 drivers/soc/microchip/Kconfig
>  create mode 100644 drivers/soc/microchip/Makefile
>  create mode 100644 drivers/soc/microchip/mpfs-sys-controller.c
>  create mode 100644 include/soc/microchip/mpfs.h

The only problem I see here is that patch #3 (the driver for the system
controller) comes before patch #4 (the DT bindings for that driver).  That
triggers a checkpatch warning.  I can just reorder it, but it would be great to
have some reviews from the DT and mailbox people.  If not I'll try and find
some time to take a closer look.
