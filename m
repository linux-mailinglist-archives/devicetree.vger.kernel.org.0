Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7B7517229
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 17:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385656AbiEBPHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 11:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385654AbiEBPHq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 11:07:46 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 203E810FFC
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 08:04:17 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id r17so8057831iln.9
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 08:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DRcfeOPp8YPUhkivVL67L3rsGG8Qlwpxxwx2I3ORs4s=;
        b=YUkiI9/YHujZOvLgkORYBnIieJ9ftfzbSyXCxJVs3LnOU0DFLlg4e0CjhPY6EoO6Tb
         HFiauyu3xqL2y4uWYT7dDSu7mbDcIRYtrtKJygaTHXURNlnObPBvt50lqM+VnLbDYzMi
         jrpcqaHwhy/IszKcrzITML2knpjrBIqwqPOChr9E7pC8Koii7HCGac9rALLx3hlDyKcI
         6g4i1xB8W17D5Q/KZ1lzvf40GheD+CZFjti6ffSTZIh3kTc+NL/9280XN3PpROdeZ3Ue
         80L+G2FizOjBR0PqErH9Owc+qmXTTXr4kfrNsttgE04sfNST7P7OlkYPDypJGI/XYVBy
         /Wfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DRcfeOPp8YPUhkivVL67L3rsGG8Qlwpxxwx2I3ORs4s=;
        b=U6otokoRdfpmlhQNkHscsCSTgvw+dphHbMcl/Tfo9m0notCFqkMzc+Vw5iAiL7+3fy
         MNk/l1h3vSdb1Udn8r96r2oOeybHB7I9jcy11q23Z47n7HsuoFBMTIW+lWtuWfffThsh
         DJ3hwNaz80ACp4URrba+ij8h20GE26gUDN1j2g+fmMFRCb7R2C6EYZ7KNDaZfHrJLLQs
         yTT69qVKFdG+3YrbvJiYd5/4P2z/o2GleZcjX03oUcueV06TwyBWqgpuh1YTMoYwev4k
         SdhOGBZ7dmRg8i8Yf5OeSylHTIeDsDZ+r+mgPoivuX9cBhzXg581F4W3rUm1XkqytPdL
         6cpA==
X-Gm-Message-State: AOAM530vTkXHcK5nZ58P9s0ZBy2CHiZ3UFxjtO1Dt8ktk41ymR4tqmDl
        YhSjve/dTe9i7PpjzOpNObY=
X-Google-Smtp-Source: ABdhPJzfiNToI21FVYln99c0cWAnyLlhjZFUA0gNs3Yr00ClpWyklpqJvRqtT51jbHe3dhJTn4TkWw==
X-Received: by 2002:a05:6e02:184f:b0:2cf:2026:a80d with SMTP id b15-20020a056e02184f00b002cf2026a80dmr1145473ilv.261.1651503856418;
        Mon, 02 May 2022 08:04:16 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id s12-20020a92c5cc000000b002cde6e352basm2718218ilt.4.2022.05.02.08.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 08:04:16 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v5 0/2] Add generic serial MIDI driver using serial bus API
Date:   Mon,  2 May 2022 10:04:02 -0500
Message-Id: <20220502150404.20295-1-kaehndan@gmail.com>
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

Changes in v5:
- Reword and add to description in dt-binding
- Change 'speed' dt property to 'current-speed'
- Move MIDI output loop onto workqueue (since this could loop quite a while,
    if ALSA provides a continuous stream of bytes)
- Add tx_state bit flags to snd_serial_generic struct
- Safegard critical section in tx_work with atomic bit ops on tx_state
- Switch operations on `filemode` to use atomic bit ops

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

 .../devicetree/bindings/sound/serialmidi.yaml |  46 +++
 sound/drivers/Kconfig                         |  18 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 377 ++++++++++++++++++
 4 files changed, 443 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: 3e71713c9e75c34fc03f55ea86b381856ca952ee
-- 
2.33.0

