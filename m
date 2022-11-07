Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0919E61EF5B
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 10:43:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231679AbiKGJn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 04:43:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231785AbiKGJnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 04:43:53 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D276613E1A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 01:43:51 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id v17so10581769plo.1
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 01:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ip8MgPKfFDk54vvUwDmf3Xk7pYaUz7i5Ph8Tn9FRB/A=;
        b=MqFxWO2pGyesyZMgeY6B6iMPYkxX2BU/pA9OqS7Xv91rkFGFcOpt33ca32yLHjqJhg
         wjLKFQeaR5xrM1PCGY465uYbXMc7NjlMI28DcNJ9IZvfRkwB99Sj6dkWEY3m64xb6z4X
         mCcVKd9otgLXJa5+lJpY4iasiHgT/ylS06A57zDlQV9t9Q0nrske2OOiO1m1bCvMFW35
         YUMj9nMt9KAyvL5l8muWBq9Oy5cFJ1o80Xe+zfR4GBJuJ5ymqt2whZ3zDrSyS5yzZ1Pr
         mh6Gfylqt6QokNmYCF0g/Mr+/US19gNMrEAnBkIjv9KIQynVn3s1mNmx6eabYtR5ITGW
         CFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ip8MgPKfFDk54vvUwDmf3Xk7pYaUz7i5Ph8Tn9FRB/A=;
        b=X1sZSv8JLq1qVxfpgB6DnwoIPGmjQEqxiBwJicUA/6GHNK638XveNspWbmXHBhYUfO
         waswFn4HCFk/EUs5YQPziVhKJrSpJpab5rGrcTpkHAXrlRY57ML0d0xFJ8u2xHohSGuY
         Vk8US1WjGN/lRzZIzd/uWqLW4bIWzW03KF3WV/QMqJIzyqA1Pb6aVnp9zgdfnFxignRr
         ficj/5nuL1EEsotv/lv8c9YKKAvfWioULKc2qEKjM22grQ62ERemrrbAmTucFpUpqvur
         aJPaHLSf782/SBK6GOWoyTbdUKY7+IRtACP7t5Ztt++PS+V9INBZlvlRgEKWr44KB1jL
         b+zA==
X-Gm-Message-State: ANoB5pnrNwxQsdXfG6ImU4h5offY3YjwxsrILCBmTFjVPHa6hJ9JlIu6
        nfTt734+4HMrjltIaLTgprbV0g==
X-Google-Smtp-Source: AA0mqf4i8VBnykbG2te+ZjdKxWU7RcOWdVCnQI2Xi1gmeO1IKxXZJNninWoAIj4H2oY6PIzDgVgYvA==
X-Received: by 2002:a17:902:c406:b0:188:69e1:1aad with SMTP id k6-20020a170902c40600b0018869e11aadmr14810808plk.92.1667814231003;
        Mon, 07 Nov 2022 01:43:51 -0800 (PST)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id i2-20020a170902c94200b00186dcc37e17sm4564936pla.210.2022.11.07.01.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 01:43:50 -0800 (PST)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v11 0/5] Add LTE SKU for sc7280-evoker family
Date:   Mon,  7 Nov 2022 17:43:40 +0800
Message-Id: <20221107094345.2838931-1-sheng-liang.pan@quanta.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add common dtsi and WIFI/LTE dts for evoker.

Changes in v11:
- sort out the "Status" property with sc7280-herobrine-audio-rt5682.dtsi
- sort out the "Status" property with sc7280-herobrine-audio-rt5682-3mic.dtsi

Changes in v10:
- add sc7280-herobrine-audio-rt5682-3mic.dtsi then evoker can include it

Changes in v9:
- new patch for evoker include rt5682.dtsi

Changes in v8:
- updated patch subjects

Changes in v7:
- goodix gt7986 dt bindings added in v7
- add compiatable for gt7986

Changes in v6:
- add removed pinctrl and align touchscreen label with herobrine board

Changes in v5:
- recover whitespace change
- new patch for Touchscreen/trackpad in v5

Changes in v4:
- fix typo in tittle and commit
- recover change for trackpad and touchscreen

Changes in v3:
- none

Changes in v2:
- none

Sheng-Liang Pan (5):
  dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
  arm64: dts: qcom: sc7280: Add LTE SKU for sc7280-evoker family
  arm64: dts: qcom: sc7280: Add touchscreen and touchpad support for
    evoker
  arm64: dts: qcom: sc7280: add sc7280-herobrine-audio-rt5682-3mic3.dtsi
    for evoker
  arm64: dts: qcom: sc7280: sort out the "Status" to last property with
    sc7280-herobrine-audio-rt5682.dtsi

 .../devicetree/bindings/arm/qcom.yaml         |   5 +
 arch/arm64/boot/dts/qcom/Makefile             |   3 +-
 .../sc7280-herobrine-audio-rt5682-3mic.dtsi   | 195 ++++++++++++++++++
 .../qcom/sc7280-herobrine-audio-rt5682.dtsi   |  14 +-
 .../dts/qcom/sc7280-herobrine-evoker-lte.dts  |  14 ++
 .../boot/dts/qcom/sc7280-herobrine-evoker.dts |  16 ++
 ...er-r0.dts => sc7280-herobrine-evoker.dtsi} |  22 +-
 7 files changed, 246 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682-3mic.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
 rename arch/arm64/boot/dts/qcom/{sc7280-herobrine-evoker-r0.dts => sc7280-herobrine-evoker.dtsi} (95%)

-- 
2.34.1

