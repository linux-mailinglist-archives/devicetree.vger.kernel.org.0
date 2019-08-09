Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B40CA87B3E
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 15:34:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406765AbfHINeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 09:34:22 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:32985 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726091AbfHINeW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 09:34:22 -0400
Received: by mail-wr1-f67.google.com with SMTP id n9so98385771wru.0
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 06:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qSHE3Aj4iM6gYhcmQoszjlvxEipz13Xj0eMmdWnUjX4=;
        b=Yu0o583lxOO+XUf2AITZ1N5l0tYfk1WvYSXvAR3SFKvigp3L3PzzRmfYRfdQZqsQ9O
         E5CvPLOQGwPhPHlGVGzSVJI15zrAVCAwNG/a7tQWfE0fAGNI02zATJQcNs3mOL1b5Cmt
         E98z36FIDVVoKrvjZhf9t1RdI52O8xp5Peapj6eKbtkSHjHJrldSLtp6P3SsPrA7JiPo
         YQQO9HnnzIx3S8E4AGcLFLCh/MYqAPXNPI6oIY/4ksmEjR+Tlun7oLoQMu8yFyISoqWp
         GI1IVYQuLfTM6ivInkNP8FJFhXQnD7I/ddTsPCXvTdAL1tLjzebQ5YMMhHqR1mNGAqRB
         02wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qSHE3Aj4iM6gYhcmQoszjlvxEipz13Xj0eMmdWnUjX4=;
        b=XMGRp6ga/+tKLbC9jrhF4OOs29Vq04i0Z7/2y/jbFCzCQwg7b/ghqGcrJIqS6n3qOi
         Hk6d771OwW2+jGrGaOzpCdxrZviJPS+L4djCcqC3p2hCnRlygZRSKoiPL27v4HCfh1DM
         5kaoxzJRXnCtJiX2pqW2/uOV4KA+ciXeAaGJqm0RqbyfuWlKZrYnA+c30+39wEzWWqYN
         eF5ZiKiq5Fdj8G+0aDBhtKi43IMh6NRGAf7oX0DmWtjR9cmGE60waaaP/CJezGCfnGu5
         B+mgdYZbCZFkrZpN+FZPF7Mc8eOsezkxHGWaheQCQ2ilIQfCvMu/3h/0KhQu3hn9uhHv
         AiGg==
X-Gm-Message-State: APjAAAXJ03JiPfJYxKqRSvgMw9KdTN8cHrT8591bFlY1oM67+pmDV9VQ
        HbCUPbUFRetM2hd+Bwxsa4Slpw==
X-Google-Smtp-Source: APXvYqwNQlOjhdPJDabvXd+VV6Zz3w7TyVWQM5OdLcX6FI7/n+FZYKjSAvVJLzJ9hcSUKvagWbXgrQ==
X-Received: by 2002:a5d:52c5:: with SMTP id r5mr23636282wrv.146.1565357660850;
        Fri, 09 Aug 2019 06:34:20 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id y18sm5674641wmi.23.2019.08.09.06.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2019 06:34:19 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 0/4] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Fri,  9 Aug 2019 14:34:03 +0100
Message-Id: <20190809133407.25918-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for reviewing v2 patchset, here is v3 with addressing the comments in v2.

This patchset adds support to WSA8810/WSA8815 Class-D Smart Speaker
Amplifier which is SoundWire interfaced.
This also adds support to some missing bits in SoundWire bus layer like
Device Tree support.

This patchset along with DB845c machine driver and WCD934x codec driver
has been tested on SDM845 SoC based DragonBoard DB845c with two
WSA8810 speakers.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
	Add thermal sensor support in WSA881x.

Thanks,
srini

Changes since v2:
- Updated compatible string to include LinkID.
- udpdated wsa driver to not register/unregister component in SoundWire
 status callbacks.
- Updated few minor coding style review comments.

Changes since v1 RFC:
- bindings document renamed to slave.txt
- fix error code from dt slave parsing

Srinivas Kandagatla (4):
  dt-bindings: soundwire: add slave bindings
  soundwire: core: add device tree support for slave devices
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.txt           |   24 +
 .../devicetree/bindings/soundwire/slave.txt   |   51 +
 drivers/soundwire/bus.c                       |    2 +
 drivers/soundwire/bus.h                       |    1 +
 drivers/soundwire/slave.c                     |   44 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1134 +++++++++++++++++
 8 files changed, 1268 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
 create mode 100644 Documentation/devicetree/bindings/soundwire/slave.txt
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

