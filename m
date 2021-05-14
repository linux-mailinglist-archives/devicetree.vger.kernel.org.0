Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D8B5380EB8
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 19:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234792AbhENRVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 13:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235047AbhENRVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 13:21:08 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D561C061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:19:56 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id u25-20020a0568302319b02902ac3d54c25eso27099944ote.1
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xbWNyumSaakRF5+I6Q4pxoTvTeel3gGdC/C0gEVAsbs=;
        b=Dwh3atl/PTSoQ9H/H6a4cNIEThJZNPerQ/tXcinbE0bdgxFqsgtR4mDIVyHWQfpqkY
         xyYiaAxBFmQpDsRfiAgy5/Gojr+l9GFDoLHGrVtts6zQPc361s8FuuW8vRtSPq/d5Gbb
         wXFleeaW6uF49icg9V0zwivLUghj1VBU08G+iXJ2w2sG1/XOWtnEnlAk0pLlR3hljbA1
         lX84pynsasB32TLHxeOQSJ/eBG1DT0ZchbXlMpuoi5GzN4EvN+Z8Hu5FPprMArWzWvS7
         01Q0FVdxIcXacYkRo+0THJxQfkPjHJT6bw4Yl01DQMI0ed6BtkkJYcBitt+XRtd9xQWU
         rw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xbWNyumSaakRF5+I6Q4pxoTvTeel3gGdC/C0gEVAsbs=;
        b=iIlOjJ0BrqmA4I84+8jKQDG8zgacy3KLb1adY0tGpeFR7J7RdO1ssYNiPCUES8n9Ul
         h1AUPjxy5TfUNAp01vx4m4ZMCt40wG9++9NLv72oeXGHMOjmbNgI74I8jo4OnJQxVAuY
         BTyPGqbLfg19QKA0Z9PqAKswzmotR0zkB1H4ecMJ54/eTCmwCBcekLoRldFGnqUkHXTS
         V97eEQt5w1zZg71yeYWMhr7ebre8ox83GUXcOfVtYQ88VmslKQenbqZXEMFGZJAu7A9F
         bAM8GJpJ62w/RQj9mHm9l5OKMrdiy2cC11/DQd1j+UJzqLMhKHx45rOs+e/+2RRM4S0P
         dFeA==
X-Gm-Message-State: AOAM530BZxkj3AW/FdinHKTSFCCdcRNJUkgRJ9kmjK2xKqCuwTbt8TYE
        rk7jeTefWFwgMxbcf168HLU=
X-Google-Smtp-Source: ABdhPJz8lMS4CDvotbsdOQuc1xfRx11VPyOBYz3m8DpVxMvPMreE9czwFp9QfdXU1nZqX/SyzbqqNQ==
X-Received: by 2002:a9d:5a10:: with SMTP id v16mr40663546oth.187.1621012795795;
        Fri, 14 May 2021 10:19:55 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 10:19:55 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v10 0/4] ASoC: codecs: add rk817 support
Date:   Fri, 14 May 2021 12:19:36 -0500
Message-Id: <20210514171940.20831-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 audio codec which
is present in all Rockchip rk817 MFD chips.

Changes in v10:
 - Correct order of test/ack/signed-off to chronological order.
 - Removed ifdef from mfd driver keep cell from being added when the
   codec was not to be built.
 - Changed codec DT parsing messages from error to debug to prevent
   errors in dmesg log in the rare but valid case a user has the rk817
   PMIC but does not use the codec.
Changes in v9:
 - Add cover letter.
 - Remove documentation for interrupt parent per Rob Herring's request.
 - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
   robot.
Changes in v8:
 - Added additional documentation for missing properties of
   #sound-dai-cells, interrupt-parent, and wakeup-source for mfd
   documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to
   "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in separate
   series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

Chris Morgan (4):
  mfd: Add Rockchip rk817 audio CODEC support
  ASoC: Add Rockchip rk817 audio CODEC support
  dt-bindings: Add Rockchip rk817 audio CODEC support
  arm64: dts: rockchip: add rk817 codec to Odroid Go

 .../devicetree/bindings/mfd/rk808.txt         | 186 ++++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  36 +-
 drivers/mfd/rk808.c                           |  83 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 558 ++++++++++++++++++
 7 files changed, 950 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1

