Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 769AF373D08
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233505AbhEEOKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:10:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232569AbhEEOKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:10:03 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42421C061574
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 07:09:06 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id g15-20020a9d128f0000b02902a7d7a7bb6eso1770721otg.9
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=poYtoBQ28iFBlsMtYMW7HQWFnHpillGEdoSkendtk9o=;
        b=Tca7V89Ry/y/4wYnVFBSFUuf0/C1C9YCRcy8/g9VqYowQPyblDEf2+7yjM99NPKpBG
         4sgSXJkzjhtwVPmJ2uALZPUe463jfYCzB82UfRlFF4zlyg6/UO3VqC/KjhywW/WxIvaN
         nh21aas9W89mAFinvip0VZCFPuKkDH1LtePmegCCsJsuzMoo3bwAdtXIbV2xBm3+MpfQ
         TpiFVpgI33CkW4ofJ6lh4tcsp+0MzHNz0VX7suZ+qyozSeXX/HJqDIKP+UM8W3kH2q8w
         gAji0XqgMULGHkUNruVwModfKfiJZevNvLZI0xaQPwA8I7FaYdEuJiJlih3gnQLldKOM
         cdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=poYtoBQ28iFBlsMtYMW7HQWFnHpillGEdoSkendtk9o=;
        b=fFS+2yecddJMwJu+xxWRxWhxkL9BpT8K0BE6D3DtE+IqPBhUmNE5NWFK+FM1R4eV1x
         kyAfTaqMdt7Pr0/y2g/b22YWKy1GQtu5CtWb0uN2rq79JZilz/xV93adPPN7j83Le+GI
         1aGBaKv6a/s2/hW+NAmu7vnKcHN2pQzXEQPNrPoVP/mqFL9gSGRnQEo6blVZck/Ewo1w
         WQVVFHx41eZIuOEp9hX+j+ArN+J62zttzVh3yXixcfjWHCzAoqRKUHhEbgrzYkACciIN
         LYqiWXqUeVUHBy8G2P/tJPw3yRyvhg05LG88Ns767qqPyeP5hAfnNscJFJmXeRC1DTsO
         Z+8Q==
X-Gm-Message-State: AOAM532qTDbZCkTjU97UVBPeyq5mPFGkzC8a3SuU0g85KixVUzSuE0Pk
        GTVSR+nUIkILWEx5yrJxnkA=
X-Google-Smtp-Source: ABdhPJxMy8wTe1oizpsT9wETaixL/t9MkgcgAxAs7a6hSm9qjcaGmQkTCGlBpmkbJm5WfAsVNnBb3Q==
X-Received: by 2002:a9d:6c95:: with SMTP id c21mr23128676otr.85.1620223745680;
        Wed, 05 May 2021 07:09:05 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id k20sm621707otb.15.2021.05.05.07.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:09:05 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 0/4] ASoC: codecs: add rk817 support
Date:   Wed,  5 May 2021 09:08:50 -0500
Message-Id: <20210505140854.15929-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 audio codec which
is present in all Rockchip rk817 MFD chips.

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
 drivers/mfd/rk808.c                           |  85 +++
 include/linux/mfd/rk808.h                     |  81 +++
 sound/soc/codecs/Kconfig                      |   6 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rk817_codec.c                | 558 ++++++++++++++++++
 7 files changed, 952 insertions(+), 2 deletions(-)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
2.25.1

