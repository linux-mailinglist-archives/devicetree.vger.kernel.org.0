Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B70254BAF1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 21:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344888AbiFNTvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 15:51:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244912AbiFNTvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 15:51:48 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C155031342
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 12:51:46 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id z17so9468879pff.7
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 12:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2w3cw6QyV5W4ckRn4xpfe5uPFSmcbBCuI4xeqnurwz4=;
        b=G4JiB1ndRniiJ+4Y32AhhgixsTU9L+tauaWfipSoo2+jJTyRjnlU+83RyDNQAjp9Wk
         WaLFgyDse9jNN3bPgOPJag4MQMg9xEL5tcAOuXQggX+nGSFVC/x919Ybrc8MFoHrSyeq
         yQhTYgHkDTAmVYKW2I7Q2FvGTc+an10Hw4f3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2w3cw6QyV5W4ckRn4xpfe5uPFSmcbBCuI4xeqnurwz4=;
        b=au3fwVzB7Kj+58Gt+YAQ2BXv2SiFDLDNpZMZaieQv+PbuZq9+JNway3ar0lojcbAby
         jC8Uk/cawt0/ybU4vIKB4TVmjqcDexIR25E6Mzm4dNPwBcWx/FigiRe+7gMdW8Y4ZW6B
         b/AzCASbjAycNgOmX1nTZgTfM/wPE5o1986zcfghj6T6pcizmusNOFxJov7jldP8zOmG
         5VUO+uDTzJybSsEvMJ4xRzRa7/7lv7QF7r1N015tEGcke2x6SLYUefGuJ33ep0Ii/uZ6
         ZB8kP3u2LhiacIsnRaUZUDQtUJk9h9bg+eRRjCmyUE2r4s3oyAh1eMV0WD3KIgjfp8XS
         qHfw==
X-Gm-Message-State: AOAM533ooOJvFl5LScDow5w8DL3dS/KtQfiYpBkmNJMh6kIymNuTKmot
        vXWAP94aZZWdPodmrZOh9+Qefg==
X-Google-Smtp-Source: ABdhPJwgIhMeRmRqmykxCqA3+kGYsQRsHDqhsNpzowYN0ya0k2yp8EHb0e6cPWYLt1THYYKy56LpZQ==
X-Received: by 2002:a63:d57:0:b0:3fd:ac2b:75aa with SMTP id 23-20020a630d57000000b003fdac2b75aamr5750872pgn.533.1655236306228;
        Tue, 14 Jun 2022 12:51:46 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:82ae:1136:b202:95da])
        by smtp.gmail.com with ESMTPSA id s21-20020a170902b19500b0015e8d4eb29csm7625484plr.230.2022.06.14.12.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 12:51:45 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Benson Leung <bleung@chromium.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v6 0/2] dt-bindings: cros-ec: Update for fingerprint devices
Date:   Tue, 14 Jun 2022 12:51:42 -0700
Message-Id: <20220614195144.2794796-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series introduces a DT binding for chromeos fingerprint
devices. The first patches tightens up the existing cros-ec binding and
the second patch introduces the fingerprint binding. As there aren't any
driver patches this can probably go directly through the chrome platform
tree if Lee can ack the mfd partfs.

Changes from v5 (https://lore.kernel.org/r/20220512013921.164637-1-swboyd@chromium.org):
 * Split out to different binding file again, while using 'select'
 * Fixed examples to have required interrupts property for cros-ec-spi

Changes from v4 (https://lore.kernel.org/r/20220321191100.1993-1-swboyd@chromium.org):
 * Drop last patch that implemented driver logic
 * Drop second to last patch because it's not really needed until
   compatible is used.
 * Rolled cros-ec-spi into cros-ec-fp compatible to get all the pieces

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

Stephen Boyd (2):
  dt-bindings: cros-ec: Reorganize property availability
  dt-bindings: cros-ec: Add ChromeOS fingerprint binding

 .../bindings/chrome/google,cros-ec-fp.yaml    | 97 +++++++++++++++++++
 .../bindings/chrome/google,cros-ec-typec.yaml |  1 +
 .../bindings/extcon/extcon-usbc-cros-ec.yaml  |  1 +
 .../i2c/google,cros-ec-i2c-tunnel.yaml        |  1 +
 .../bindings/mfd/google,cros-ec.yaml          | 38 ++++++--
 .../bindings/pwm/google,cros-ec-pwm.yaml      |  1 +
 .../regulator/google,cros-ec-regulator.yaml   |  1 +
 .../bindings/sound/google,cros-ec-codec.yaml  |  1 +
 8 files changed, 132 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Craig Hesling <hesling@chromium.org>
Cc: Tom Hughes <tomhughes@chromium.org>
Cc: Alexandru M Stan <amstan@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Lee Jones <lee.jones@linaro.org>

base-commit: f2906aa863381afb0015a9eb7fefad885d4e5a56
-- 
https://chromeos.dev

