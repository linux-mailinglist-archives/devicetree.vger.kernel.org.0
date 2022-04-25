Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5998450E7AE
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240215AbiDYSEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236153AbiDYSE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:04:28 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528FB2F3BE
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:24 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id r17so9861955iln.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sZcFYyGibNV6LU/xDH8iv9QsdsOvZbAWtAYGyU5lX8k=;
        b=g5VL4GaPpqCu1bUujjfjCLSSPKVfueckk5918P/hNoybQ9kwNlUInZ/TqQRGrCyK23
         duzCF6FQr+/t2EvrVCqOePgUZPNGo2R1QbeNk5MfgXm8R7v7dz9aAgMTF7usnKm+KwqL
         FTE/PEwnR8iadhnqyc5Q/tQ6mVTiS81MITHepEGgf+D+1Y66sY6WoKr6gTiCy2W8zX9+
         igvB23T7EJWv7hjbySWxlJc+Vc666Cz9J6U57B8IR2OrWrkROqe76Q2YL7g/mFXqcgBB
         NuL3vL0TyrR0kFXYdSZRVqIkhW6UihhnMqSGszULgdpZzYgXlgCs4mkQsMSNnje6M+XA
         RI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sZcFYyGibNV6LU/xDH8iv9QsdsOvZbAWtAYGyU5lX8k=;
        b=bl2sHFzzya98jQmxUbm9NP9ihbET12xJUjn1EjXAhNJ7bgkxXlwbIz4dHBhLk6mpN0
         qHHr2K30pi/6Q2JduaL44wOKYEVKoi06sNER7P4TuAMGC+8fw1k3L+UnAgTlD7shM6nf
         JkrjT3e/IqCNvFXjSGssWRw1I45abNU9lU6FKS8MspoKM32WAnJwiuIysIA60KKpBjo+
         xQCP5ufdCIIuWHzLhghjJgmYUpRC0IXiZka23hvpTITPo223ebDaIguNRzRCrAg3jBQO
         BmJcCS8l5WkWQsOf7Qiy7Our9igHtYkJszdjCZKD05hMOGmv5+DUFQevPbysuM2ZVmlp
         wxaw==
X-Gm-Message-State: AOAM533MCt2WXkxekXNi37KBh8Mw1OnG4nh9oC9G3sE7qeSUD+nXQheG
        gnedr7+kopJ9E6WO0dUlyZQ=
X-Google-Smtp-Source: ABdhPJyjiWXXER7yQBZ7nHuhtWutnCBeFyue4lVZJ4vTbJ7w3f52kn+A09zcVkUY9nTAz3UW6w2TQQ==
X-Received: by 2002:a05:6e02:19c9:b0:2cc:5542:c7d8 with SMTP id r9-20020a056e0219c900b002cc5542c7d8mr7492360ill.309.1650909683678;
        Mon, 25 Apr 2022 11:01:23 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id a1-20020a923301000000b002cae7560bfesm6447379ilf.62.2022.04.25.11.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 11:01:23 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v3 0/2] Add generic serial MIDI driver using serial bus API 
Date:   Mon, 25 Apr 2022 13:01:13 -0500
Message-Id: <20220425180115.757247-1-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Generic serial MIDI driver adding support for using serial devices
compatible with the serial bus as raw MIDI devices, allowing using
additional serial devices not compatible with the existing
serial-u16550 driver. Supports only setting standard serial baudrates on
the underlying serial device; however, the underlying serial device can
be configured so that a requested 38.4 kBaud is actually the standard MIDI
31.25 kBaud. Supports DeviceTree configuration.

Changes in v3:
- Replace use of snd_printk() with dev_* alternatives
- Removed unnecessary initialization of err variables
- Replaced instances of `== SERIAL_MODE_NOT_OPENED` with zero check
- Loop on output_write to completely fill output buffer if data available
- Depend on CONFIG_OF in Kconfig
- Replace use of devm_kzalloc() with extra_size allocation in snd_devm_card_new()
- Use module_serdev_device_driver() instead of module_init() and module_exit(0)

Changes in v2:
- Fix 'snd_serial_generic_write_wakeup' missing static keyword 
- Correct 3.125 kBaud > 31.25 kBaud in documentation for MIDI         


The need for this driver arose from a project using a Raspberry Pi4 which
needed to receive and send raw MIDI with low latency. The pl011 UART
used is not compatible with the existing serial MIDI driver made for
u16550-style devices. Using a userspace program such as ttymidi to feed
input from the TTY device to a virtual ALSA MIDI device was functional,
but not ideal.

I am not sure if a MIDI driver needing the mentioned 'hack' to clock
38.4 kBaud down to the standard MIDI baud is permissible in the mainline
kernel, but am submitting nevertheless in case it is useful. To my knowledge,
it doesn't seem that there would be any way for this driver to manually
configure a serial port to 31.25 kBaud using the serial bus API (please 
correct me f I'm wrong). In my use case, I am actually configuring one port
to run at 115.2 kBaud for faster communication with a custom onboard MIDI controller.



Daniel Kaehn (2):
  dt-bindings: sound: Add generic serial MIDI device
  Add generic serial MIDI driver using serial bus API

 .../devicetree/bindings/sound/serialmidi.yaml |  41 +++
 sound/drivers/Kconfig                         |  18 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 316 ++++++++++++++++++
 4 files changed, 377 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: af2d861d4cd2a4da5137f795ee3509e6f944a25b
-- 
2.33.0

