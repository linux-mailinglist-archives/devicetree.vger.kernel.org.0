Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93757381548
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 04:57:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233919AbhEOC7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 22:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232860AbhEOC7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 22:59:09 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5C5C06174A
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 19:57:57 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id v22so1343894oic.2
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 19:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zg/5QXj0NQOLjGOpktrlON/n7PasEsK9TVYdrnmnD9Q=;
        b=Tg0KsS2xPm6IpjBdv4c+49Dbxg4u+hq6+RuCVFvLqdPbB9ixMlNgfhV9rfec3OkBPZ
         IvTdvbhp3NHPb/aTkZ6qVfnKmnVrioOvM1eY5fJGJZ/5y7ocOCwL0wmy/hphA0DEnme+
         x+zdV+817e2/RINEYBv0hmRwrzfaQp1NLkFwLBQ6gosxm3hzWszs1DrIg0aRWHCc2/wc
         PClHridG4s67HGHPKUMO+8KMSKmtaq8zyDCHOTpGsf0yCVOR2QTg8/rkixJRcApJICEt
         TIRwB0S/yqYMTCipsL5yzXKzvTsOzCpODeYwblLFJFRS63R51qslMgwhtpGGdESrfuIp
         9YiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zg/5QXj0NQOLjGOpktrlON/n7PasEsK9TVYdrnmnD9Q=;
        b=Pu/xnOapDA7/QMO3dYZVxfNIOe+lr5n3Ka1bQWpWPnSd3G7zCndkVzqoOAmnUj2Wwy
         aPPqabeNYP7/GhEjF6WGU5nwVTZ+TbYiumEjrcze3b+dXIEYaK2crgOa9CjvC7BNgT+O
         LjLA1Rgzf77oD7wzrk80A31PDLwPQS4oPAxMq6iZvAmt+k2KkYX0wPkFalc4WOFM1PSo
         5pzCS0hQyQD4IZ4y30eGENnUEz//4rRi8HfvoSV50JGQhVyWwesL0aqHUNdUwWb8onR3
         eZtk02KjQoZzQ2BJgnU4cwNAcJbHlVkLYcbZrS1hwJFVuAvMZyT0ZmkHd2YctpG34sAk
         MxsA==
X-Gm-Message-State: AOAM532vsb19G8e0aiLsxo6Jf5L+3m0YXdqb3yy9wHeLi5WF53SYGShH
        GVu6b02tlFMW+7YMndv3KkE=
X-Google-Smtp-Source: ABdhPJyx+Mj2Xnc1VVyohqVzJFvH4+AvlDMy34VVVb44+0ur5ea5Nbj7p61kmpDKkoWUZbqRkkNOFQ==
X-Received: by 2002:aca:7556:: with SMTP id q83mr36046438oic.161.1621047476637;
        Fri, 14 May 2021 19:57:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id j16sm1689444otn.55.2021.05.14.19.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 19:57:56 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v11 0/4] ASoC: codecs: add rk817 support
Date:   Fri, 14 May 2021 21:57:45 -0500
Message-Id: <20210515025749.11291-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 audio codec which
is present in all Rockchip rk817 MFD chips.

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
 drivers/mfd/rk808.c                           |  83 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 539 ++++++++++++++++++
 7 files changed, 933 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1

