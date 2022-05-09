Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9356251F2FA
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 05:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232278AbiEIDlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 23:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233593AbiEIDcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 23:32:50 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 563B689335
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 20:28:58 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id h11so8480874ila.5
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 20:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AuxSzBelxHq8d0UNsOmfShJlviRHkdA9CleYqkx3TbA=;
        b=WXSJrZmZdI4eGxvJtEvSuchP80ja1RBntawFS6uGAGMjTcIbjTMIgIoeyw2mcN8LRi
         a4yuAnTuQQ/ausLIuhqNb9en3aqYZXS9sGnOsGTcQ0WuLTsMdeg8wmpKuIXpkMObiVNM
         anCwEaPPBSVo51CWWTyAFXw7T79jgu4naJWxMJcnoZ4Svxn1qy3qpefl/YHZdmSWNGqx
         aTjOKVrCdBCXwKlLjFDPQHGczed8X0czKtLvvJcEGRPpJ+J4bF/JZ/zxGm5H6YpUY78T
         H0Ab5vf8vL2Q0woEf4QT7iY6XyY1g1+LB1dUAGN18tS+W6xZaQi4r20Mx3LKSPbJF5jq
         EyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AuxSzBelxHq8d0UNsOmfShJlviRHkdA9CleYqkx3TbA=;
        b=HBNPIKUxOqI1ZpY5d+2goPYItTK5gk5s4ZbcfC/2zXQKXcfPA3Bab+UE6GSsx3K13S
         l891RSpxXImwUJbmFaVjvgSjTK0uw9FQdKJtqH9XWU2enU86tBmCdVBtX3xf1LeHTxD+
         X+GS71B+3fAXB/xDsEgbTPkxUZVkm2zW8ByPeNU/rs9fOlf154GE6MBRf7n9TFCKw33t
         vG5Wl6ht7WGGm0lHlGvCMcLsQ7k4Uvss6UkQE3oltYy3RbYDS8ftJXTI0J+0E4Z0yH8X
         A4A8IracyJ4ZTso+ryUIudc5ap3zKzRbjLnmPGOV6TcjCbC/+Wr/vV8UwaacTS/Uqu0P
         N1bw==
X-Gm-Message-State: AOAM533q1raxPpt0rG1ekYPNSns08QhRPIXlyOmDchJ0kcbssIl1o0MD
        /xcUPKrY6weae8tOVbzddcI=
X-Google-Smtp-Source: ABdhPJyUyq2E2fXDnkUxVWp/j5jWIpuNtqvaMzm+mpXZLAvSnsksROoGwjE4/FO3VhjjbHEuUk4CIw==
X-Received: by 2002:a05:6e02:1aad:b0:2cf:48d4:52df with SMTP id l13-20020a056e021aad00b002cf48d452dfmr5831793ilv.187.1652066924195;
        Sun, 08 May 2022 20:28:44 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id a16-20020a92ce50000000b002cde6e352bcsm2869157ilr.6.2022.05.08.20.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 May 2022 20:28:43 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v6 0/2] Add generic serial MIDI driver using serial bus API
Date:   Sun,  8 May 2022 22:28:34 -0500
Message-Id: <20220509032836.1116866-1-kaehndan@gmail.com>
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

 .../bindings/sound/serial-midi.yaml           |  50 +++
 sound/drivers/Kconfig                         |  18 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 374 ++++++++++++++++++
 4 files changed, 444 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: c5eb0a61238dd6faf37f58c9ce61c9980aaffd7a
-- 
2.33.0

