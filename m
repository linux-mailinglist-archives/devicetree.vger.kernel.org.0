Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 361DB386A5
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727589AbfFGI5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:09 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54322 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726531AbfFGI5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:09 -0400
Received: by mail-wm1-f67.google.com with SMTP id g135so1178522wme.4
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6oaxDiNI3V3Y1FcG5gCLYWig+jTKPdpgP/iJOfNbmxQ=;
        b=UtFYE8HXQeDyMoOUEyIiC8jHexlyvpIeLNTRUprfHZT1sLKojwFJIAAQcXaz3MtAVW
         Fk8CHPEf0eKC3aTQBxmsvbwWqHwHK+K5ppaxYz53eJb5SGUiiXgcUUj/Z/ePSsvuifhO
         pDw96ayeUi3yqpur5/U+VIDZGlmLK70TFOTXU+JEbQ3uBvyHbItfjIQagS3TCeh5/Q7J
         cMYanxgK42yIq9X7rbZvUOGbebPci6MBgt+3PM74c1XLBwAubEQU+iVsaLk2kU3iC51d
         BXviQ4+Pkn/vC4vRDZ3LO6aQCjXEtEp4Vd/Db7f696mklhwzUVIB2E7VMSnsSiktCgHd
         /M6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6oaxDiNI3V3Y1FcG5gCLYWig+jTKPdpgP/iJOfNbmxQ=;
        b=pa5df3DDr1NWglqm0x911GejZnMgohsPvOgLh+xv7STi3+J0o0MOThOLSKGYOl6gBS
         spaUs9UsOWoU7cawGCG90wQ2ak93efXnBJIe7JCxPe4kR/KbnBCTHISSduBO4l327esg
         hYGiUPBYD4wAM9PlK+VmU6lP3NtosYNDs0YNV7YApVdb3mvkVlfLP/S4bC6hW2jccuS4
         aTAPezO0LOfAlS7y0ldazDPr/tdD2sRw8d+b4M9Y1SPGRaBhthAg/IH0uvHkKeyQSz+r
         uqI95V4FLxH7x5ayziBHiSlUwqRLI2uRX/somQQwdRTNfWDPgkhbvamyT3jCx3BvGmaF
         pxZQ==
X-Gm-Message-State: APjAAAWHmx2wnMj+VwLArB9e4xk+CAxhkizf8xutbBGV7rK95VCmoTdy
        p/1bk2R2WGFL41tckXKOA/HdvrYbPZu1ow==
X-Google-Smtp-Source: APXvYqwLMDVCNl5uQgvplPXCm62/RRTWw4niXyTJwh05YHHXxpnhloJtxM8sGpE1uyEofQ+ZzKOsGA==
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr2642243wmk.99.1559897827098;
        Fri, 07 Jun 2019 01:57:07 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:06 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 0/6] soundwire: Add support to Qualcomm SoundWire master
Date:   Fri,  7 Jun 2019 09:56:37 +0100
Message-Id: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All, 

This patchset is very first version of Qualcomm SoundWire Master Controller
found in most of Qualcomm SoCs and WCD audio codecs.

This driver along with WCD934x codec and WSA881x Class-D Smart Speaker Amplifier
drivers is on DragonBoard DB845c based of SDM845 SoC.
WCD934x and WSA881x patches will be posted soon.

SoundWire controller on SDM845 is integrated in WCD934x audio codec via
SlimBus interface.

Currently this driver is very minimal and only supports PDM.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
	Test and add PCM support.

Thanks,
srini

Srinivas Kandagatla (5):
  ASoC: core: add support to snd_soc_dai_get_sdw_stream()
  soundwire: core: define SDW_MAX_PORT
  soundwire: stream: make stream name a const pointer
  dt-bindings: soundwire: add bindings for Qcom controller
  soundwire: qcom: add support for SoundWire controller

Vinod Koul (1):
  soundwire: Add compute_params callback

 .../bindings/soundwire/qcom,swr.txt           |  62 ++
 drivers/soundwire/Kconfig                     |   9 +
 drivers/soundwire/Makefile                    |   4 +
 drivers/soundwire/qcom.c                      | 983 ++++++++++++++++++
 drivers/soundwire/stream.c                    |  11 +-
 include/linux/soundwire/sdw.h                 |   7 +-
 include/sound/soc-dai.h                       |  10 +
 7 files changed, 1083 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soundwire/qcom,swr.txt
 create mode 100644 drivers/soundwire/qcom.c

-- 
2.21.0

