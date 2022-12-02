Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4375C640A31
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:07:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbiLBQHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:07:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232364AbiLBQHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:07:47 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D377D15820
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:07:44 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id e13so7033751edj.7
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JRuyXMw8hyC+Rg2csC0rqJ6/Pq3ZMpmr4yGDWOjzxHU=;
        b=K2dlfod9Ocgem+SDOxuJzxbJDjaR3ggv06WHA62zkJ9sHwqK1j8fuP39nbVo09S7Ib
         mSGlalccjwi0Vfc8XbPnWxY/fN0q3VYNr6jbn1EsChPteu1qmOeK/ycQZoIMZGNs0EMi
         p1Tted4M/QLJvRd2QAWUQzeGntWTGt8zJqxGdvIsq1c3sih0Q6vswauKjhIxT2LGC4eX
         bQe/QIeLxOgXdv0VQAJ7K6CsGAaLkGsEgTTYLqKyLqp+/+Cy2wooLmbTIcN32eo9+J7p
         3wahCLFKH/e2qRmFaj2N2bY0FvSVAH68XFxgArPoqKcAtc3137p2i7Oc9NlLwv6cFT2y
         tvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JRuyXMw8hyC+Rg2csC0rqJ6/Pq3ZMpmr4yGDWOjzxHU=;
        b=qJ43jb8nQJ1cJF8UO+oVru+vbWlIft7Q50sJYWfW/SKGA9sfUsYwQGTOzgqebML1i7
         5fRj/jV8pKugfbOSLDGRX5ObFZ+XgVa2dPFjby8WnbAU+9jcKR/h3ce4CNQ1YKI5QJXi
         /jeq/uxGUnrIkboNmWUrpDpnagw/k3TWuv7MkgANCkWmhKADciqJxjAJJo+rmHGH31z0
         TgGM4EKJVkPffnSLuAIPnAGyMlI4hl4shOn+lNRIzyBwMPwiaL/8dVd1zMfAWDfYiyQ6
         DX0GSDqUjUJ5/63XZZ1dAmsf1gkTdX4rWyp79FD89HxBPCgyzWmbBLO85FUH8YWglkNV
         Pn7g==
X-Gm-Message-State: ANoB5plokCf8DBs9SDIuyzBvT6Jwq3lgXe2ChOpi9qpxCnmlfP14J6Dx
        X1KInFT6O/uPSWL2Nzm3nxV3j0mxiW4L4T24xKI=
X-Google-Smtp-Source: AA0mqf7QnQOsrbMNEnBh0+PlULLMaqwjCbYnDTotdWYQm+Gam0RBE9YEJdOmVYi/UNNlGtpQWw+R/g==
X-Received: by 2002:aa7:c70a:0:b0:46b:c11:9f2c with SMTP id i10-20020aa7c70a000000b0046b0c119f2cmr25001745edq.122.1669997262766;
        Fri, 02 Dec 2022 08:07:42 -0800 (PST)
Received: from melexis ([91.192.183.26])
        by smtp.gmail.com with ESMTPSA id 5-20020a170906310500b0073d81b0882asm3140423ejx.7.2022.12.02.08.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 08:07:41 -0800 (PST)
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
Subject: [PATCH v4 0/8] media: i2c: mlx7502x ToF camera support
Date:   Fri,  2 Dec 2022 18:07:30 +0200
Message-Id: <cover.1669978791.git.vkh@melexis.com>
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

v4:
- fix output mode
- forbid array for menu and warn if validate_new return an error
- add enums to custom control OUTPUT_MODE
- update doc
- minor fixes

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
  media: dt-bindings: Add mlx7502x camera sensor
  media: i2c: Add driver for mlx7502x ToF sensor

 .../bindings/media/i2c/melexis,mlx7502x.yaml  |  126 ++
 .../userspace-api/media/drivers/index.rst     |    1 +
 .../userspace-api/media/drivers/mlx7502x.rst  |   28 +
 .../userspace-api/media/v4l/common.rst        |    1 +
 .../userspace-api/media/v4l/ext-ctrls-tof.rst |   56 +
 MAINTAINERS                                   |   11 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/mlx7502x.c                  | 1747 +++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-api.c      |   25 +-
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   20 +
 include/uapi/linux/mlx7502x.h                 |   28 +
 include/uapi/linux/v4l2-controls.h            |   14 +
 13 files changed, 2059 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 create mode 100644 Documentation/userspace-api/media/drivers/mlx7502x.rst
 create mode 100644 Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 create mode 100644 drivers/media/i2c/mlx7502x.c
 create mode 100644 include/uapi/linux/mlx7502x.h


base-commit: a7bab6f8b73fe15a6181673149734a2756845dae
-- 
BR,
Volodymyr Kharuk

