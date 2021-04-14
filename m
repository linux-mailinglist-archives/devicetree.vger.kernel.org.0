Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2901035F852
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 18:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352455AbhDNPuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 11:50:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350879AbhDNPtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 11:49:47 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4EDDC061574
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 08:49:24 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id x12so11368516ejc.1
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 08:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oMKMWHGSc2AZxOCks5CbacE7do82GypDg6I7ptXCTPw=;
        b=ifN3HHo2uHgUNkNPLNGibyPPNTee0A/WwXZ3W9wiEBTeiCIiHTpqRvDod/xY9JmVQY
         1xtpnno8iG8qU80tUcVP1qHLxU767UFrx2PWjm8w65s4qw0MfeSlRpuLLVtesuesNTHp
         7ovIAr6uksvHBIkCyc2J/+d9WdXNRPT5XZ3SNKUZf6sCm98KSHkRlHjA7lNen9GQL7T5
         pEDuFIuFeYt0UkvfVPYcs40H3OMmd5hWGKhpwkaDFk8Z6oSJfE4S7wdiw+dsoWh7qR/F
         nlcWJFRWnSeLbMp9vsZYX8DmzilLFDxEp+0mx4cas3/qXqPysbHP+QCawNVZ0SwO0uiC
         b0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oMKMWHGSc2AZxOCks5CbacE7do82GypDg6I7ptXCTPw=;
        b=WbKLZbyayatzavjAVRcyOLv+VQU+TdjAuGrMHKunbLVt1ilJbXKMtpHJQGU7Jo91Oa
         uB6tM5a/jegz5G5/hl/k/BVC85YgIqGxhMyDHFFXSxd4KTcb6MjQFLQKbM5vu/E7qRgz
         /Fi4S/pv/XIMZFkRicblLaPUnmDBgCZ3/gMmegpSA/5EHOYM8SuRW4C22zZIa7HalHfv
         qZ12RDtOxvpalpPm+e94xwKcEktGHEVJfaB2sMrEZIRgyt6PeaSMl8Lmi1h54GnmapWX
         8LQlQZacB1eYemua+TgyfStAqPZ6pw228Zg/14jF9Bkz6YadlMH3WIZ+12PHuwzwisJa
         PPNA==
X-Gm-Message-State: AOAM531qGI2E29/cFKzO8bivyRJp4447CIDBOniAZ2RPeu1UpbHxnChn
        pBEBNMRpjPEBdhAK8D5zuj3PFU6nT8BtSw==
X-Google-Smtp-Source: ABdhPJy0ePkOSl5fcbKQnTE2gibN+aVrlMi6IEXeohPhMbVHg0xuGLaPgYbBApxGYU1sA9ovGWbA3w==
X-Received: by 2002:a17:906:2755:: with SMTP id a21mr22774800ejd.278.1618415363438;
        Wed, 14 Apr 2021 08:49:23 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id q12sm10495540ejy.91.2021.04.14.08.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 08:49:22 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 0/9] ASoC: codecs: add wcd938x support
Date:   Wed, 14 Apr 2021 16:48:36 +0100
Message-Id: <20210414154845.21964-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for Qualcomm WCD938X codec.

Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
connected over SoundWire. This device has two SoundWire devices, RX and
TX respectively supporting 4 x ADCs, ClassH, Ear, Aux PA, 2xHPH,
7 x TX diff inputs, 8 DMICs and MBHC.

Eventhough this device has two SoundWire devices, only tx device has
access to main codec Control/Status Registers!

For codec driver to be functional it would need both tx and rx Soundwire devices
to be up and this is taken care by using device component framework and device-links
are used to ensure proper pm dependencies. Ex tx does not enter suspend
before rx or codec is suspended.

This patchset along with other SoundWire patches on the list
have been tested on SM8250 MTP device.

Am planning to send support for MBHC once this driver gets accepted!

Thanks,
srini

Many thanks for reviewing v3.

Changes since v3:
- Moved to using driver component framework
- Added device links to allow correct runtime PM
- added runtime pm support
- split codec bindings into two parts one for codec and other for soundwire device.
- 
Srinivas Kandagatla (9):
  ASoC: dt-bindings: wcd938x: add bindings for wcd938x
  ASoC: codecs: wcd-clsh: add new version support
  ASoC: codecs: wcd938x: add basic driver
  ASoC: dt-bindings: wcd938x-sdw: add bindings for wcd938x-sdw
  ASoC: codecs: wcd938x-sdw: add SoundWire driver
  ASoC: codecs: wcd938x: add basic controls
  ASoC: codecs: wcd938x: add playback dapm widgets
  ASoC: codecs: wcd938x: add capture dapm widgets
  ASoC: codecs: wcd938x: add audio routing

 .../bindings/sound/qcom,wcd938x-sdw.yaml      |   61 +
 .../bindings/sound/qcom,wcd938x.yaml          |  176 +
 sound/soc/codecs/Kconfig                      |   13 +
 sound/soc/codecs/Makefile                     |    4 +
 sound/soc/codecs/wcd-clsh-v2.c                |  348 +-
 sound/soc/codecs/wcd-clsh-v2.h                |   16 +
 sound/soc/codecs/wcd938x-sdw.c                |  230 +
 sound/soc/codecs/wcd938x.c                    | 3786 +++++++++++++++++
 sound/soc/codecs/wcd938x.h                    |  670 +++
 9 files changed, 5294 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
 create mode 100644 sound/soc/codecs/wcd938x-sdw.c
 create mode 100644 sound/soc/codecs/wcd938x.c
 create mode 100644 sound/soc/codecs/wcd938x.h

-- 
2.21.0

