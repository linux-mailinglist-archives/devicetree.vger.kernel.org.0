Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F20CD55222C
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 18:25:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235484AbiFTQZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 12:25:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbiFTQZR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 12:25:17 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A2E17AAD
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:25:16 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id a11so3708269ljb.5
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=B8wRFLzkIFXbd/+K85Ypd67MW4adVQ8fybY9QtW83CM=;
        b=J+Vd9Dfspzp+S6waq/k8gLaGwmDcgvEMGT+mUgZyw2/fAw0ILKfVGm4DIVGIEc8Jws
         PDy0kd7dwUEWZx6d67uC3w/r5CycRTnEuH9loJSeJhXBM0isj8f7sKr1r6ABxQThVsxl
         09/knokS7vsaZQa6z5X/S7Lsn/PuGq8IWR6ry8d+/6PZsdwTIXUUDEmbnGyRaIBR7ptU
         b3F0B9yD5omL7V7HR+HBy0wG/RBcLbl2WUC2vVUXd0o3+eWU/bIj3N8YrTaNyae8bHba
         4ghWyzUX6QQ2Qmmsonty+vwnv0o7bUU2YtBkVuVFxlcexQa7hLFJZW0cwFFdCunqCECT
         uJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=B8wRFLzkIFXbd/+K85Ypd67MW4adVQ8fybY9QtW83CM=;
        b=QW98qwJntnStsh4nURW51KoJmVJGwpmEU+rA+SDMVY0CwKqm4OrUymWEI8hrpvMw/V
         JLOsC1EFQt3eb7Npa7usgNfDambAtU80sSh6+cTd81YE7/T8BOiuxnijiqso54mVqocm
         5zOCnEgd1LD3l1I5Z+6ImxaoREuubzzez9y+tCAhr7zVR8eK2FjudPaZ9r4C3aUY6YXg
         dG4lTIRaoLgKhlyJkvplTMGIrggNmkEBlTL/urjN2WbAUC3uw2Q8CEdwnWF1vTnN2lxb
         P5zav6RWSN3TWn9LQDPXppozMhbZi3X4eZvjcCw8e/qdlmub1yo6s30W3pBB6JW7dpNM
         G3gg==
X-Gm-Message-State: AJIora8Wu2lq7pUlKveE7U2oHBsNh0eeb/EdvQOdwzetEQJBsVfNDP1K
        YbWdYtprKFbiIlp4Yz3nYLa11Q==
X-Google-Smtp-Source: AGRyM1u3+fxKD5H1mmAFFJWH4oTlmI6ZEAeightYujM5uJ7Z990RxwgPXHjaRC99XBemmxex8yrl6Q==
X-Received: by 2002:a2e:844a:0:b0:255:46b9:5e86 with SMTP id u10-20020a2e844a000000b0025546b95e86mr11609792ljh.388.1655742315036;
        Mon, 20 Jun 2022 09:25:15 -0700 (PDT)
Received: from vkh-ThinkPad-T490 ([91.192.183.26])
        by smtp.gmail.com with ESMTPSA id p9-20020a056512328900b00479478d59c7sm1811301lfe.101.2022.06.20.09.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:25:14 -0700 (PDT)
Date:   Mon, 20 Jun 2022 19:25:06 +0300
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org, vkh@melexis.com, ays@melexis.com,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hyun.kwon@xilinx.com,
        laurent.pinchart@ideasonboard.com, michal.simek@xilinx.com,
        kieran.bingham+renesas@ideasonboard.com, devicetree@vger.kernel.org
Subject: [PATCH 0/6] media: i2c: mlx7502x ToF camera support
Message-ID: <20220620162506.GA13943@vkh-ThinkPad-T490>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Volodymyr Kharuk <vkh@melexis.com>
To: linux-media@vger.kernel.org
Cc: Volodymyr Kharuk <vkh@melexis.com>,
	Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Hyun Kwon <hyun.kwon@xilinx.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/6] media: i2c: mlx7502x ToF camera support
Date: Mon, 20 Jun 2022 19:24:31 +0300
Message-Id: <cover.1655738299.git.vkh@melexis.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This series adds support for the Melexis 75026 and 75027 Time of Flight
camera sensors, with DT bindings in patch 5/6 and a driver in patch 6/6.
Also it adds 1X12 greyscale format to xilinx MIPI receiver
in patch 1/6 and to xilinx video in patch 2/6.

Volodymyr Kharuk (6):
  media: xilinx: csi2rxss: Add 1X12 greyscale format
  media: xilinx: video: Add 1X12 greyscale format
  media: v4l: ctrls: Add user control base for mlx7502x
  media: uapi: Add mlx7502x header file
  media: dt-bindings: media: i2c: Add mlx7502x camera sensor binding
  media: i2c: Add driver for mlx7502x ToF sensor

 .../bindings/media/i2c/melexis,mlx7502x.yaml  |  106 +
 MAINTAINERS                                   |    9 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/mlx7502x.c                  | 1949 +++++++++++++++++
 .../media/platform/xilinx/xilinx-csi2rxss.c   |    1 +
 drivers/media/platform/xilinx/xilinx-vip.c    |    2 +
 include/uapi/linux/mlx7502x.h                 |   31 +
 include/uapi/linux/v4l2-controls.h            |    6 +
 9 files changed, 2118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 create mode 100644 drivers/media/i2c/mlx7502x.c
 create mode 100644 include/uapi/linux/mlx7502x.h


base-commit: 945a9a8e448b65bec055d37eba58f711b39f66f0
-- 
BR,
Volodymyr Kharuk

