Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB0468DC79
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 16:08:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231998AbjBGPIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 10:08:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231956AbjBGPIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 10:08:17 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EB7740E5
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 07:08:15 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso11706630wms.3
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 07:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J6bqU33+r5wg1bDOt4lLxEqszJx6rRIP0ZQ1eAnNbQo=;
        b=m35BdNTGXigoajEBD4KJHI3ZEp90EO9d0j0ocCwv19eGa/XTHcYQyN/5+CNj2emnhL
         sI2OIeoZpdI+wX41Xwvp0oK/FGmmI107ZvjfdTaPPP30WmcauzYHq9IyCbIZ4/IFQ6zy
         eFPcG1Sto0/Q0qRHwO6kzlXfMTbNXLvxklBJpnirj6CgJtSNrWOF/yYfkPc3zQBP9p//
         xULyrGepehlpl8KZeYwwXB6RQGqy01SHjS9liraKG8DDLRCZARtXyzF+tAXBn1mX2LNO
         qwanuolppBC9OrtvOuhMj2K2Qgs/2enH+rMw0+Al5iPg54IU0wXgU+qxjg/XOeWelIeF
         px6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J6bqU33+r5wg1bDOt4lLxEqszJx6rRIP0ZQ1eAnNbQo=;
        b=M0kbJYYscDTH6pD3GKuQ94LBiylW+RbDGU7D+CIX+T8L3CUbOuXnv2h0jhVgVmZBdZ
         8B5gESmE6KYIGgQWBHgobF7ULZIwfg6S9pVvf7jRQk58kC5R6WKq+f55y/ulqrNdiJoe
         BBnRrpVUZEJ71ZSpI42wPiIZv0kQjPDbf7uYgZCrnZMjiQ7ZQqVBJlfLMJ17Vy5T4Y7d
         IRMrGuweJIvRrGCHUer7+Qeh9c/HgizBngGgNuqhVALydQaUaN5V68VhAX+mK2LVfXFD
         D+ehV+g8LIH2cF54cT+BhPS1MUN26VMahnkRUmBPhUnLnRWEHBfjEHwVS0QX79QPYFVF
         KDGw==
X-Gm-Message-State: AO0yUKW4+3hO7VDARTdlhjF28t/BXwhSLFnn7ZMJY2TGNNq5m6xQgg4u
        qzxZPn2t04ujkwODgvJ41xLfFw==
X-Google-Smtp-Source: AK7set9cN2FNtyGytBUIe0vfKArVWGZFJQYjLm4mHZWHSROjj5/FxQ8+f62tJN76nC2GkphRpP6W1w==
X-Received: by 2002:a05:600c:3197:b0:3dc:5240:53b6 with SMTP id s23-20020a05600c319700b003dc524053b6mr3522038wmp.6.1675782493999;
        Tue, 07 Feb 2023 07:08:13 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b003db0ad636d1sm22092173wms.28.2023.02.07.07.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 07:08:13 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/8] arm64: meson: bunch of DT fixes, take 2
Date:   Tue, 07 Feb 2023 16:07:53 +0100
Message-Id: <20230207-b4-amlogic-bindings-fixups-v2-v1-0-93b7e50286e7@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAElp4mMC/x2NSwrDMAwFrxK0rsCV2wZ6ldKFP4ojcJVgk1AIu
 XtFlzPw5h3QuQl3eA4HNN6ly6IG18sAaQ5aGCUbAznyjtyI8YbhU5ciCaNoFi0dJ/lua8edkCf
 ymUZ6JH8Ha8TQGWMLmmar6FarybWxLf6nr/d5/gC1bdjNhAAAAA==
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Yuntian Zhang <yt@radxa.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a bunch of fixes against the current applied and reviewed bindings.

More DT fixes will be needed when full dt-schema conversion is done.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (8):
      arm64: dts: amlogic: meson-sm1-bananapi: correct usb-hub hog node name
      arm64: dts: amlogic: meson-gxm-s912-libretech-pc: add simple connector node in fusb302 node
      arm64: dts: amlogic: meson-axg-jethome-jethub-j1xx: remove invalid #gpio-cells in onewire node
      arm64: dts: amlogic: meson-g12b-radxa-zero2: fix pwm clock names
      arm64: dts: amlogic: meson-g12b-odroid-go-ultra: rename keypad-gpio pinctrl node
      arm64: dts: amlogic: meson-s4: fix apb4 bus node name
      arm64: dts: amlogic: meson-sm1: use correct enable-gpios
      arm64: dts: amlogic: meson-gxm-s912-libretech-pc: remove unused pinctrl-names from phy node

 arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi  | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts      | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts          | 6 +++---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi                       | 2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi             | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi               | 2 +-
 8 files changed, 12 insertions(+), 10 deletions(-)
---
base-commit: 49a8133221c71b935f36a7c340c0271c2a9ee2db
change-id: 20230207-b4-amlogic-bindings-fixups-v2-ef23d2726c35

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

