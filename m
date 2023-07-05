Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA5137486BD
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 16:45:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232656AbjGEOpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 10:45:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232453AbjGEOps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 10:45:48 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227BB1727
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 07:45:47 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-7835bad99fbso240244639f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688568345; x=1691160345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIyQfWNYaIauekpeSYzDVVz2eIIvCCocDHmDK74a8j0=;
        b=Y0E2ucxqwnDFoG1ae0oj9yAH8x5pbwfwKRYJlrsKE2yUxE+qAIcB6+a7Ju6TEKfwGi
         D1LSIptdrXTz35Z7zoKP+o96dADAJSjyWqv7UrKLVUMeFVnFI1WapZq0T5vSZNtwxyaN
         MjA/4/nnHngSIQy0lW/u/nrTQ/pe/8fNF7Flg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688568345; x=1691160345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wIyQfWNYaIauekpeSYzDVVz2eIIvCCocDHmDK74a8j0=;
        b=e6cnnipWR6j+wx3BNea+vrgskqyxj4k7BdZDTE7oODu/xisVEDbBWOuSVaq004SVAb
         XoCLkehQMLiYVVVw+MQ3DZgnjLSpg0UBdcVt72P8nFvFA7QqPymP753s0sbXC7KE4+HN
         2HewsULpuJp8+0RNeIxn+h0OSom9KmsY/IbVvA25ycOvi7nU4vldDslu6i/HA6jzsx/j
         19pfO0sOv/NkSrhZpZs+HTH9a5k44x5b30I/NkcbCKPcpjdvhNmjYaiIeW/U/cQoMx7l
         U1ZHjyLfrP0emkbDJFXbUzcXDadVTRZVbcxwxH4N2xUhgfjt5YwdUbbxYdiWsj9iO/dl
         3+Aw==
X-Gm-Message-State: AC+VfDzuBMRDe6mQWv4mG8/M4WaOLYJ3Q/gKFx4HDKmXiBIiiL27oXyP
        uI3XeKlg70AgiddrIdEvGiGpEbbecS/CwIVCF1A=
X-Google-Smtp-Source: ACHHUZ7JOMz7Ik8gSp60nFzH125Wv4d+/rKl3kQiA/zN8/+fnmRcawa4cRwEyPNr8pQOWJZlw3Ygqw==
X-Received: by 2002:a6b:f60a:0:b0:783:344d:6b46 with SMTP id n10-20020a6bf60a000000b00783344d6b46mr16257674ioh.21.1688568345188;
        Wed, 05 Jul 2023 07:45:45 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id dv2-20020a056638608200b0042b28813816sm3208462jab.14.2023.07.05.07.45.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 07:45:44 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-783546553ddso240197339f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:45:44 -0700 (PDT)
X-Received: by 2002:a6b:7a02:0:b0:785:d017:c16f with SMTP id
 h2-20020a6b7a02000000b00785d017c16fmr17816152iom.14.1688568343801; Wed, 05
 Jul 2023 07:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230630144006.1513270-1-pan@semihalf.com>
In-Reply-To: <20230630144006.1513270-1-pan@semihalf.com>
From:   Alexandru M Stan <amstan@chromium.org>
Date:   Wed, 5 Jul 2023 10:45:07 -0400
X-Gmail-Original-Message-ID: <CAHNYxRx7WsCyZBLTfBTcxYtf1z68YkXgMdYq+8OFMpjq6y9TfA@mail.gmail.com>
Message-ID: <CAHNYxRx7WsCyZBLTfBTcxYtf1z68YkXgMdYq+8OFMpjq6y9TfA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Google Chameleon v3 video driver
To:     =?UTF-8?Q?Pawe=C5=82_Anikiel?= <pan@semihalf.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dinguyen@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mchehab@kernel.org, upstream@semihalf.com,
        ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 30, 2023 at 10:40=E2=80=AFAM Pawe=C5=82 Anikiel <pan@semihalf.c=
om> wrote:
>
> The Google Chameleon v3 is a testing device for external displays. It
> is based on an Arria 10 SoCFPGA. This patch adds a V4L2 driver for the
> video system. The video system consists of:
>   * Six video interfaces (DMA ping pong buffers) in the FPGA, called
>   "framebuffers".
>   * Two Intel DisplayPort DPRX IP cores in the FPGA, one MST x4, one SST
>   * IT68051 chip, handled by EC firmware
>
> The driver is implemented as a single device driver, because the video
> interface devices need to talk to the DisplayPort IP core devices
> (e.g. to configure the EDID). This has the effect of the DPRX driver
> being in the chameleonv3 directory even though it's an Intel IP.
>
> The DPRX code handles all the AUX communication (DPCD, sideband messages,
> message transfers). There is similarity to what's already present in
> the DRM subsystem, but I found it hard to reuse that code effectively.
>
> My main concern is with the overall structure of the driver - how it's
> divided into parts, the interfaces and APIs used, etc. Any feedback is
> greately appreciated.
>
> Pawe=C5=82 Anikiel (3):
>   media: Add 10, 12, and 16 bit RGB formats
>   media: Add Google Chameleon v3 video driver
>   ARM: dts: Add Chameleon v3 video node
>
>  .../socfpga/socfpga_arria10_chameleonv3.dts   |  54 ++
>  drivers/media/platform/Kconfig                |   1 +
>  drivers/media/platform/Makefile               |   1 +
>  drivers/media/platform/google/Kconfig         |   4 +
>  drivers/media/platform/google/Makefile        |   2 +
>  .../media/platform/google/chameleonv3/Kconfig |   9 +
>  .../platform/google/chameleonv3/Makefile      |  15 +
>  .../platform/google/chameleonv3/chv3-core.c   | 292 ++++++++++
>  .../platform/google/chameleonv3/chv3-core.h   |  17 +
>  .../platform/google/chameleonv3/chv3-fb.c     | 539 ++++++++++++++++++
>  .../platform/google/chameleonv3/chv3-fb.h     |  34 ++
>  .../platform/google/chameleonv3/dprx-aux.c    |  77 +++
>  .../platform/google/chameleonv3/dprx-dp.c     |  82 +++
>  .../platform/google/chameleonv3/dprx-dpcd.c   | 424 ++++++++++++++
>  .../platform/google/chameleonv3/dprx-dprx.c   | 262 +++++++++
>  .../platform/google/chameleonv3/dprx-edid.c   |  39 ++
>  .../platform/google/chameleonv3/dprx-i2c.c    |  41 ++
>  .../platform/google/chameleonv3/dprx-mt.c     | 184 ++++++
>  .../platform/google/chameleonv3/dprx-sbmsg.c  | 162 ++++++
>  .../media/platform/google/chameleonv3/dprx.h  | 128 +++++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   5 +
>  include/uapi/linux/videodev2.h                |   5 +
>  22 files changed, 2377 insertions(+)
>  create mode 100644 drivers/media/platform/google/Kconfig
>  create mode 100644 drivers/media/platform/google/Makefile
>  create mode 100644 drivers/media/platform/google/chameleonv3/Kconfig
>  create mode 100644 drivers/media/platform/google/chameleonv3/Makefile
>  create mode 100644 drivers/media/platform/google/chameleonv3/chv3-core.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/chv3-core.h
>  create mode 100644 drivers/media/platform/google/chameleonv3/chv3-fb.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/chv3-fb.h
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-aux.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-dp.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-dpcd.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-dprx.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-edid.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-i2c.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-mt.c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx-sbmsg.=
c
>  create mode 100644 drivers/media/platform/google/chameleonv3/dprx.h
>
> --
> 2.41.0.255.g8b1d071c50-goog
>

Thank you Pawel for sending this.

To generate more interest in this device/driver I wanted to share that
the FPGA implementation (the registers/hw this driver talks to) is
also open source [1]. This is to show that this is not some throw away
driver for some proprietary thing.
The previous Chameleon device has been useful for testing drivers
using the Intel Graphics Test [2] which can exercise a lot of the DRM
video output kernel drivers on many devices, v3 is also compatible
with the same RPC protocol.

[1] https://chromium.googlesource.com/chromiumos/platform/chameleon/+/refs/=
heads/main/v3/fpga/
[2] https://drm.pages.freedesktop.org/igt-gpu-tools/igt-gpu-tools-Chamelium=
.html

Alexandru Stan (amstan)
