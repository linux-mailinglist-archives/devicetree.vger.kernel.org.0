Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09B6B20E122
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2020 23:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731360AbgF2Uw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 16:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731359AbgF2TN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 15:13:26 -0400
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE410C0086D7
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 02:30:30 -0700 (PDT)
Received: by mail-qt1-x841.google.com with SMTP id i3so12265832qtq.13
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 02:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UWVs7He7VNIcTh2C2GcW0olT9jljSKgU/1oAwOuPtj8=;
        b=hW0bjXJ0rtdgLiAay3FdknLQeHjtZqzeYHE69L5wxoXNmFXvK+g5OpTMUhJwRHwb7q
         bvbox0QHDiD0SWD3kx0HYahntB4q1cNXNRlDC0/R9t7yEOw5ekE67FmcALSsiLzjg3+f
         VL/UgX+94SeirX9eASNqOzglpF/GB/ckHbGUEubGz6b0wAx0SKVBnANLxN/gaYoMo2Yc
         X6pSS5Lirm3fN4cisNuiLIMKseewP65b30sMVYmnNDQwpy+Yd8O8q/HJ/TxZAZcgU9Bh
         Do9DkbjBCxyJAw9Q953X/t9ZOnwnvkOC5h6FffoGecyxugFrYB5FmJHH2EO9vzhEErtB
         s/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UWVs7He7VNIcTh2C2GcW0olT9jljSKgU/1oAwOuPtj8=;
        b=NEFCEM3DAsU1z4ffYhOBmSTuq65+1fAs56jqZO1Ml00Rt+LMfhiIgCAu9eDAUphZmZ
         u8hMNvDjB8j5FQCwVWJdrgdum43uqclFN3/QCMQ1O2IwHOvkT3RJAVF7pLu7AOvrC/7r
         rsEP3Ylko9y59YeYErkLolowtg73WVckhyaovrIQ1LQWKgeJJbDRARsCVkw+OQaFRugt
         snuCs/q6HnJWRSCK3JxHOUII+UcuO8nmAY5OglHtKcE4gast+o6yIHWGyc8T7v6WpAcj
         fySwsilfMptKldGe1tVyvp0AQz4g1YltiA6fhc/lX4zbzQxX3SntEjedOwsEvtX29DVs
         7bKA==
X-Gm-Message-State: AOAM530qjyTf2WbE3RlrnomXiDrqsu2qQ9oP7NgAhVZnlfTXI8ocqD6B
        n5GUvsH2ObdpD8VvQz9FMVE4/DLuvNzoU9Zx8k7nNg==
X-Google-Smtp-Source: ABdhPJypLWJGj9IRMTQXEPocCDXObCcTTrMC0Y9v+HHaQ4Ic+KR82mGBzixOF6s8j9FAdyeyxr4vPoEu5a71J2jx/OI=
X-Received: by 2002:ac8:3470:: with SMTP id v45mr15134731qtb.51.1593423029840;
 Mon, 29 Jun 2020 02:30:29 -0700 (PDT)
MIME-Version: 1.0
References: <1592308864-30205-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1592308864-30205-1-git-send-email-yash.shah@sifive.com>
From:   Greentime Hu <greentime.hu@sifive.com>
Date:   Mon, 29 Jun 2020 17:30:18 +0800
Message-ID: <CAHCEeh+X+0m_oprdS+frRkfbmW7EvWF63xWeJFcQB4_Zc_RUgw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Dynamic CPU frequency switching for the HiFive
To:     Yash Shah <yash.shah@sifive.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>, robh+dt@kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, sachin.ghadi@sifive.com,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>, lollivier@baylibre.com,
        Green Wan <green.wan@sifive.com>,
        Atish Patra <atish.patra@wdc.com>, alistair.francis@wdc.com,
        deepa.kernel@gmail.com, bmeng.cn@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Yash Shah <yash.shah@sifive.com> =E6=96=BC 2020=E5=B9=B46=E6=9C=8816=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:01=E5=AF=AB=E9=81=93=EF=BC=9A
>
> The patch series adds the support for dynamic CPU frequency switching
> for FU540-C000 SoC on the HiFive Unleashed board. All the patches are
> based on Paul Walmsley's work.
>
> This series is based on Linux v5.7 and tested on HiFive unleashed board.
>
> Yash Shah (3):
>   riscv: defconfig, Kconfig: enable CPU power management
>   riscv: dts: fu540-c000: define hart clocks
>   riscv: dts: HiFive Unleashed: define a default set of CPU OPPs
>
>  arch/riscv/Kconfig                                 |  8 +++++
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi         |  5 +++
>  .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 38 ++++++++++++++++=
++++++
>  arch/riscv/configs/defconfig                       |  5 +++
>  4 files changed, 56 insertions(+)
>

Hi Yash,

Thank you for the patch. It works for me to test with cpufreq-ljt-stress-te=
st.
Here is my log.

CPU stress test, which is doing JPEG decoding by libjpeg-turbo
at different cpufreq operating points.

Testing CPU 0
 1400 MHz ............................................................ OK
  999 MHz ............................................................ OK
  700 MHz ............................................................ OK
  350 MHz ............................................................ OK

Testing CPU 1
 1400 MHz ............................................................ OK
  999 MHz ............................................................ OK
  700 MHz ............................................................ OK
  350 MHz ............................................................ OK

Testing CPU 2
 1400 MHz ............................................................ OK
  999 MHz ............................................................ OK
  700 MHz ............................................................ OK
  350 MHz ............................................................ OK

Testing CPU 3
 1400 MHz ............................................................ OK
  999 MHz ............................................................ OK
  700 MHz ............................................................ OK
  350 MHz ............................................................ OK

Overall result : PASSED

Tested-by: Greentime Hu <greentime.hu@sifive.com>
