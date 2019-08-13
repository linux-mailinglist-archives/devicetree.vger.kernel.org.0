Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0E98B297
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 10:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727824AbfHMIf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 04:35:57 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36397 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727843AbfHMIf4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 04:35:56 -0400
Received: by mail-wm1-f65.google.com with SMTP id g67so700488wme.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 01:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gf8oMUZD9BuH1tA5WiPMc3a88iyFztlGdMksig5IF5U=;
        b=oUiDtvrDAjvg9ztkMAJkZpYGsIowQdXup3NVYcaeYbQ8jEbkayG7R9N4CjqmQO4Kr5
         X5zCuTrRM6491pBfc5NrTZYz/5KRoRSIlTcqmz0TY0WtZlywAomKwVO0fiZYd7UagbOh
         B5csnV3iwxXsQCojKDVaxEBBLVpi+G9Sw5WKVAUs4iO11IPsLFC51wCAYhZOlZNXk8yH
         A6vdzWk+nUtYIki63Y6P0jvBht+OzbVl0A0sIx7NxmUZc9oIyup//bWkAJJoIUTazaeo
         NKrD/2NjfGFDbwU04mefMhPaxiceHZDD1SmdiPXXLJHAT5EaWQAHOE3de7m7oY8xuzue
         6Aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gf8oMUZD9BuH1tA5WiPMc3a88iyFztlGdMksig5IF5U=;
        b=Yk8lhF4Ptf63llHjp0bn+W2BqKn0zAZmqveZQKqbfwXhxiE9WXDderMUttR++2B5Wu
         k8KnqwT1H0/fNCI2kOpokGc4/eIYjysOj8p9ypcy1muBt8QWTQd9epW6RqPqb68zVlgg
         crhCkTXtJI9cBQbg4u7dYsL7+VcGJoPQEj9YfudRgrp9soDwaGTvHWbDDFVVIOh38kB4
         WzAr1JToEmQtn530CnADZR4X6dtLtTpuvzRF8ZMXahq4uEq3BI9ijM91dpV1oJZ9ccS+
         14FYBs93v3lD3DbmwJmBAhAUyXv8G6itIPYvH7IrrfKTiG4ZnflnaAWJWMJrjBOEQQYX
         2OUw==
X-Gm-Message-State: APjAAAVj+Sz+hQxo4bQ4/fJFVMWzp13OLZ99ml22y6sspnl6ZtD4qHsn
        La9BoTwcBX+7sCUdPS+2UO2D5Q==
X-Google-Smtp-Source: APXvYqz+ArjE/b8LuqDHeWnFSPWhCxhwZjmprL6QzONacS3RLaBmL8Zvrs6NzQ4qdiW32u562cRerg==
X-Received: by 2002:a1c:cc0d:: with SMTP id h13mr1714803wmb.119.1565685354389;
        Tue, 13 Aug 2019 01:35:54 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id o11sm8651822wrw.19.2019.08.13.01.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2019 01:35:53 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/5] soundwire: Add support to Qualcomm SoundWire master
Date:   Tue, 13 Aug 2019 09:35:45 +0100
Message-Id: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for reviewing the RFC patchset.
Here is new patchset addressing all the comments from RFC.

This patchset adds support for Qualcomm SoundWire Master Controller
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

Changes since RFC:
- updated bindings as suggested to take care of more bus parameters.
- fixed error code of snd_soc_dai_get_sdw_stream() dummy function.
- Cleaned up driver to handle read/writes in same way without special casing.
- removed unused defines

Srinivas Kandagatla (4):
  soundwire: stream: make stream name a const pointer
  ASoC: core: add support to snd_soc_dai_get_sdw_stream()
  dt-bindings: soundwire: add bindings for Qcom controller
  soundwire: qcom: add support for SoundWire controller

Vinod Koul (1):
  soundwire: Add compute_params callback

 .../bindings/soundwire/qcom,sdw.txt           | 167 ++++
 drivers/soundwire/Kconfig                     |   9 +
 drivers/soundwire/Makefile                    |   4 +
 drivers/soundwire/qcom.c                      | 919 ++++++++++++++++++
 drivers/soundwire/stream.c                    |  12 +-
 include/linux/soundwire/sdw.h                 |   6 +-
 include/sound/soc-dai.h                       |  10 +
 7 files changed, 1124 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
 create mode 100644 drivers/soundwire/qcom.c

-- 
2.21.0

