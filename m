Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 75A6FA1D7D
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 16:46:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727417AbfH2OpC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 10:45:02 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:35373 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727066AbfH2OpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 10:45:01 -0400
Received: by mail-wr1-f66.google.com with SMTP id g7so3746757wrx.2
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 07:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TwXrxO/TQ61wqw3wZNmwm6oyzfj05N2I5ILhprlnG2o=;
        b=pQ+8uT/trwOhHQVSHAJ+FOY4gXJrcYM60NNyUiKDJHKoG70UXFf7a5Y6LTCua6P963
         7hmqd9Eyitxds6vACpmRI8+JyJ3RwQAv/8V+7cPge/6ElIWaTwpfacr6hbNqn/F3/j5x
         ORr7UwGKwgwhj7I8S4CxWMsREWVFC1s70O6977oF9uZ3dU2Iby8DBpoknAyUhjRB2EBG
         RONyD94Wo88k8sYc2eH5VIW+i501J97tD2VLc5aYewB2KB21RhfHDPcAr/bQg8XFU5s7
         Op1JYXW5Q9hctMlXLa11rH3kQL/4NW0rdVc9Oxo5CkjVIqcDgqCNyvdAL2OcrkbaxCpq
         QXGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TwXrxO/TQ61wqw3wZNmwm6oyzfj05N2I5ILhprlnG2o=;
        b=BVgrmCCru8b8nxiOEyKqJjqQuLhFMkib4cABCsKhY8rOLQkOdDqC6EOVr/VMhgYic6
         64mCxTDd916wuQhpUJDgODqz3fN5IQj6Wrp7yUl1/lAEsFhm20q7KKqSMkzKYXfsPh0m
         gdLw9NsuCAMtGvJVtx8iC6qCcW838vdKrlnZq/VI+iF0zR0H/3M9+5MvtzQyB+iC4m99
         j7sQcizsw6sX+SiFORwJyB8Lbtqp1L0T8y/MfiB8LkSk6VHnfiSKws0s3BfcfM7+ZvFb
         NvCUOTmrMWof6oO0AeilG5jb9BvkJEyjwmb+gzrHCQuMEVch/okCFkq75LtyR+aMZU80
         cqug==
X-Gm-Message-State: APjAAAWInNWBgkupXGI1gve6YZTR5Hh/rFnrR6b+5ReUo7GMFFz3PgGL
        WOALSB3d8ENdzeWZs99S04YPjg==
X-Google-Smtp-Source: APXvYqz+5HAeKpiR9RKwsFji3DKygPY+X6WMUZszfH18n9skP2CEoN5QEEcl6qGstCGbFw1iu2iwWg==
X-Received: by 2002:a05:6000:188:: with SMTP id p8mr2051005wrx.220.1567089899507;
        Thu, 29 Aug 2019 07:44:59 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id p7sm3923492wmh.38.2019.08.29.07.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 07:44:58 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 0/4] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Thu, 29 Aug 2019 15:44:38 +0100
Message-Id: <20190829144442.6210-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for reviewing v4 patchset, here is v5 with addressing the comments in v4

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

Changes since v4:
 - updated slave bindings according to Rob's and Pierre Suggestion.
 - fixup warnings from make dt_binding_check

Srinivas Kandagatla (4):
  dt-bindings: soundwire: add slave bindings
  soundwire: core: add device tree support for slave devices
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.yaml          |   41 +
 .../soundwire/soundwire-controller.yaml       |   72 ++
 drivers/soundwire/bus.c                       |    2 +
 drivers/soundwire/bus.h                       |    1 +
 drivers/soundwire/slave.c                     |   52 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1134 +++++++++++++++++
 8 files changed, 1314 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
 create mode 100644 Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

