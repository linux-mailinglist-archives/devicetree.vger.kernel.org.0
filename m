Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B576148FA33
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 03:03:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234064AbiAPCDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 21:03:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234063AbiAPCDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 21:03:33 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79215C061574
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 18:03:33 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id w204so6414901pfc.7
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 18:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:from:date:subject:to:cc;
        bh=EQpPofv3xqVheya0dgefCVu2/vpqFU87ufMossH4bmQ=;
        b=WyZmlmZplLS8zfYwy8JZCK4zxfN773ZY67zGGv43GjSQbpeJp2sSAgI/ZzQRFrZlX8
         FLGhVsixwvrXFVgbAFnRzNE2XDpwDgL3RdJBKMrnMeX3wEy3BExHbaC0/0F8+8s/3DZH
         CTSNY4v5VwwBZ+ShgfXy//zoDrUSdpels/Of4iN1J/LeJdIhWr7KKqyWJIciF6d4q3B8
         83TePSuKskIQrH2nLGtK776rp8eH5TZo3lQPe8HP6YAJis4xdtEXw7hbw0oIAYcr0eyS
         oMFBlWLTSX2SyU2eNq+YtA3vDwzc2fJv3bZjNnhZj0rAmUs4aX+2Zu6E0XQXrTZ3oKQ3
         j/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:date:subject:to:cc;
        bh=EQpPofv3xqVheya0dgefCVu2/vpqFU87ufMossH4bmQ=;
        b=UMfRbk96tWYWY0LD90KZeWF0yZGOxe4yagO70V4L8trH4EdrEuKEqVKPIRNO+q7FYd
         yNU4x8v8X1Bbdo4w9fT+x7sG30C9KqMVRRpOrorxzvtZjpnzSrBvtZGOObU6v+HREDsd
         Y6OpjDfl6sDrEcy671w8nZ4vEjrq7tQETfsgzpvd3kMOpqD635xWO07V3dICKJfqtmHi
         VC+rQ3UbdBGHchwMdQsMN3CtnOz6AfGs6PB7p99ISn8rFyz0Ts7ZMSRkmZgxKNs+1YRU
         67UzsuBa4m7iw1enS0MbJ2ElQGFKm427t+ifuSnxVYLzFIN/GcHP37UMx5Mcjumy4aZP
         olxQ==
X-Gm-Message-State: AOAM531fdjJo5xxWaDpWYQjLFM3DqaLVJAQO2TRyKMLZjjGAr0vCBkas
        E6Z26POwxS5MzyK46sCKeG7mczNoRVJMx4Jv
X-Google-Smtp-Source: ABdhPJzi4Nm0DAxYTAaquO6l69+WqV4eA7FwkV4Kp5hunLWNzSWKwTbscVwRpgaBdnUYKJtCnkMnRg==
X-Received: by 2002:aa7:9ec7:0:b0:4be:19fa:f0f3 with SMTP id r7-20020aa79ec7000000b004be19faf0f3mr15342794pfq.8.1642298612838;
        Sat, 15 Jan 2022 18:03:32 -0800 (PST)
Received: from localhost ([121.99.145.49])
        by smtp.gmail.com with ESMTPSA id c10sm9761822pfl.200.2022.01.15.18.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jan 2022 18:03:32 -0800 (PST)
Message-Id: <cover.1642298336.git.daniel.beer@igorinstitute.com>
From:   Daniel Beer <daniel.beer@igorinstitute.com>
Date:   Sun, 16 Jan 2022 14:58:56 +1300
Subject: [PATCH v3 0/2] ASoC: add support for TAS5805M digital amplifier
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, Andy Liu <andy-liu@ti.com>,
        Daniel Beer <daniel.beer@igorinstitute.com>,
        Derek Simkowiak <derek.simkowiak@igorinstitute.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This pair of patches implements support for the TAS5805M class D audio
amplifier. This driver, and the example configuration in the device-tree
file, were originally based on a 4.19 series kernel and have been
modified slightly from the tested version.

This resubmission differs from v2 as follows:

  - The redundant mutex has been removed
  - DSP configuration is loaded as a firmware image, rather than
    directly from the device-tree
  - The volume control returns non-zero when the values have changed, as
    required
  - Some corrections to device-tree example

Daniel Beer (2):
  ASoC: add support for TAS5805M digital amplifier
  ASoC: dt-bindings: add bindings for TI TAS5805M.

 .../devicetree/bindings/sound/tas5805m.yaml   |  56 ++
 sound/soc/codecs/Kconfig                      |   9 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/tas5805m.c                   | 567 ++++++++++++++++++
 4 files changed, 634 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/tas5805m.yaml
 create mode 100644 sound/soc/codecs/tas5805m.c

-- 
2.30.2

