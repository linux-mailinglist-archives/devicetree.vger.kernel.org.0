Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06CFE6E2757
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 17:49:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjDNPtb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 11:49:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbjDNPta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 11:49:30 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53F5DBBA5
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 08:49:03 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-54c0c86a436so471638777b3.6
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 08:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681487339; x=1684079339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmFm31Zgsnr/JAh9QTSGsVfx+ibrGoUUFemyLUbPtb4=;
        b=Rlt5TLsrmDQaF6QrL29STaJ8widYErvoHVHGL306lK6j+b2aQWb/UWMl/2yI0RqrwW
         5KgUckmm4yPBuzWXEb7czSz+ISdpwkLm78usJs1W8tGJg0ggbhFepN/tR2qN06v8kgC6
         /cHOuBdopwHD81KWmxN73TGt2jL9mHMADSvLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681487339; x=1684079339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fmFm31Zgsnr/JAh9QTSGsVfx+ibrGoUUFemyLUbPtb4=;
        b=YckWdobK3Gv6syu7MCqMX/1ckYaZ3HvAoc9O3ZYIdBKh1M8jn/knBLojxrhA4EWqGi
         MR6vHX+eANchZUcZRpae13woe1CHCqcHQvHpIpUyqjQJQt4wnp8sIqabZpQ2k507VKq4
         a4fbEdLDyKQkSM9bMXbX2fQW7lpJTtKnF2E5E4vSy64Eq8+YK1s4aSJ+ghvDKIh3X8fO
         s+MZ+h4u5mJbMdMMfXgtErD4eOSDBT0U9ARVtDEQLCHTZeHwHNgF16S08UkL/KZp3KIb
         t4sczJkUaXeHgYi2mrB1G1a3uqHaavc0ehCPTQDXwBTJj3K6Kz/43VwnNnvGK/T/uUIZ
         A8Qw==
X-Gm-Message-State: AAQBX9c+9yp1OrrkNczCjQ2fdxfBE/fEfhVR+0OTV9CJEUmmijaBcRGh
        i2YSIavorlwtS+z/LmYZziq07+ATnTD1htAp8As=
X-Google-Smtp-Source: AKy350adTa1Ib1cWrJaS2lx9jaqnP3Ssxb3epE1HaRYFz4Pbb6B9PbwwxzYRcrM7Wrj6OYIBLd5Htw==
X-Received: by 2002:a0d:d4c8:0:b0:536:cb48:9059 with SMTP id w191-20020a0dd4c8000000b00536cb489059mr7004072ywd.50.1681487339284;
        Fri, 14 Apr 2023 08:48:59 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id be15-20020a05690c008f00b0054f9da5e8cbsm1203752ywb.146.2023.04.14.08.48.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 08:48:58 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-54f21cdfadbso301116877b3.7
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 08:48:58 -0700 (PDT)
X-Received: by 2002:a81:4106:0:b0:54f:b4e6:ae4e with SMTP id
 o6-20020a814106000000b0054fb4e6ae4emr4048259ywa.7.1681487337813; Fri, 14 Apr
 2023 08:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <1681481153-24036-1-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1681481153-24036-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 14 Apr 2023 08:48:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XU_SWzJTmtqoZZ1eTDu3WcWQOAFbkBS=Juaz9_DivZSg@mail.gmail.com>
Message-ID: <CAD=FV=XU_SWzJTmtqoZZ1eTDu3WcWQOAFbkBS=Juaz9_DivZSg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] spi: Add DMA mode support to spi-qcom-qspi
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 14, 2023 at 7:06=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> There are large number of QSPI irqs that fire during boot/init and later
> on every suspend/resume.
> This could be made faster by doing DMA instead of PIO.
> Below is comparison for number of interrupts raised in 2 acenarios...

s/acenarios/scenarios

> Boot up and stabilise
> Suspend/Resume
>
> Sequence   PIO    DMA
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Boot-up    69088  19284
> S/R        5066   3430
>
> Though we have not made measurements for speed, power we expect
> the performance to be better with DMA mode and no regressions were
> encountered in testing.

Measuring the speed isn't really very hard, so I gave it a shot.

I used a truly terrible python script to do this on a Chromebook:

--

import os
import time

os.system("""
stop ui
stop powerd

cd /sys/devices/system/cpu/cpufreq
for policy in policy*; do
  cat ${policy}/cpuinfo_max_freq > ${policy}/scaling_min_freq
done
""")

all_times =3D []
for i in range(1000):
  start =3D time.time()
  os.system("flashrom -p host -r /tmp/foo.bin")
  end =3D time.time()

  all_times.append(end - start)
  print("Iteration %d, min=3D%.2f, max=3D%.2f, avg=3D%.2f" % (
      i, min(all_times), max(all_times), sum(all_times) / len(all_times)))

--

The good news is that after applying your patches the loop runs _much_ fast=
er.

The bad news is that it runs much faster because it very quickly fails
and errors out. flashrom just keeps reporting:

Opened /dev/mtd0 successfully
Found Programmer flash chip "Opaque flash chip" (8192 kB,
Programmer-specific) on host.
Reading flash... Cannot read 0x001000 bytes at 0x000000: Connection timed o=
ut
read_flash: failed to read (00000000..0x7fffff).
Read operation failed!
FAILED.
FAILED

I went back and tried v1, v2, and v3 and all three versions fail.
