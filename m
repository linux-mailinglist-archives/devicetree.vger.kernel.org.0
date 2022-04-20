Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81BC45090A9
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 21:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381745AbiDTTuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 15:50:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244305AbiDTTug (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 15:50:36 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79AC31CB2F
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:47:49 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id f5so1672607ilj.13
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p5AjxI0G1gBGMYopoaiK/5dXT49fJw45rF40i5u4bhg=;
        b=p/2M81gmVmpvDYAtzwatNur49/NieFajzFYaaeTfzb+9UHgFjjVcazFa5g3ORcw+gw
         K1sH2ROALzlWMzxL2HWYlj1S4KsDn3ue4TDOt2OzCw1nIJ5oag7U8KvzzPwSzAAIDn62
         J0woW4+gfMjkhtMGFFC9OLWEdF4DDlcUiTCwZnrmX6xZoTYMAZ4tIBeu+b16PyxfrhEd
         qh9dCWBVxSUTnVz57EJXup6KxPM6+dZSbwBAd18mFY0YyKAuCuMfX8cvMiUZ96vZTJZ5
         vfV8YZGNh5q622Hgxl3Iw73HOah9OEGBoQ+MoFYHOcJIh8YrQSPGm4S4CXxEEVETAXpc
         wcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p5AjxI0G1gBGMYopoaiK/5dXT49fJw45rF40i5u4bhg=;
        b=lp0l77QCyEuGtn7TUCDWaVZppwDXL7TZib+TjV78E2GadNX5duHUGy/pqTIRCEm1fF
         wIdh9YPraltu+Bak65v3zkgn6wZVTK1OIcKR8QLr9PkjeQ3VJeToqa0Goe7L8CCSEMRH
         1Krf5MCan1acuf0UpRDCpb0dnymlbtubNIDLKJfaU2hYUVI8+8FeVnOeAiM0L1m47fSY
         NxPF4untNV7dJd9XFZIc592hgpzFbckHFBxL2onm9LELph7dumSaPN4P8L8eNCKXtR4z
         QglonzcL1RgeHhc/uB1ugJ3cG6A9iyfj4DTovxZHAixizW+yzVzd9Ar01XZF4D0D0OzJ
         TJ0w==
X-Gm-Message-State: AOAM531PTG7VXj1OeflhvjoD5WzFOxBpt5e3UlF6NJOypSsVgjGL1oRT
        YMIrcjQE5r6DXGHkP4uEBPfrQRnmc3avAuuf
X-Google-Smtp-Source: ABdhPJxbq1hSXk7/0hqoHGrYkVe5aPqV/ueWxsculml7LwUebiebpAoYfgb3Zv2D4dTDln4ZxAk2MA==
X-Received: by 2002:a05:6e02:1566:b0:2cc:e08c:f347 with SMTP id k6-20020a056e02156600b002cce08cf347mr1799715ilu.47.1650484068881;
        Wed, 20 Apr 2022 12:47:48 -0700 (PDT)
Received: from fedora.. (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id t18-20020a056e02011200b002cbe6ce18e5sm10680977ilm.40.2022.04.20.12.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 12:47:48 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 0/2] Add generic serial MIDI driver using serial bus API
Date:   Wed, 20 Apr 2022 14:47:45 -0500
Message-Id: <20220420194747.490542-1-kaehndan@gmail.com>
X-Mailer: git-send-email 2.32.0
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
3.125 kBaud. Supports DeviceTree configuration.

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
configure a serial port to 3.125 kBaud using the serial bus API (please 
correct me f I'm wrong). In my use case, I am actually configuring one port
to run at 115.2 kBaud for faster communication with a custom onboard MIDI controller.

Daniel Kaehn (2):
  dt-bindings: sound: Add generic serial MIDI device
  Add generic serial MIDI driver using serial bus API

 .../devicetree/bindings/sound/serialmidi.yaml |  41 +++
 sound/drivers/Kconfig                         |  17 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 344 ++++++++++++++++++
 4 files changed, 404 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
 create mode 100644 sound/drivers/serial-generic.c

-- 
2.32.0

