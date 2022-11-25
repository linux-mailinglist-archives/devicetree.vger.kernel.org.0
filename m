Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88495638B39
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiKYNeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbiKYNeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:21 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5AA027171
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:19 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id f18so10403313ejz.5
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vLmrOXRUTnmBcIKY2DoOGroemdZ2wFBv0D8Hf5F2IRY=;
        b=fbFnWzR3/pRdPOJ3gwTO7k3HLbQxSFPlV7n3rATxW3HOmQDyv76R/d+HVWv8oE5M3G
         gZ2kj3VCbza72oBmPYCMLSqYmpeUtcLP20ijzX8P91sMI0EitHPHPfSq99/c9n8hlKiI
         h+HGC+9GAY8kaGSncUz3tlJwSZMsnejOSP0MD3SXEF3vfF/0FQ/ciqsR0TQmb6NN+JNy
         PtY3gUGWh6AB+2I67VDgQld/fwpJJyOGc73Ap7Ph4E6pZyuWLg4eM9H0Btm+xaxUPTXL
         lAPAB0iX3lYZnSUFiXzn7B636RmoJnk53YB1EF3+zadiHhiDt60v0vQuNBCSaj3j9qNY
         3naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLmrOXRUTnmBcIKY2DoOGroemdZ2wFBv0D8Hf5F2IRY=;
        b=MXEZL+/TSGTk2wZunD/LuSHNiyuUUcf/8UR01DFBCCwVQaHerm527WBOSsr7Ipsp8e
         ckvk+GZ7yPpyQzQStwvZB8TyyloEOoLS5UUSNHDLGVqj+ZvMwhZv3z+SxS1AzPbXPl3C
         V9p4+nAg1FDBHOKUWW8cSi+GW4BW2gHrRbsdKAjDdXFzIXIlm+/0YT7L6reqkmuens3w
         GamAf08WrFPaSGh4QV2pW7lZ/JajAizYlTsH7L5BJNNWW0zUc8+gzRmDMD2VmxM+9tzU
         sBny3iW/AvAtZx8qCALaCbSpAkpdur9012Ylm3vYraHikzwp0bOaErijKg6Dyg1m6aH0
         DOmA==
X-Gm-Message-State: ANoB5pnLVXR/FRPXQfO950al3pfiFIi1FIxFlER32aECsIVK8F9HpUDk
        SxOi/895WirQX/6rfD/U9qsPvw==
X-Google-Smtp-Source: AA0mqf5dB+9OA0RjitJ7/s7W6WreBUAPynvfQT58KxeuOJLpQ1csQb4ro/e64KBMrJ6jZj8NXcU/xg==
X-Received: by 2002:a17:906:6859:b0:7ae:4ed2:84f4 with SMTP id a25-20020a170906685900b007ae4ed284f4mr31625925ejs.429.1669383258274;
        Fri, 25 Nov 2022 05:34:18 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906300b00b007aee947ce9esm1568579ejz.138.2022.11.25.05.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:17 -0800 (PST)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     <linux-media@vger.kernel.org>
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
        Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v3 0/8] media: i2c: mlx7502x ToF camera support
Date:   Fri, 25 Nov 2022 15:34:03 +0200
Message-Id: <cover.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for the Melexis 75026 and 75027 Time of Flight
camera sensors, with DT bindings in patch 7/8 and a driver in patch 8/8.
In patches 1/8, 2/8 and 3/8, I've add ToF controls as separate
ToF control class.

v3:
- move FMOD, TINT, PHASE_SEQ to common V4L2 as ToF common controls
- FMOD and TINT became dynamic arrays
- remove PHASE_NUM, use dynamic_array for PHASE_SEQ,
  ctrl->new_elems pass number of phases
- remove leden-gpios, will be used gpio explicitly in library for now
- remade probe: use probe_new, no power on during probe
- remove autodetect and wildcard
- make all supplies to be required
- remove trigger ioctl, will add in separate patch series
- remove temperature ioctl, will add in separate patch series
- add documentation about custom ioctl
- style: 80 cols
- minor fixes device tree

v2:
- added external clock to the sensor
- added all regulators required by the sensor
- added posibility to choose sensor type in device tree
- added prefixes to all custom types in device tree and driver as well
- style fixes

Volodymyr Kharuk (8):
  media: uapi: ctrls: Add Time of Flight class controls
  media: v4l: ctrls: Fill V4L2_CID_TOF_CLASS controls
  media: Documentation: v4l: Add TOF class controls
  media: v4l: ctrls-api: Allow array update in __v4l2_ctrl_modify_range
  media: v4l: ctrls: Add user control base for mlx7502x
  media: uapi: Add mlx7502x header file
  media: dt-bindings: media: i2c: Add mlx7502x camera sensor
  media: i2c: Add driver for mlx7502x ToF sensor

 .../bindings/media/i2c/melexis,mlx7502x.yaml  |  126 ++
 .../userspace-api/media/drivers/index.rst     |    1 +
 .../userspace-api/media/drivers/mlx7502x.rst  |   28 +
 .../userspace-api/media/v4l/common.rst        |    1 +
 .../userspace-api/media/v4l/ext-ctrls-tof.rst |   35 +
 MAINTAINERS                                   |   11 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/mlx7502x.c                  | 1728 +++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-api.c      |   15 +-
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   20 +
 include/uapi/linux/mlx7502x.h                 |   20 +
 include/uapi/linux/v4l2-controls.h            |   14 +
 13 files changed, 2001 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 create mode 100644 Documentation/userspace-api/media/drivers/mlx7502x.rst
 create mode 100644 Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 create mode 100644 drivers/media/i2c/mlx7502x.c
 create mode 100644 include/uapi/linux/mlx7502x.h


base-commit: 1e284ea984d3705e042b6b07469a66f1d43371e3
-- 
BR,
Volodymyr Kharuk

