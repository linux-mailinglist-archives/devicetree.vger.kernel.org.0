Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0918633CAB4
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 02:16:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234221AbhCPBPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 21:15:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234274AbhCPBPT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 21:15:19 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89AB2C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 18:15:19 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id u18so16146736plc.12
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 18:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N8PazbWxeQpma3IK9jRB0TxFsaKkwjN5cuc0b0m+m2M=;
        b=Yucta2XTHd86ALutAlq9i8vYXxo8CaGrEyvfGJ9dgeAaEvR3W6aRRqPI4kdM8RuUWy
         1po+j965cuiAM754oSDUDRwpiwHMV1yuRM4BI2k8jhzdlAVDxiN66/hxGyjuFV+DTS+O
         AfurjumWkxNMUz7cOdZk2jMrmeiESEgJT+S/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N8PazbWxeQpma3IK9jRB0TxFsaKkwjN5cuc0b0m+m2M=;
        b=DomPvuyXfiN3x/g821MbQR4VKRN2KsvgRGe/YgyYil/nqwkhHDW7JGK5oFGPgsAAWl
         X2a6LogLGjusQPvU+UrDfw8BPzW/l7Kii7U8SH3ygv84A1+IWvBho+hux75MSdzRgnLj
         drdv3byqV19C+P3LoQJ+ooF+T4iSNzh0l4ZA0Qc1mww4mqEaoQ4sEvOhj5T2xnSYzyr7
         fDl1DaIaGnxH7BkrunBIRjfriwkpjRq89QCqAFUCIEEO7Uon4Kv1ueHUB+UtMdYxQ+/S
         wh27S6DUGoPrS1UGM3PwUA9BE5C8uUZaB1jQ3/yq9NZ6AxIBRF+Okcmws/7fVOlMkzqv
         i8zg==
X-Gm-Message-State: AOAM5314Ft0lzwzSGc7mQ8HlQ+wThgL7ih3mKd4shfdnQn9LYK8kU4xi
        fvcXz0kpawF2/N1RCxlqIrXaLw==
X-Google-Smtp-Source: ABdhPJwUXEsQ6bCOeQfni68O7RS1LZO5BRxAyA+VB21PrjYoHi6CoRlKsF2rEpEQRvjV6L/PGeH+HA==
X-Received: by 2002:a17:902:e309:b029:e6:c17b:895a with SMTP id q9-20020a170902e309b02900e6c17b895amr34441plc.74.1615857319034;
        Mon, 15 Mar 2021 18:15:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:9867:b969:5d4f:e017])
        by smtp.gmail.com with UTF8SMTPSA id gb1sm811159pjb.21.2021.03.15.18.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 18:15:18 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v3 0/3] arm64: dts: qcom: sc7180: Disable the charger thermal zone on more trogdor boards
Date:   Mon, 15 Mar 2021 18:15:12 -0700
Message-Id: <20210316011516.1314686-1-mka@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We already disabled the charger thermal zone for lazor to avoid
bogus temperature readings from an unsupported thermistor. Some
revisions of other trogdor boards that are added by Doug's
'arm64: dts: qcom: Update sc7180-trogdor variants from downstream'
series have the same problem. Disable the charger thermal zone for
them too.

This series is based on v2 of the 'arm64: dts: qcom: Update
sc7180-trogdor variants from downstream' series
(https://patchwork.kernel.org/project/linux-arm-msm/list/?series=440315)

(no changes since v1)

Matthias Kaehlcke (3):
  arm64: dts: qcom: sc7180: lazor: Simplify disabling of charger thermal
    zone
  arm64: dts: qcom: sc7180: Add pompom rev3
  arm64: dts: qcom: sc7180: Add CoachZ rev3

 arch/arm64/boot/dts/qcom/Makefile             |  6 ++-
 .../dts/qcom/sc7180-trogdor-coachz-r1-lte.dts |  4 +-
 .../dts/qcom/sc7180-trogdor-coachz-r1.dts     | 13 ++++++-
 ...e.dts => sc7180-trogdor-coachz-r3-lte.dts} |  6 +--
 ...hz-r2.dts => sc7180-trogdor-coachz-r3.dts} |  4 +-
 .../boot/dts/qcom/sc7180-trogdor-lazor-r0.dts |  9 -----
 .../boot/dts/qcom/sc7180-trogdor-lazor-r1.dts |  9 -----
 .../boot/dts/qcom/sc7180-trogdor-lazor-r3.dts |  9 -----
 .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  9 +++++
 .../dts/qcom/sc7180-trogdor-pompom-r1.dts     | 12 ++++++
 .../dts/qcom/sc7180-trogdor-pompom-r2-lte.dts |  4 +-
 .../dts/qcom/sc7180-trogdor-pompom-r2.dts     | 38 +++++--------------
 .../dts/qcom/sc7180-trogdor-pompom-r3-lte.dts | 14 +++++++
 .../dts/qcom/sc7180-trogdor-pompom-r3.dts     | 15 ++++++++
 .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  | 29 ++++++++++++++
 15 files changed, 112 insertions(+), 69 deletions(-)
 rename arch/arm64/boot/dts/qcom/{sc7180-trogdor-coachz-r2-lte.dts => sc7180-trogdor-coachz-r3-lte.dts} (69%)
 rename arch/arm64/boot/dts/qcom/{sc7180-trogdor-coachz-r2.dts => sc7180-trogdor-coachz-r3.dts} (75%)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r3-lte.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom-r3.dts

-- 
2.31.0.rc2.261.g7f71774620-goog

