Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66815200A7
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 17:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237832AbiEIPDr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 11:03:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237817AbiEIPDq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 11:03:46 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E5592C8182
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 07:59:45 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id e194so15571812iof.11
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 07:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZBWK8wEtyr3Z+BKeKhTzRy0e8y5LPeZaKSAOhM39sxY=;
        b=dabwonrxBvREcvRmh8BKjyxddQgAgZ315FC7yvcivNt2pI9Im7qk0GE9KVz+g+WDI2
         W9ogHxk50GBdSiADYTabQAKJX6n43XsDExJC6eaPdhV3fl+exZsAKteiLLAE0iAb9XWC
         l5TdA8H1G5K1XcQSTk+9xVPhM/IBkBZ2TtIuClLkeq/aWaqY+dIpPXvQ8zsKGJZipt4a
         M6fe6gY4TO2BUt4UMQsKHNr0gkVemrO07dDl1VcTDZsQFk2miX12Sqi6o+zW+QTXaLP8
         mOXPWyL/tNDR9MGHmOBZwh2I/FpSRo4R2/BTQ6mKX4GB1RIzKmn7Rss5NDVMNsqTJg7h
         hBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZBWK8wEtyr3Z+BKeKhTzRy0e8y5LPeZaKSAOhM39sxY=;
        b=BLfl2mOabMo4eoMmmAwYpWzVheVqfRiul0zI+j3JRnq8xFaFHYdawo0dxzMKAQ2kSa
         nIUE5jhh3RLJf2Axiq4YyNj3MbOgAH3z5Yl4cOab4wL9nLkKjMseEf1QMMWLACLYCnHv
         jA7JQRMf3wivJgQXRYH6rDoKMrzTPXc+FvFJb+zdQP/SGUCOhFnIttvNWJ/GnPvJutH9
         aWfaqr+h60PYvGQEfNwTqES4XUSVigFoJx5pDR84KEInPph4UV1ciH3F51x+sZpVIEXK
         jC5e+JhEvJ+qBOQLN70CnZ9a6O2pb+bU7jVWwp1YLQrO71ysMFU2MNt5dPNIHy/fV1oe
         Puxg==
X-Gm-Message-State: AOAM533DLd/5Q/fjNsivr2mQtqXNPZafmSPpPvFwLGD+isW/qmRGRoN4
        qOCNC1mI3OULasS8t6JGD3U=
X-Google-Smtp-Source: ABdhPJxMA3QH7S6K4X/siM5hUPpJ1ohmB1mimy04z0Pxe/zc+KqEKDH9Fe83DZ1DWUwR302jkE11xQ==
X-Received: by 2002:a6b:ca44:0:b0:657:b54a:5c53 with SMTP id a65-20020a6bca44000000b00657b54a5c53mr6545149iog.108.1652108381502;
        Mon, 09 May 2022 07:59:41 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id p18-20020a02b892000000b0032b3a7817c1sm3664414jam.133.2022.05.09.07.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 07:59:41 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v7 0/2] Add generic serial MIDI driver using serial bus API
Date:   Mon,  9 May 2022 09:59:31 -0500
Message-Id: <20220509145933.1161526-1-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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

Changes in v7:
- Separate examples in dt-binding to remove need to specify unit name
    (fixing dt_binding_check error)

Changes in v6:    
- Change compatible "serialmidi" -> serial-midi" 
- Default current-speed to 38400 (closest baud to MIDI standard speed) 
- Appropriately stop reading or writing MIDI if input or output
    _trigger() is called with a parameter of zero, respectively 
- Zero out corresponding triggered state on close to ensure input and
    output closing results in the serial port being closed 
- Fix order of operations in _probe() 
- Remove "DEBUG" literal from debug messages
- Remove unused dt-parsing patch checking for existence of node
- Whitespace / tabbing fixes / improvements

Changes in v5:
- Reword description in dt-binding for clarity
- Change 'speed' dt property to standard 'current-speed'
- Move MIDI output loop onto workqueue (since this could loop quite a while,
    if ALSA provides a continuous stream of bytes)
- Add tx_state bit flags to snd_serial_generic struct
- Safegard critical section in tx_work with atomic bit ops on tx_state
- Switch operations on filemode to use atomic bit ops

Changes in v4:
- Fix regressed typo - Correct 3.84 kBaud -> 38.4 kBaud in DT & Kconfig
  (sorry about spam - noticed after sending v3 and didn't want to let
  the error sit around for too long)

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

 .../bindings/sound/serial-midi.yaml           |  51 +++
 sound/drivers/Kconfig                         |  18 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 374 ++++++++++++++++++
 4 files changed, 445 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: c5eb0a61238dd6faf37f58c9ce61c9980aaffd7a
-- 
2.33.0

