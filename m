Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2BE7338C96
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:24:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbhCLMXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:23:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231181AbhCLMXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:23:00 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6DDC061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:22:59 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so15070775wmj.1
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gw1EmCEru4mg3+UNq5mxUL127uGPwQQa9UFbvGW5NTI=;
        b=cuOnInoCzbYXcB1KE5fz2yZHLtqWBz9qh7UG3lXJMeCj+zARTGww+hTmqo5PhiXx97
         UY4064YuVsrxrXIb+OcMhjPO/NY2dmV7Pray+0LDDZ+JulCWwdW86mPXw9W41mxeExYU
         LCCSxP+raDM2LLVKnLFvyhqLxmrVlfjNCy/LAdRao99I7O+X5AHfkcf8gY6minxejmkO
         TtlESx6ZWGcsbiJieSPRPItF2SZ/ZQUIX9iywILHy1Ugs1fNo3mKWhTheBDKMwSfxIQj
         AG4Yp8fis64UejdHnk4rWcFONt3iMHy+BsaLAbC/nw1j3v4GZ4HBbO1s3jBr0urATl/m
         qHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gw1EmCEru4mg3+UNq5mxUL127uGPwQQa9UFbvGW5NTI=;
        b=EMMYSIXJC80JrzEwnNc85WTCa2tqbhkCUGW/M8AmTRPeRsNfDgoVaoIc5L6pB3zs7G
         k2FLK0uSH+bm76EYNUTs+UyHvnKT4Ggr4wMM/LPBoDQkJ3Qq9x0dcXNi5qDvUdSE0R5w
         KKHAZ7rSchQPT4Jbq3qHoZLKsDaqsX0//qkSqHL7mEge2RLkQSMajWc7/XYVeeQXkOCo
         7IBza8SJnH010VcxNoTsbsUNohBR/C3J1udk4jFRsyWmJm/8EEaxuj4s4/Qrd0ON8n9/
         lGzWOXJdGX5yshXLy+LhTz9qa6Xg4T+wfuxV5rQr9/rLbuJgN1jF+0TDy/pfaup9hFX+
         rAXQ==
X-Gm-Message-State: AOAM533C7mVTsOxxuo+wdEekplUpX2XM312pwtO+fkMTSR23tJeJAyD1
        gbz0D+3bw0gEtw64S7rqSCuU3A==
X-Google-Smtp-Source: ABdhPJww7SBBR/wgNWOgTTUZXlxZnzs/4W5fSEWQ/e3ed5u/QFiShUj+guiVKTkM7YlwR7o26udojg==
X-Received: by 2002:a7b:c3c1:: with SMTP id t1mr12734679wmj.47.1615551778173;
        Fri, 12 Mar 2021 04:22:58 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id 3sm8804329wry.72.2021.03.12.04.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:22:57 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v3 0/5] soundwire: add static port map support
Date:   Fri, 12 Mar 2021 12:22:50 +0000
Message-Id: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending this as I realized that alsa-devel list was missing in cc!

In some cases, SoundWire device ports are statically mapped to Controller
ports during design, however there is no way to expose this information
to the controller. Controllers like Qualcomm ones use this info to setup
static bandwidth parameters for those ports.

A generic port allocation is not possible in this cases!
This patch adds a new member m_port_map to SoundWire device so that
it can populate the static master port map and share it with controller
to be able to setup correct bandwidth parameters.

As a user of this feature this patchset also adds new bindings for
wsa881x smart speaker which has 4 ports which are statically mapped
to the 3 output and 1 input port of the controller.

Tested it on DB845c and SM8250 MTP.

thanks,
srini

Changes since v2:
	- fixed dt_binding_check error and kernel test robot reported errors
	- updated comments as suggested by Pierre
	- updated wsa881x to populate m_ports from valid index.

Srinivas Kandagatla (5):
  soundwire: add static port mapping support
  soundwire: qcom: update port map allocation bit mask
  soundwire: qcom: add static port map support
  ASoC: dt-bindings: wsa881x: add bindings for port mapping
  ASoC: codecs: wsa881x: add static port map support

 .../bindings/sound/qcom,wsa881x.yaml          |  9 ++++++
 drivers/soundwire/qcom.c                      | 31 +++++++++++++++----
 include/linux/soundwire/sdw.h                 |  2 ++
 sound/soc/codecs/wsa881x.c                    |  7 +++++
 4 files changed, 43 insertions(+), 6 deletions(-)

-- 
2.21.0

