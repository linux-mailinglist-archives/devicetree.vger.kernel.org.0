Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C4B1C8649D
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732866AbfHHOp0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:45:26 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:46856 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732518AbfHHOp0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:45:26 -0400
Received: by mail-wr1-f68.google.com with SMTP id z1so95212875wru.13
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 07:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nLpi2SDrc2znQNHPwAZliuGZd7W6XSprQ25LlaiC9Uk=;
        b=xS/2nlZprXdtEBLiGBUpjV5rlh11ZEu2Nuwixb9ksnlj+Rw441FmPXat9qBfqLoE/h
         3jdXGYqvLxETaqpHmQnFFGWwdC5q4a8vnu4SYuswuGPfqQL/cftMQPO5VzF4+xS0Er45
         aAeKkZvLT+LCd4L6N2MjfnRQdr0Axt/YapOfLE5vmgKeTtDGKIy/kxeIFXR/wnU5bK+P
         I2h7bQnYRnLbBVVpseEBf4//8cwaTrPnaa23hYNYNZeU3RmhO6KPp9jOGCDBcF9T6OAr
         +QBUn6g5Q3x/gmSVbtJ0OmOpD6NDd55MDcUd8c9V9cDEomKCXAWG3T30jwKKdheI7o9u
         l3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nLpi2SDrc2znQNHPwAZliuGZd7W6XSprQ25LlaiC9Uk=;
        b=d3ZAV0wYVX/FAtyF9XSpd6Il+3xEW7CNp2bWZn/hlLWxvUq9Stces35iX7g9Xa7XRh
         T7WgUmlwGhCEgGWKQFEWqpJYRxjmhcc3vp5eya8Fm9zInpaJuc5UThrIdMegVsX3YtQ0
         rm05pJ7sDZa6K8cQh7AZLqXsiU1FrHfz4ZpR4JylvwRuZggIt8SP4x3KlGqsbUVAFPiU
         fdmHKpVoWioYAMyhlV5J2PoDWxTeZ3Fwxv1uWd6/97900EqaJoZp9q0F2svwJhMRl+V4
         bqaZAuPy5TFhPVq1l4Fg8StznmuZvtPPF29TQLs0CgPqTQ8UxsTbWf873TIL3VfH5YTP
         kycg==
X-Gm-Message-State: APjAAAWoGiYv8+vyBH9xFXIx6XxFCKSYaxG8YR+pT1yU3eVx1lTQNNdM
        UACu6LHzBaDX/Pbk4WQFpSstTg==
X-Google-Smtp-Source: APXvYqxGi/2lzaPlzG3WSRB3FQSrUSGckOdWNhEK1yAlz6qCO91d2lpbJo0TQvJ26p/tCNbAwWf2sw==
X-Received: by 2002:adf:de8e:: with SMTP id w14mr17439418wrl.79.1565275524077;
        Thu, 08 Aug 2019 07:45:24 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id g15sm2009060wrp.29.2019.08.08.07.45.22
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 07:45:23 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/4] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Thu,  8 Aug 2019 15:45:00 +0100
Message-Id: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
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

This patchset also depends on the soundwire Kconfig patch
https://lkml.org/lkml/2019/7/18/834 from Pierre

Thanks,
srini

Changes since v1 RFC:
- bindings document renamed to slave.txt
- fix error code from dt slave parsing

Srinivas Kandagatla (4):
  dt-bindings: soundwire: add slave bindings
  soundwire: core: add device tree support for slave devices
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.txt           |   27 +
 .../devicetree/bindings/soundwire/slave.txt   |   46 +
 drivers/soundwire/bus.c                       |    2 +
 drivers/soundwire/bus.h                       |    1 +
 drivers/soundwire/slave.c                     |   47 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1160 +++++++++++++++++
 8 files changed, 1295 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
 create mode 100644 Documentation/devicetree/bindings/soundwire/slave.txt
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

