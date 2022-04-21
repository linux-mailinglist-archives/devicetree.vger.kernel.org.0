Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D216450A708
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 19:25:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1390753AbiDUR2L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 13:28:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390749AbiDUR2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 13:28:10 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4F93A1B9
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:20 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id z19so1443106iof.12
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dFaEdZoe1wdoUVW+z6nHPkpQBV+8JNugJSZ2D48minQ=;
        b=k6HeTms2a6kfXWvb+JzALpYu/HfeggC22EQ+3zvuytvCzz5P0F/LcZhQllEn222g2x
         yX9e3ZoUNknBBvvuRyELRzJRLE62tIBfvfYTtdxz4boT5hPP7V+ikr4HPd+zTboD3RX7
         bjVWzLFu/rJqHjIVugvdfwHSDA3IoXpW3ySi7r4v27evbSQ0NzFJdAvJ2x6NBbqnCzev
         9CNFpds1NAtpr4/1y9nZiUiqNPbIfo4VFrO8cGZfSHd1DuLOQbj5GYiEiYIteGP5VTOy
         m7PZZttg9aNwvft/Y1QzILu9D0XVHwpw+X7alVSGZQTx8/ifSv/N2/GJbMvHnfGHMahJ
         M5vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dFaEdZoe1wdoUVW+z6nHPkpQBV+8JNugJSZ2D48minQ=;
        b=hhcGo/bnACZxihQQtEHO3DukmXvdHejzMp+uT2H6vLBZfDjO+4/ZKl5VJGkO2SaOxB
         wHuCUd+MhMiNe2KNDkm3/jp4EmUekQMgR9cq/qWnNsiOD+9r7bnSGawHaXeS799wA5Rh
         xEbAunzmGRmtAkOZwNakZNklL5nbSP0SabvzBSBwqbw/1OBQ1ndb63Waxq1srTsR2wCa
         rc4o3KAszipNBfkzUur2h3upEprQu+ZeVbo/xoICuaileWKaz1ZtXe5pj0qgO1OKbOUM
         AkZooxP3nG2Lm3GN7wN1P4ROAUXx8nErRYmG28AWTaso7RJTGwvPdDVpDXnNnAlYKcER
         pAQQ==
X-Gm-Message-State: AOAM533XargS2hDIfUc+5hHlar7lmFGTjuyUiUU+zIprfKGWH9U3zYI3
        QVgXxWVVGGFZQYgwZCMirJwg+uAf2Napd9uSrZw=
X-Google-Smtp-Source: ABdhPJzTvKmjDxo0qnZeP/smB4eUcjRy+dNtisZlZPmuj5nN11Sb3YC2st1G8S+A3tk56m1QX5DRqA==
X-Received: by 2002:a05:6638:ec3:b0:328:7d44:1df4 with SMTP id q3-20020a0566380ec300b003287d441df4mr354353jas.173.1650561920006;
        Thu, 21 Apr 2022 10:25:20 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id o16-20020a92c690000000b002cbf7f76878sm10806260ilg.6.2022.04.21.10.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 10:25:19 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>,
        kernel test robot <lkp@intel.com>
Subject: [PATCH v2 0/2] Add generic serial MIDI driver using serial bus API
Date:   Thu, 21 Apr 2022 12:24:25 -0500
Message-Id: <20220421172427.703231-1-kaehndan@gmail.com>
X-Mailer: git-send-email 2.35.1
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

Changes in v2:
- Fix 'snd_serial_generic_write_wakeup' missing static keyword as 
  reported by the kernel test robot
- Correct 3.125 kBaud -> 31.25 kBaud and 3.84 kBaud -> 38.4 kBaud
  in documentation for MIDI
Reported-by: kernel test robot <lkp@intel.com>

Background as included in the initial cover letter:


Generic serial MIDI driver adding support for using serial devices
compatible with the serial bus as raw MIDI devices, allowing using
additional serial devices not compatible with the existing
serial-u16550 driver. Supports only setting standard serial baudrates on
the underlying serial device; however, the underlying serial device can
be configured so that a requested 38.4 kBaud is actually the standard MIDI
31.25 kBaud. Supports DeviceTree configuration.

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
 sound/drivers/Kconfig                         |  17 +
 sound/drivers/Makefile                        |   2 +
 sound/drivers/serial-generic.c                | 344 ++++++++++++++++++
 4 files changed, 404 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
 create mode 100644 sound/drivers/serial-generic.c


base-commit: b253435746d9a4a701b5f09211b9c14d3370d0da
-- 
2.35.1

