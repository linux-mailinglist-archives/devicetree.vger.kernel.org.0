Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60AF74D76E9
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 17:35:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235052AbiCMQga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 12:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235033AbiCMQg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 12:36:26 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 230332C11F
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 09:35:15 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id yy13so29192705ejb.2
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 09:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RsYMm6yDzAg/+Yh+dNaABewzSTjIvrbPi3LLKKyRQvg=;
        b=n1wOpGeTOgXBPKiHGCOffT9Af5Qxo2tL1Nx6Nme3v5idj5BmBazNL0s+qEAboFzRyX
         zM7RyyknU43kNR4UM10/WIDEcv31FmMkD9Y5N35FRvwBnUkwaY+3xfHtjpwfE9LD4leS
         +PeeDgKb4UDIsmBXK/lOd/KgdcPkt+XGJQjXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RsYMm6yDzAg/+Yh+dNaABewzSTjIvrbPi3LLKKyRQvg=;
        b=8HzoWfrSOgN87q+Duxs45LUWxAliqoJ9qIgKUgTtbB2f0z78qasiS0kd2cuBccH752
         S485iKZtkRO3FuMkWSqZgZNDF1155wY+sFL70pGBssDLpBp2TBMyUmZoHn1oV36PfbHM
         9JJlq3kXLBfVay/lu095tO3YAXXl7Bvs/VofXdrWzmUbnEAzPwJ9NYfkpVY6QfTZB2Nr
         yLYxvGjIoFoG/QZtdB2a3q3I5R6oPkkNBGOxsVPQu6eeIRX8Kn2lKHyp+d5qHeR2Hw/a
         HKork5fmZvfGMQKuvgyl+2poUeCo+SCf6kXHrZ4c1Jg0a8jS4HmJDnzvQiBZAAHFsZSp
         KTEg==
X-Gm-Message-State: AOAM533ac7g0Y3BqRzy1BRgWmsvMOLdfMKiza6ftlC7Yv/hkop4c+j8X
        AKZ908bU6QrHYOQMLDn2UE44Jw==
X-Google-Smtp-Source: ABdhPJxdvnjxRtxUUa9/OWlZoHsXmiNPk3uDy7OtZ+pLE80Sbl5RlicY1cH+I0M3lqHHiLSi3IQyDQ==
X-Received: by 2002:a17:906:c08a:b0:6ce:36f8:bfe8 with SMTP id f10-20020a170906c08a00b006ce36f8bfe8mr15927929ejz.52.1647189313605;
        Sun, 13 Mar 2022 09:35:13 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-0-15-73.retail.telecomitalia.it. [87.0.15.73])
        by smtp.gmail.com with ESMTPSA id qt22-20020a170906ecf600b006da6ef9b820sm5725028ejb.112.2022.03.13.09.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Mar 2022 09:35:13 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Oliver Graute <oliver.graute@kococonnector.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: [PATCH v3 0/6] Input: edt-ft5x06 - Improve configuration
Date:   Sun, 13 Mar 2022 17:34:57 +0100
Message-Id: <20220313163503.5183-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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

Changes in v3:
- Add hz unit suffix to report-rate dts property.
- Add '|' to report-rate-hz description in the yaml document.
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

