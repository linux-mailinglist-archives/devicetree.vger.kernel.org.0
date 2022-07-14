Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA1D5746D1
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 10:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbiGNIe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 04:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235620AbiGNIey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 04:34:54 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B33273D5BC
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:34:53 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id f24-20020a1cc918000000b003a30178c022so634561wmb.3
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIgI+F26G1gJKt1Gr76+HSSJDGWR7umecGKNXFaZ7og=;
        b=dFGwqUXPPN0ceufP9CKUR5FAN5qG8PU+svDqXJLkYjCJNf4TdzUm5HAEvU4jbgcrft
         ojBrpfPPHnWnRy4gughIQp0xzTFDP+rubv2GJwrVRUdJ62Pa3Qza0TaQDd0d0sSN/gmG
         7JYrRu+iSz5R87ueAsCV5dC5QjPNkmSr7PeI6TgdSOlLLuADPoC6C9AO7JbxTNnnQtcR
         VNh/ctpez17iub/3EYEyhq3NxDdrWPAX2wVTNwsUeTKfJRWPCMnzCCZzolEhx9eVp4ik
         bJS56NoXZ+YQ+EyxP3cqFzTA2utr+C0rhEkotwgILA1QjHhyOJKMZX5jIMSx4DtYyQrI
         yMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIgI+F26G1gJKt1Gr76+HSSJDGWR7umecGKNXFaZ7og=;
        b=gahK3woRw/FYZRbf24OjPA3Z716sd6OKpoXyYJmFS00Xs//0lqDgTE79iEWCJWDj/c
         M433Pp6f/YA6aY1u+y3Kg2fHltf41SiMtw+s7jFTH9enHOi356Ng+2foud7jD6lqOEJu
         ncsUfm8ndaifbZMlJWgqf9Eq5y3lLUmTSH3L3N2CMmxgajlFimRJVewhrmsC3eOlbBhN
         qpfROzzHv3BEntlT4yYU97bliwo/EHIPoDeHk5iPH7P4aiRYzNxsYM5o/J5QhuOvlUZL
         wb98DxA6etCAl5zfq6jxj1ntgZm6a7nTk8zroE6BejLCY8cAWpjyHE8dB5v3tFQLPm4i
         +DLA==
X-Gm-Message-State: AJIora9CvBB7x80RB+9bOcSzwpWW+46oUzVNmmQsr/UT763cNWM/Tr5e
        5U7hE1RAYnGXopW6YOD+TBGj0w==
X-Google-Smtp-Source: AGRyM1vISoW45NJgK2VFRIJirLCEZhWCjmDWlmAWXbY32fT6wi3/cRFShxa9KJ6CR/+nelkcioF4VA==
X-Received: by 2002:a05:600c:4e90:b0:3a0:57d6:4458 with SMTP id f16-20020a05600c4e9000b003a057d64458mr7962627wmq.198.1657787692262;
        Thu, 14 Jul 2022 01:34:52 -0700 (PDT)
Received: from melexis ([194.44.50.167])
        by smtp.gmail.com with ESMTPSA id n18-20020a05600c4f9200b003a2ec73887fsm7882763wmq.1.2022.07.14.01.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 01:34:51 -0700 (PDT)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org
Cc:     Volodymyr Kharuk <vkh@melexis.com>,
        Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] media: i2c: mlx7502x ToF camera support
Date:   Thu, 14 Jul 2022 11:34:42 +0300
Message-Id: <cover.1657786765.git.vkh@melexis.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for the Melexis 75026 and 75027 Time of Flight
camera sensors, with DT bindings in patch 5/6 and a driver in patch 6/6.
Also it adds 1X12 greyscale format to xilinx MIPI receiver
in patch 1/6 and to xilinx video in patch 2/6.

v2:
- added external clock to the sensor
- added all regulators required by the sensor
- added posibility to choose sensor type in device tree
- added prefixes to all custom types in device tree and driver as well
- style fixes

Volodymyr Kharuk (6):
  media: xilinx: csi2rxss: Add 1X12 greyscale format
  media: xilinx: video: Add 1X12 greyscale format
  media: v4l: ctrls: Add user control base for mlx7502x
  media: uapi: Add mlx7502x header file
  media: dt-bindings: media: i2c: Add mlx7502x camera sensor binding
  media: i2c: Add driver for mlx7502x ToF sensor

 .../bindings/media/i2c/melexis,mlx7502x.yaml  |  146 ++
 MAINTAINERS                                   |    9 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/mlx7502x.c                  | 2020 +++++++++++++++++
 .../media/platform/xilinx/xilinx-csi2rxss.c   |    1 +
 drivers/media/platform/xilinx/xilinx-vip.c    |    2 +
 include/uapi/linux/mlx7502x.h                 |   31 +
 include/uapi/linux/v4l2-controls.h            |    6 +
 9 files changed, 2229 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 create mode 100644 drivers/media/i2c/mlx7502x.c
 create mode 100644 include/uapi/linux/mlx7502x.h


base-commit: d8e8aa866ed8636fd6c1017c3d9453eab2922496
-- 
BR,
Volodymyr Kharuk

