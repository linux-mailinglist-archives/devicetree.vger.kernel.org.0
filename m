Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34E294E308F
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 20:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352467AbiCUTMc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 15:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351807AbiCUTMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 15:12:32 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B09081697BB
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 12:11:02 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id i184so156175pgc.1
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 12:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eR8E1wtBuvjij47S9Cxn5vDUx7hs+Tb6fVVvu6jRDrc=;
        b=jeXr+bUo7i4jfBGyMLU1DpbI477MASaShtkqA1PSC1pMucvRRJeQk67ay3tiN0Fpfj
         1kELI9W/+m5QRgBMx29I/P5xh813psKnCFZ7plZdE42JORdf2reZ2Zc/b8QQXiUtwmVS
         dt/qcM9i33xbn9yIAGxSjURhsXYUgOemiP9DQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eR8E1wtBuvjij47S9Cxn5vDUx7hs+Tb6fVVvu6jRDrc=;
        b=Maj9pXYlYJ2QjGQuPjsMK26BT973BZdWqvyFs5mIpqV1kEPgOcOLh9Pw+2bW3kJ6rc
         9b5gv2rLOWrZievP+e6/ynV1F0/6KdCC47j4yGLmHPSPDnHarmTk/WmYUHDW20Xx3p66
         h5nmT4EqM0eosrp+4GlAmTr4XR1X2Xmx5R1upQgjjTe0CAN1oVN6C9zh01AiBeGI+2T+
         hM9/3RLf5esboMLpAiAOGQw5DenO3K4qqvKWcIj75COdKGMNwomzFS1sJjBq5eMxACKT
         X/r0J14mV3cmXlw2K5rq8OY5QJ1i89evoxhWhaC+gvhgSFIsNrKq7Alicx1xaSSK+Ljj
         ujJw==
X-Gm-Message-State: AOAM532HKZoG7RiGBLehj33rdw4w0OmtER90BX86L8MoCObB2nIu4c3g
        0ydmTOHRkWGx0mzGiReCo9p4JQ==
X-Google-Smtp-Source: ABdhPJzl0a4ZxR6MDBzbPO5qdgl/uN5VAPhC2BdHXpB5yLVjYD1CdrX4AVe5jTcQuWqnJ38oPKMb1g==
X-Received: by 2002:a63:17:0:b0:37f:f283:24b with SMTP id 23-20020a630017000000b0037ff283024bmr19255781pga.407.1647889862150;
        Mon, 21 Mar 2022 12:11:02 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:2ffa:f7a0:c7f5:8171])
        by smtp.gmail.com with ESMTPSA id y14-20020a056a001c8e00b004fa829db45csm3384022pfw.218.2022.03.21.12.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 12:11:01 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Benson Leung <bleung@chromium.org>
Cc:     linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v4 0/3] Update cros-ec-spi for fingerprint devices
Date:   Mon, 21 Mar 2022 12:10:56 -0700
Message-Id: <20220321191100.1993-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
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

This patch series introduces a DT binding for chromeos fingerprint
devices and then implements support to boot those processors during
driver probe if the BIOS hasn't done it already.

Changes from v3 (https://lore.kernel.org/r/20220318015451.2869388-1-swboyd@chromium.org):
 * Drop spi_device_id because it isn't used
 * Dropped struct members for gpios
 * Picked up tags

Changes from v2 (https://lore.kernel.org/r/20220317005814.2496302-1-swboyd@chromium.org):
 * Dropped cros-ec spi dt properties that aren't of use right now
 * Picked up tags

Changes from v1 (https://lore.kernel.org/r/20220314232214.4183078-1-swboyd@chromium.org):
 * Properly do the boot sequence
 * Add a message that we're booting and delaying a while
 * Fix typo in commit text
 * Change binding to not spell out reset-gpios and indicate that boot0
   is about asserting boot mode
 * Split device id to different patch as it's a different topic from
   booting

Stephen Boyd (3):
  dt-bindings: chrome: Add ChromeOS fingerprint binding
  platform/chrome: cros_ec_spi: Match cros-ec-fp compatible
  platform/chrome: cros_ec_spi: Boot fingerprint processor during probe

 .../bindings/chrome/google,cros-ec-fp.yaml    | 66 +++++++++++++++++++
 drivers/platform/chrome/cros_ec_spi.c         | 43 +++++++++++-
 2 files changed, 106 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml

Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Craig Hesling <hesling@chromium.org>
Cc: Tom Hughes <tomhughes@chromium.org>
Cc: Alexandru M Stan <amstan@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>

base-commit: ffb217a13a2eaf6d5bd974fc83036a53ca69f1e2
-- 
https://chromeos.dev

