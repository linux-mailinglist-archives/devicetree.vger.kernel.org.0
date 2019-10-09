Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0D2D0A39
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 10:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730156AbfJIIv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 04:51:59 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36875 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730041AbfJIIv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 04:51:59 -0400
Received: by mail-wr1-f66.google.com with SMTP id p14so1777831wro.4
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 01:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIXSgqPot/VtHtCYhdqESFswgKhZA/r+U2HQFD+JPgo=;
        b=YgLRRZYuoAZwYcthuxRPzBi/noASE7Z6NQeQ7wPn8AHqgTR+fv5F10cz4dKU2NoQPm
         7Fj65EDd4DgPh134OONDT8GVKQl2hxntl7NXFSprLnO+p6TmNePG8ONMtpWWdPBm4jSY
         Z7xE9r9SEYM74vEdRM8527c1BFS9G6Hc2kMIQi5aAPG2Cxl0kmB+Ke9ECuR4RgHA91F8
         BBoerfCgxKA9SqihRnDE7WNg0PvVDkyDeUjNoeHZr3NPr02DEjl608ylnIrs37R4em8M
         8KJYPecHqgo1x3qJSXalEBlzMeJ0GER0xRuqKpV+PYhEJ8PBs7zD7EruPCcTkz7girvK
         UUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIXSgqPot/VtHtCYhdqESFswgKhZA/r+U2HQFD+JPgo=;
        b=bf6hLS8K2dZ4eUpMagHKDooDOIVbfYa32bUF8AAVb/L/P4vZkC4pBCfJAJZCtpkJFP
         fV9qq9c2r1kz4x482xK2uOVtfybD6cTelCyWFjxl8bya/FyK6Feh12zCYar68SarkXda
         MaoB4aToL9a+BylNZS+NNHtMkjkNCwztwTkyXojFbact4uvqI4Q3wmhhmHJ5DGieHFRa
         mcWtX9k5vq9Zz3gtTyn8M0eMD4UqcYFn+5AnApQCuejcYjgcMVR43ATbGowTE4P0pRPe
         sWHJa4X1l9iLKRLgAALD/V0N49P+K94k8HY6rVTcOUCGG6LF3isjzmp7YGp62BcqSECP
         1R1A==
X-Gm-Message-State: APjAAAWIB4/mwelgNF39J3JUOSjK8pfMqwk7t99r4mTnzYwR6l7+lxRq
        HFqcPE6F9uHZPIBdmP5BCYUG1pT43JQ=
X-Google-Smtp-Source: APXvYqws1ottQYgV2u6n6BCavAvLpJrmB3BJnOxpCU3FGnq8IrsHlRBrn75l3yq5qrftbTvHq7ZAOQ==
X-Received: by 2002:a5d:52c6:: with SMTP id r6mr2052521wrv.141.1570611117411;
        Wed, 09 Oct 2019 01:51:57 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id b144sm2476291wmb.3.2019.10.09.01.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 01:51:56 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     spapothi@codeaurora.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, vkoul@kernel.org,
        pierre-louis.bossart@linux.intel.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 0/2] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Wed,  9 Oct 2019 09:51:06 +0100
Message-Id: <20191009085108.4950-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to WSA8810/WSA8815 Class-D Smart Speaker
Amplifier which is SoundWire interfaced.

This patchset along with DB845c machine driver and WCD934x codec driver
has been tested on SDM845 SoC based DragonBoard DB845c with two
WSA8810 and Lenovo YOGA C630 Laptop based on SDM850 with WSA8815
speaker amplifiers.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
        Add thermal sensor support in WSA881x.

Thanks,
srini

Changes since v6:
	- Added reviewed-by tag from Pierre and Rob
	- Removed udelay argument as suggested by Pierre.
	- Added device id for WSA8815
	- rebased on sound-next

Srinivas Kandagatla (2):
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.yaml          |   62 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1113 +++++++++++++++++
 4 files changed, 1187 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

