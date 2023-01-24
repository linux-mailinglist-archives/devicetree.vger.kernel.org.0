Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70BE6679CF6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 16:09:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233989AbjAXPI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 10:08:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234717AbjAXPI5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 10:08:57 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5979546D64
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:08:52 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id e3so14160704wru.13
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=REh0VFY1Amrj6XgNyHtu0xKnVbhHqNJ12VGZraelP5o=;
        b=Yjvq62KbNpeJJWFKFzld5zEEW8qWRuaL6UWTt4GTnDy6r1R1KBsJyrtCrCP9x6JaEH
         A0Yd4GJGU7L+l2Ti9cVDp7zMtuT3AYDYyWXobTzH0FnR7ocDnH9qSxYhSk8v2TIJ5d5z
         T+3q6w+M03cRGYTSc2HlY/3FviqoUcn/jGtiiKxaFYaSnlVoT8huDiTDB4Nl4bHq6Ixu
         wHE9NNqK4qGNLM3zc82Da0ZOQ0zT1I/IEA4x+DfFHtifRdc/7sIXutqFw/NJiEoyNTLr
         4xD8Mn9kEvHMt+k8M+768sLcHpXIJVl+PQ7rOoRXJURyWUA6cvn7xpxWobHFBw/Pl3pX
         TfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=REh0VFY1Amrj6XgNyHtu0xKnVbhHqNJ12VGZraelP5o=;
        b=bya36IA5eN/k49YZckPdvTb5X4os155GBhrff+tMViWbX0c7rUhILBbaSCF7J9Othi
         ZrGbjJ/mJyQ3ovsgcAlwLGeXzsH9qr1ChFFYblzy/F7fngICuDglRGQ1+1xqKUQ8yIno
         eD2gfXv4RbNa3AbNk3HCm8FJwu3Aj/yP4SSwO5VNK64Jvj+YtLkU66QN52XiH9XYU3Vj
         Vu9MKEHphhSn56wAx2/Gxs86E1HUjv56S+s1XIJQFW8qo+8qvq023tlzC52iHV8q9+XF
         vOXaIBkvdeIAqKLOhAUrf0IX/Q5BdBZjmwk3jLMip9sR9MIxh31aGXk9f4g/VUubmKeP
         H4pQ==
X-Gm-Message-State: AFqh2kp/NZw2nZdTSdBP5mv2Qk3z3SCYit09LRsY5d/kY1BlvsBL7dKh
        JiXp6NRDybOP0YT8Y7uMr9en2g==
X-Google-Smtp-Source: AMrXdXv8P6AbJJH9kwQc2z5g6glauOfLks+dH2hSlGDXp1qDZPAH/m1tG1s+Tj2v8oDwIjN8qll35g==
X-Received: by 2002:adf:c645:0:b0:2bf:81e9:cdc5 with SMTP id u5-20020adfc645000000b002bf81e9cdc5mr15198183wrg.42.1674572929355;
        Tue, 24 Jan 2023 07:08:49 -0800 (PST)
Received: from localhost.localdomain ([93.93.133.154])
        by smtp.gmail.com with ESMTPSA id a3-20020adff7c3000000b002bdc3f5945dsm2053769wrq.89.2023.01.24.07.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 07:08:48 -0800 (PST)
From:   Naushir Patuck <naush@raspberrypi.com>
To:     linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Naushir Patuck <naush@raspberrypi.com>
Subject: [PATCH v1 0/2] media: i2c: IMX296 camera sensor support
Date:   Tue, 24 Jan 2023 15:05:45 +0000
Message-Id: <20230124150546.12876-1-naush@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series adds support for the Sony IMX708 camera sensor driver, with DT
bindings in patch 1/2 and the device driver in patch 2/2.

The Sony IMX708 is a 12MP MIPI CSI-2 sensor with a resolution of 4608x2592. It
is a "quad-Bayer" sensor, with on-chip re-mosaicing to output standard Bayer
data in 10-bits.

The sensor is capable of capturing HDR images from the quad-Bayer arrangement
and tone-mapping the image to 10-bits Bayer format. This functionality is
switched on/off by the wide dynamic range control:

v4l2-ctl --set-ctrl wide_dynamic_range=[0|1] -d /dev/v4l-subdev0

Thanks,
Naush

Dave Stevenson (1):
  dtbindings: media: i2c: Add IMX708 CMOS sensor binding

Nick Hollinghurst (1):
  media/i2c: Add a driver for the Sony IMX708 image sensor

 .../devicetree/bindings/media/i2c/imx708.yaml |  119 +
 MAINTAINERS                                   |    7 +
 drivers/media/i2c/Kconfig                     |   11 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx708.c                    | 1923 +++++++++++++++++
 5 files changed, 2061 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx708.yaml
 create mode 100644 drivers/media/i2c/imx708.c

-- 
2.25.1

