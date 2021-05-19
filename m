Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2519038980C
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 22:38:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbhESUjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 16:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbhESUjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 16:39:24 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 591BAC06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:38:03 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so12935144otg.2
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zoJsK2/3QCBxYlpIkU9Vv7NwsJFupqw/wU/nB19xMXc=;
        b=vY8qkzr4c+lc8o4NVC8uztEgqhKsGcWE5hJ5LRL8y/GbdTOcwdx86hkt7waVPHlk3W
         XHypI1bKlLJWRz9cR42KQ0GQ1LXZ2AgdjLpy3jix2OLjACcAaTXBr5bmfABnarq84QZX
         MdI+Yq35QOGpCdx7FKYnpwuxL5+AbIr3g0Kg2N9wEZkp5cgJmydRiWGJxXW2b3fADLAd
         J21vHUrdgEA0rloEsnMrqPztnASsr6afqHEia6EZjHwDZdoWN9wPz2WixrFZZe4K3D4i
         Vx0ReVImMZEf4h1QOLU0cBxmrUctXqvZWOl15/yNp8W9IpKJVyDSvO1FnQtoCKDRYH9v
         LPTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zoJsK2/3QCBxYlpIkU9Vv7NwsJFupqw/wU/nB19xMXc=;
        b=m27DzZpgi/LY2fcT1QIohkQgOTfe6A9nLEQHH8iyjbIF+6Byjkw79FvwfeVjgYzm87
         o39bX6xa28xmXxuLMDVF1ujwwFsjy/MLGO02u4aufk7TBwQSL1k1grtw9Ltk079iwraE
         BLf3rn4lFk2HE4mbmwnGkHwK5VRh048UBOBIMWUgiXtrfcS69I3Rx5aFRgk+TuSUVLhu
         p6NpBcY67Y6SU4BAnbd8uyW5f333E38lOZ0aeyL99Xnja88/bVgSGBbhSERcybPCaJU5
         hj4PVo0lzeI7Dt9IkQHG6wvIKLBZN5AfgVel95Hc0v7c/BoxUrpGr1ayd8MICsGVVQl2
         VxJw==
X-Gm-Message-State: AOAM532YZfX9TQdfEksXPyq97b8a8ldng0a4kHbxyYt6K4wbHFnbR2iV
        9bjIr+z8sfcAAu9kw+c6HWI=
X-Google-Smtp-Source: ABdhPJySgaibEkkhNuEo+cdWp/uOpKYJKp5GKX3bingGqeu3+KD77l3RbQHH3sA3PdeITiNBdGdWKA==
X-Received: by 2002:a9d:6255:: with SMTP id i21mr1120079otk.284.1621456682631;
        Wed, 19 May 2021 13:38:02 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id w6sm189223otj.5.2021.05.19.13.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 13:38:02 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v12 0/4] ASoC: codecs: add rk817 support
Date:   Wed, 19 May 2021 15:37:50 -0500
Message-Id: <20210519203754.27184-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 audio codec which
is present in all Rockchip rk817 MFD chips.

Changes in v12:
 - Updated codec cell in MFD driver to a single line.
Changes in v11:
 - Stopped checking for presence of parent node in codec driver, as
   driver should never be called if parent device doesn't exist to call
   it.
 - Made codec subnode optional and stopped returning errors if it is
   missing.
 - Downgraded missing codec clock message from dev_err to dev_dbg.
   Users who choose to use the rk817 PMIC but do not choose to use the
   codec will not get an error message unless they have debugging
   enabled, whereas users who wish to use the codec but don't have the
   clock defined will not get an error message unless they have
   debug messages enabled. This seems like a fair compromise between
   mututally exclusive users. Note that errors with the clock or codec
   will still result in a dev_err.
 - Updated DT documentation to note that codec subnode is optional if
   no properties are to exist beneath it.
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

 .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  36 +-
 drivers/mfd/rk808.c                           |  81 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 539 ++++++++++++++++++
 7 files changed, 931 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1

