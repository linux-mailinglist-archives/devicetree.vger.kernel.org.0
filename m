Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85B5F53FA7C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 11:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240226AbiFGJ4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 05:56:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240199AbiFGJ4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 05:56:10 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 592EAE77DF
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 02:56:05 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id p5-20020a1c2905000000b003970dd5404dso9257094wmp.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 02:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fjBt4PhnxyvpQZHwHALGbz1X5a0xwh6G7fjizoTyXiA=;
        b=XiUcORudV3I+wOJDx2F4UjTWywNx8pQlMnZKao6ujML4UCvVEVbdo9GiUiP8htMMNd
         jptZB/A3xMYe1wqA0ab8tQgQ+O5eDq2P0+De+G86GhEurHIbukEIeSqpnKLHS9Wj1TOg
         Df2CboRzOWEdzjLdAr7B8RaczL4lr1qW7Dw34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fjBt4PhnxyvpQZHwHALGbz1X5a0xwh6G7fjizoTyXiA=;
        b=kN5fFacp4YZSlkHofLgBxZeSOU2mMVW9p68vvK4FjwbOCm97gf+dEYFQi8jhLc/jt3
         q82qJzvLS4ODhaWKaqjAXuAni9FbeAzG+3wI9ycOzU6eAXuxQVdWJ/J4FvPZXGafeIKb
         /IPgRfxscLSqCID+Z0x5oddsrBLL7/fR2Fv/+Ljk+rAh4ONzPcfXPnBD+hJhCiWtv0RJ
         W7pKXkeVbaU1fGUFiTuhDzmE5dM7E9k8KTdx/WeyThJ14ILJvENsQTXQi+TaQ1dNl36D
         PplNRboPKrehFhB0uDc6k+Q7qhdg0NpwHDrmluzwYgvv/KSZM1tLAHLcC53jUdSpniui
         V9HA==
X-Gm-Message-State: AOAM5331O2QfbVKlTMpZbpu07fyPZUOgFXxYr58PZVivtZNbRNlVwvsd
        CsDD1awuppHwd8fGzbQ7ji1rDQ==
X-Google-Smtp-Source: ABdhPJyz6I1RYwmUAxHnrQGAGFRYDsx+0dLgsYTbqHOC7aO+teSP15UYWyqEzB1guWK5JWu1M6qpvA==
X-Received: by 2002:a7b:cb4b:0:b0:39c:49dd:b2cc with SMTP id v11-20020a7bcb4b000000b0039c49ddb2ccmr14467285wmj.123.1654595763943;
        Tue, 07 Jun 2022 02:56:03 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.pdxnet.pdxeng.ch (mob-5-90-137-51.net.vodafone.it. [5.90.137.51])
        by smtp.gmail.com with ESMTPSA id b12-20020a5d4b8c000000b0020feb9c44c2sm17693546wrt.20.2022.06.07.02.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 02:56:03 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Oliver Graute <oliver.graute@kococonnector.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [RESEND PATCH v4 0/6] Input: edt-ft5x06 - Improve configuration
Date:   Tue,  7 Jun 2022 11:55:50 +0200
Message-Id: <20220607095556.1034338-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series was born from the analysis and mitigation of a crc problem
raised by an M06 type device. The added sysfs attributes were helpful
in debugging the problem. Patches that change the report rate on driver
probing, mitigated crc errors on kernel bootup. The patch to get/set
report rate by sysfs for an M12 device, has been tested.

Changes in v4:
- Add Rob Herring 'Acked-by' tag.

Changes in v3:
- Add hz unit suffix.
- Add '|' to description.
- Check the lower and upper limits of the report-rate-hz value
- Convert the M06 report-rate-hz value

Changes in v2:
- Add Oliver Graute's 'Acked-by' tag to:
  * Input: edt-ft5x06 - show model name by sysfs
  * Input: edt-ft5x06 - show firmware version by sysfs
- Fix yaml file. Tested with `make DT_CHECKER_FLAGS=-m dt_binding_check'.

Dario Binacchi (6):
  dt-bindings: input: touchscreen: edt-ft5x06: add report-rate-hz
  Input: edt-ft5x06 - get/set M12 report rate by sysfs
  Input: edt-ft5x06 - set report rate by dts property
  Input: edt-ft5x06 - show model name by sysfs
  Input: edt-ft5x06 - show firmware version by sysfs
  Input: edt-ft5x06 - show crc and header errors by sysfs

 .../input/touchscreen/edt-ft5x06.yaml         |   8 ++
 drivers/input/touchscreen/edt-ft5x06.c        | 103 ++++++++++++++++--
 2 files changed, 103 insertions(+), 8 deletions(-)

-- 
2.32.0

