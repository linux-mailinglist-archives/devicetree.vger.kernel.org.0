Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E81A3C91E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 12:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728026AbfFKKlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 06:41:00 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34950 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725811AbfFKKlA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 06:41:00 -0400
Received: by mail-wr1-f66.google.com with SMTP id m3so12462129wrv.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 03:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Us0ePqajLzv9F8VyyEgnx7luzsoyG4vzsDlEA+qZoA=;
        b=O6TxbJgNNzTRHvhsHcPcpFSEUN11tv3n1CNF50tCukacGTLqdUAK+DDEWaCElbVabt
         QU5pBOco5tJX+h0zDpfzd3H/8MttD0lp+YNl+n1tW3scb6cYp1Y52CS4GL173QcZvDe9
         vlXriA5EQNVgXnNONNVP5E/xr35kQmk9KzJU6KRcU8DfJcYIgitGm3jQI9fH0t2iMJSh
         oIYQAJzZJyH8UnnP/kwMuy97Jdv5Qjy94LWHpg/5MzSLC1Dsy3NpfFGuLIddsyGNONrx
         RhYU2n+dd0ezUTpaYFnf8DqqZxYnSlvR8apoS0Kj35ayKcKtbbFM6uXVsee9Yeu95JUc
         kOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Us0ePqajLzv9F8VyyEgnx7luzsoyG4vzsDlEA+qZoA=;
        b=IIQKRFk4M76xBk47iYDbw+hANbv7Dj93iimn9gs5Bo7a4GP9Ww/vEpJFSA/51ueAkG
         OReo+079D4JxsOZjrYeQ1f94nGxJLOO8XQ3hmW6hC42GczHurfRSlYYuDMiFPr02ReoR
         J4B/pMOVBbkvU5QclECOgIbh3uhgu/Y6HaNp1QZc/GjPPsho+klwP85grtcCs5x/Ak3V
         xKYaEzd/uhRu/fyuANmK+H85zcffdeAaQy3I6vaBPhyVT0TfNk8M58pwhiYH8MIJ2VWE
         rqvWGolVnIkc4h60iep3CoVilqWAV5qwVhZQ2K0tA18cLgtcfazlD7ahC8V/Ep237tvz
         2W6g==
X-Gm-Message-State: APjAAAXxpdzh8V7U2lptfITH4mQquaIaCcsHFmlI0E+Z5807ce6qDWVC
        Z2kvutA8l0SFdOlSMl+fJvCKIqbb7uuegg==
X-Google-Smtp-Source: APXvYqwKnDzyF9xodu2F8D8uakDUS7/kq2b5T0SBVt6AAGazCrBBaf6zY+sVXP/lUzeZyCqpx23H9A==
X-Received: by 2002:a5d:6207:: with SMTP id y7mr29651668wru.265.1560249658630;
        Tue, 11 Jun 2019 03:40:58 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id c65sm2359614wma.44.2019.06.11.03.40.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 03:40:58 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        bgoswami@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 0/5] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Tue, 11 Jun 2019 11:40:38 +0100
Message-Id: <20190611104043.22181-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to WSA8810/WSA8815 Class-D Smart Speaker
Amplifier which is SoundWire interfaced.
This also adds support to some missing bits in SoundWire bus layer like
Device Tree support and module_sdw_driver macro.

This patchset along with DB845c machine driver and WCD934x codec driver
has been tested on SDM845 SoC based DragonBoard DB845c with two
WSA8810 speakers.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
	Add thermal sensor support in WSA881x.

Thanks,
srini

Srinivas Kandagatla (5):
  dt-bindings: soundwire: add slave bindings
  soundwire: core: add device tree support for slave devices
  soundwire: add module_sdw_driver helper macro
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.txt           |   27 +
 .../devicetree/bindings/soundwire/bus.txt     |   48 +
 drivers/soundwire/bus.c                       |    2 +-
 drivers/soundwire/bus.h                       |    1 +
 drivers/soundwire/slave.c                     |   54 +-
 include/linux/soundwire/sdw_type.h            |   11 +
 sound/soc/codecs/Kconfig                      |    9 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1160 +++++++++++++++++
 9 files changed, 1312 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
 create mode 100644 Documentation/devicetree/bindings/soundwire/bus.txt
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

