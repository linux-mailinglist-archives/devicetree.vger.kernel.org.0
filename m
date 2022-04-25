Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C08150E953
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 21:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244886AbiDYTTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 15:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244900AbiDYTTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 15:19:40 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 445C070933
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:16:32 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id y11so10009521ilp.4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=79En++Vr1sBSFe95ZCwf7O++Q0VkaYApBB88Isyd460=;
        b=bzG3eZUlAl0ggoOzuuLI5O1WhDZS9GQJIaFV+7UtNOc1o1feP84SPW4ERFgXkv4Ro5
         6csM937vKr0j+oqPsbd2/0mWPwHuO12L5x4s/HUAVf9J0RdWR/zuqfwaJnt0SIfMQbup
         54RpeG6bXZFjOMuMbCt5BvYJOnW72UpNFiwOW2jSMCXHMTAsMsCQ/fjitGFPqq1TNSDN
         ez2ePnzRAvQl6wpERPaN8A/0irDpz5aCrlGfqLtdXeXsf8FJeG9HLdnyvsuD2bZUcBJj
         +Ci1otaIuU9AwvgUvjO8+x0YkHXeCTugK15hVml1zqHppha012lY8mirasG4D892yQXk
         EQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=79En++Vr1sBSFe95ZCwf7O++Q0VkaYApBB88Isyd460=;
        b=junRxUceUtpOtXKbcn20FEcJO9MdaeuK2CW9dEFPEEYzjXNpVDrOyYMzb8gummJi8P
         ZYnAHFKHDNERmC4QkKzLMQeWtrG0KZHEBuZ9wIuEFqpO3OWvZo8tkKs1n/vt+vdKKVNW
         cI7JHykF3bj1MLbtXjCnURZ6SrIgM8Ed9BMSilGGU8Koo5uaKGvyGSUccWKeck/2AjvE
         ApRmeDSCXd9TG9kPyewaBWWF0CFuV4KZXbR6CuB+6faic6Jx+ad/XQIxvAHAd7BxER98
         kXhDFN8We9WMmfZix1OGaa2G2sJSZy8UYwpvWFMY9aWoH5ohfZy50tRwV2OXgIYm0KHO
         PhgA==
X-Gm-Message-State: AOAM53147aq1T47XtiwoPidxIct1nnmL6k1fzijDaCnP6QRG6Nhh4Tsb
        zRDLTnU9tzMY+MKyADZOvPI=
X-Google-Smtp-Source: ABdhPJwAjDo4Y58LSzhwSJX4OrL4YeclpJC1tFCkJC7k94r0WLOgi/9zgr5Et8wZVl0oSYsymhx36g==
X-Received: by 2002:a92:cccb:0:b0:2c2:7641:ed49 with SMTP id u11-20020a92cccb000000b002c27641ed49mr7662663ilq.271.1650914191606;
        Mon, 25 Apr 2022 12:16:31 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id m14-20020a92c52e000000b002cd804f045dsm5322842ili.1.2022.04.25.12.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 12:16:31 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v4 0/2] Add generic serial MIDI driver using serial bus API
Date:   Mon, 25 Apr 2022 14:16:01 -0500
Message-Id: <20220425191602.770932-1-kaehndan@gmail.com>
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

 .../devicetree/bindings/sound/serialmidi.yaml |  41 +++
 sound/drivers/Kconfig                         |  18 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 319 ++++++++++++++++++
 4 files changed, 380 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: d615b5416f8a1afeb82d13b238f8152c572d59c0
-- 
2.33.0

