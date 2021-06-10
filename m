Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD7F93A365B
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 23:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbhFJVrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 17:47:14 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:37859 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231181AbhFJVrN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Jun 2021 17:47:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623361516;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=guTfU4e8GDRqzy/1ajS1PObKT8FQPjuFX79A5J7ymwU=;
        b=SVPloZhhoVWM1wI2bapJAwSk1hySUAskZKEwTT3/0EwyTgqAJnyDoXONUDJOc2CkUS5mkS
        SahoXy1Iyb4+BYAX6k/3hRdcLrNLsF5wQ/0ydUEB0JAdDlJ0u5f9GLIANcTdLFHiNFDs9B
        qwLlfvveK/zrYtwNRUe7r+SfjINa2L0=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-3BnH4kBaNb6iWxQMAcvAzw-1; Thu, 10 Jun 2021 17:45:09 -0400
X-MC-Unique: 3BnH4kBaNb6iWxQMAcvAzw-1
Received: by mail-oi1-f198.google.com with SMTP id j20-20020aca17140000b02901f3ef48ce7dso1893764oii.12
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 14:45:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=guTfU4e8GDRqzy/1ajS1PObKT8FQPjuFX79A5J7ymwU=;
        b=KjhLRmHglsDrV3Ypx5Z7KZjsAY8ugCc7918FYzG7uu+9bGgcEi2KKw2hFz2vy2TD9w
         qXGTbpYwn4oFEVVdAhbvWsKHClLL3zKN3cTX5rrmTLv3NUdxZCC977dB1iCbyCzCfDh+
         uwsIrxxRx0ZA41ZkOC6LUTgaNdzqwpFs0/ZVR3UILVwXCDgEh1ijZshXzwBK1Tgi+sHr
         2k8fcBEPm8w/0wmY//M4SLlR5K42GpE4wqx5i9pJaXAdtDph8TetUUUAq5p5+amhV6Cc
         f3i9CODfJ5QKACn5NZpNk3iIabxJ2D4vKZQZIMTt1L5Ak1HC/zXqfIqRM3zTZ7+YZiyX
         mcvw==
X-Gm-Message-State: AOAM5306GiJ4hYYoWoAlAT0YHB8QJV3AJstH3OLUl9OnoilPIj7OyCQO
        pdtzR0hF4/TZWFHgi5JPbboeh0KNnzjHLZJZhU7SukbPp77pLZ3SubEbEO4MVGDJvqNsTyTjjM1
        NcXw4Xvjd+B9y3A1lcxYsAQ==
X-Received: by 2002:a9d:17d0:: with SMTP id j74mr386232otj.92.1623361509094;
        Thu, 10 Jun 2021 14:45:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjBwKjRTZldk72q+UJkwklQ0sAnXANOb5b/9su/9MNUdqJcH0ISmXgySFJudebSgHFMzWVdQ==
X-Received: by 2002:a9d:17d0:: with SMTP id j74mr386187otj.92.1623361508840;
        Thu, 10 Jun 2021 14:45:08 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i15sm881839ots.39.2021.06.10.14.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 14:45:08 -0700 (PDT)
From:   trix@redhat.com
To:     robh+dt@kernel.org, tsbogend@alpha.franken.de, jic23@kernel.org,
        lars@metafoo.de, tomas.winkler@intel.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, nbd@nbd.name,
        lorenzo.bianconi83@gmail.com, ryder.lee@mediatek.com,
        kvalo@codeaurora.org, davem@davemloft.net, kuba@kernel.org,
        matthias.bgg@gmail.com, mcoquelin.stm32@gmail.com,
        alexandre.torgue@foss.st.com, apw@canonical.com, joe@perches.com,
        dwaipayanray1@gmail.com, lukas.bulwahn@gmail.com,
        chenhuacai@kernel.org, jiaxun.yang@flygoat.com,
        zhangqing@loongson.cn, jbhayana@google.com, sean.wang@mediatek.com,
        shayne.chen@mediatek.com, Soul.Huang@mediatek.com,
        shorne@gmail.com, gsomlo@gmail.com,
        pczarnecki@internships.antmicro.com, mholenko@antmicro.com,
        davidgow@google.com
Cc:     devicetree@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com, Tom Rix <trix@redhat.com>
Subject: [PATCH 0/7] check Makefile and Kconfigs for SPDX tag
Date:   Thu, 10 Jun 2021 14:44:30 -0700
Message-Id: <20210610214438.3161140-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tom Rix <trix@redhat.com>

A followup to
https://lore.kernel.org/linux-fpga/YMD2yxtsQN16MoPA@kroah.com/
So I do not repeat this problem,  add a SPDX checker for Makefiles and
Kconfigs to checkpatch.

Then treewide fix the malformed Makefiles and Kconfigs.
Those missing tags are numerous.
Kconfig has 46
Makefile has 141

Run checkpatch generally over the dirs with Makefile or Kconfig problems
to check nothing broke in checkpatch.  Fix the few problems turned up


Tom Rix (7):
  checkpatch: check Makefiles and Kconfigs for SPDX tag
  mei: hdcp: SPDX tag should be the first line
  drivers/soc/litex: fix spelling of SPDX tag
  MIPS: Loongson64: fix spelling of SPDX tag
  iio/scmi: fix spelling of SPDX tag
  mt76: add a space between comment char and SPDX tag
  mt76: use SPDX header file comment style

 arch/mips/boot/dts/loongson/Makefile                 | 2 +-
 drivers/iio/common/scmi_sensors/Makefile             | 2 +-
 drivers/misc/mei/hdcp/Kconfig                        | 1 -
 drivers/net/wireless/mediatek/mt76/mt7615/Makefile   | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7615/sdio.h     | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7915/Makefile   | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7915/testmode.h | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7921/Makefile   | 2 +-
 drivers/soc/litex/Kconfig                            | 2 +-
 drivers/soc/litex/Makefile                           | 2 +-
 scripts/checkpatch.pl                                | 2 +-
 11 files changed, 10 insertions(+), 11 deletions(-)

-- 
2.26.3

