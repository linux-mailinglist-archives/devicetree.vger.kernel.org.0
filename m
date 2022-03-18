Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68C244DD290
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 02:54:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbiCRB4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 21:56:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbiCRB4L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 21:56:11 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9531421C049
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 18:54:53 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id m22so6416890pja.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 18:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yxBIhyBEiFAgJKygaBubKQqJRvLxov0I5kEUPytrKfg=;
        b=WD5W3/fIsPgoTeHB0lZ/uXeTTgKgmcA9bCns//Gj0j+EyV0fU/LfNz8OO3QC3dh8HN
         UGd85scVmHjhJbT6mtBGyPIl8bgmnzYiKbaVSr8yZp1J8ZKJTxl31DNziR2QJbuXFg44
         02U8Ev9jUnkIfk6No6xYbBV21t0VKBUT25KiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yxBIhyBEiFAgJKygaBubKQqJRvLxov0I5kEUPytrKfg=;
        b=XNi+HEMnUdfAZls5Zrm5l7xFvy3Ru1i/pITfM38Hc+V5nqGber1xn/u1mcvq/sgbpR
         1nBk4oRylDMQZTW2L47qdfXCMfai8DF3GsppPmOdMSvTNsxIvjgrEwn8zgRoLKbNMjat
         6cXuq7OeoE/lrLSHj8dMGJmU6qsBMQVgQ8OmHptl91FO4gBJCSasdsegiJU0oUuNzZND
         5wci7IrqSK7iIVPQlBT93bX38ZhxgxT+nZLnZGN626JgFvzTgvQNbwsZTSTPowzJypQX
         tYUJUWtqLNRwYffdMFA8X79yfyloHN5gnBUK7V56SrxYr9lSZiU19FGoHZi5/Wh2gs1N
         88+Q==
X-Gm-Message-State: AOAM5312hDtkIItpaumX3cWnPRO6T6n038I572QNmg/Yjrn5plUAeXqt
        hf7/nsMiatziaCMNW3f+pbZvig==
X-Google-Smtp-Source: ABdhPJzeWkYn3YRTNXiVy9jq/jxHPBPwqdVFOCPMSFezW6Lfd5nhL4ppj1XX9OB13gwnZ/g2PT2lCw==
X-Received: by 2002:a17:90b:789:b0:1bc:293c:1445 with SMTP id l9-20020a17090b078900b001bc293c1445mr19014934pjz.111.1647568493095;
        Thu, 17 Mar 2022 18:54:53 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:49cf:7701:359e:b28f])
        by smtp.gmail.com with ESMTPSA id u10-20020a056a00124a00b004f783abfa0esm8050201pfi.28.2022.03.17.18.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 18:54:52 -0700 (PDT)
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
Subject: [PATCH v3 0/3] Update cros-ec-spi for fingerprint devices
Date:   Thu, 17 Mar 2022 18:54:47 -0700
Message-Id: <20220318015451.2869388-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
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
 drivers/platform/chrome/cros_ec_spi.c         | 44 ++++++++++++-
 2 files changed, 107 insertions(+), 3 deletions(-)
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

