Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F12F34DFE8
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 06:17:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbhC3ERK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 00:17:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbhC3ERJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 00:17:09 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D03AC061764
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:17:09 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id ha17so7077797pjb.2
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=OcWd55xebTB24sreroD1qZpawyCTv8UZHAXK2ERvy9s=;
        b=p0/I8NtbVXDYOy0fZXab6O6OcOeyt+XL9Tiexg8Xl9B7lZsk+TS25ANjTmI3whnBoO
         R+H3Nai5/XFBJqm/2aeGprfAWQFvqG7SEZmplaOuvLT/8+jLT5NOd0JRfYJ/GR82qRjt
         RGyghFpbcvu5ww73BMBf2epVAuPPWuahAjzVrdmsYzy5v7YzjYQDF8Trj8a/fnVqAA+M
         ncqYQZWA1431ey+T8xOZbByurfUzeGd5E/L2S+98JHO91zaT5w9yaLbCqLibCFk2P9AR
         055yixsDsO5M2JXengGxYICdP9t4yZfO3S7/Mes5DLmNU6MzOLbBKcseXFGvYUv8dPqC
         1HQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=OcWd55xebTB24sreroD1qZpawyCTv8UZHAXK2ERvy9s=;
        b=Vau5DchWO+aFOLZGba4wn7iVvg7BqSpBh2YWPcmdTrc9D+CmxWmQK2r5/8J9+PccAY
         5l49tBkB8nZegR2JU1eypsAhPLOM9ZsgpopwNhd30LcOJW5flqH5WB2q6I3lDg367sRX
         UalDBYnYX+b+XYQZvpBeqXqG1FPN+yB1mEKhXrWm+47SYkMXO5374X49Frrfy1Zean6v
         xYwSAIJLgghDft0Tpb1Z3W9kR94RUmXxEos9zcvLMo5nS0t8oK1BO89R43JCzrnOCg9U
         ugVzMsL8ZAKznNj9+ds2OfCx4qxbbGLvW25v0PIxRu5ulv1Nv3FvvNchfaxDZMamWr70
         cR8Q==
X-Gm-Message-State: AOAM531JQjrDW99146HZKTWWIL8OqXqpJp6k7mv2g/3PRC8fMi5uWZj7
        0KDjD645ebOatSmEJjvV3rtscg==
X-Google-Smtp-Source: ABdhPJxmk3iyeQ0iOX8LuERJI5v+BjpnllIEh9WKU7NBJNZpSN1zGZybLDSjIkeDTwi8UHkaYqo+Cg==
X-Received: by 2002:a17:90a:fe93:: with SMTP id co19mr2395712pjb.142.1617077828352;
        Mon, 29 Mar 2021 21:17:08 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id 143sm19281326pfx.144.2021.03.29.21.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 21:17:07 -0700 (PDT)
Date:   Mon, 29 Mar 2021 21:17:07 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Mar 2021 21:07:16 PDT (-0700)
Subject:     Re: [PATCH v4 0/5] Add Microchip PolarFire Soc Support 
In-Reply-To: <20210303200253.1827553-1-atish.patra@wdc.com>
CC:     linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
        aou@eecs.berkeley.edu, Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>, bjorn@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org,
        Conor.Dooley@microchip.com, daire.mcnamara@microchip.com,
        Ivan.Griffin@microchip.com, Lewis.Hanly@microchip.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-13c067eb-0011-408d-83f4-2950c1e791fa@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 03 Mar 2021 12:02:48 PST (-0800), Atish Patra wrote:
> This series adds minimal support for Microchip Polar Fire Soc Icicle kit.
> It is rebased on v5.12-rc1 and depends on clock support.
> Only MMC and ethernet drivers are enabled via this series.
> The idea here is to add the foundational patches so that other drivers
> can be added to on top of this. The device tree may change based on
> feedback on bindings of individual driver support patches.
>
> This series has been tested on Qemu and Polar Fire Soc Icicle kit.
> It depends on the updated clock-series[2] and macb fix[3].
> The series is also tested by Lewis from Microchip.
>
> The series can also be found at.
> https://github.com/atishp04/linux/tree/polarfire_support_upstream_v4
>
> [1] https://lists.nongnu.org/archive/html/qemu-devel/2020-10/msg08582.html
> [2] https://www.spinics.net/lists/linux-clk/msg54579.html
>
> Changes from v3->v4:
> 1. Fixed few DT specific issues.
> 2. Rebased on top of new clock driver.
> 3. SD card functionality is verified.
>
> Changes from v2->v3:
> 1. Fixed a typo in dt binding.
> 2. Included MAINTAINERS entry for PolarFire SoC.
> 3. Improved the dts file by using lowercase clock names and keeping phy
>    details in board specific dts file.
>
> Changes from v1->v2:
> 1. Modified the DT to match the device tree in U-Boot.
> 2. Added both eMMC & SDcard entries in DT. However, SD card is only enabled
>    as it allows larger storage option for linux distros.
>
> Atish Patra (4):
> RISC-V: Add Microchip PolarFire SoC kconfig option
> dt-bindings: riscv: microchip: Add YAML documentation for the
> PolarFire SoC
> RISC-V: Initial DTS for Microchip ICICLE board
> RISC-V: Enable Microchip PolarFire ICICLE SoC
>
> Conor Dooley (1):
> MAINTAINERS: add microchip polarfire soc support
>
> .../devicetree/bindings/riscv/microchip.yaml  |  27 ++
> MAINTAINERS                                   |   8 +
> arch/riscv/Kconfig.socs                       |   7 +
> arch/riscv/boot/dts/Makefile                  |   1 +
> arch/riscv/boot/dts/microchip/Makefile        |   2 +
> .../microchip/microchip-mpfs-icicle-kit.dts   |  72 ++++
> .../boot/dts/microchip/microchip-mpfs.dtsi    | 329 ++++++++++++++++++
> arch/riscv/configs/defconfig                  |   4 +
> 8 files changed, 450 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/riscv/microchip.yaml
> create mode 100644 arch/riscv/boot/dts/microchip/Makefile
> create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
> create mode 100644 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi

I had this left in my inbox waiting for either some reviews to come in or a v2,
but I don't see any.  Did I miss something?
