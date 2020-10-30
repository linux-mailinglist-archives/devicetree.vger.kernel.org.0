Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA6162A0B39
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 17:34:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgJ3Qe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 12:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726178AbgJ3Qe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 12:34:28 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DD71C0613D5
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 09:34:28 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x7so7154403wrl.3
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 09:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NMvHZyncsJAnCGJ7bRzzXbcuUxrhrDjwZNoH8hbjauU=;
        b=HczhKDcXNJEktVrJ2FWkhcM1XR/qR77jn3aPoUh+Xei/ezpJpFNNsIhvs6YwIoN79H
         4p3lC1CMuf3aw0M3gLTwRSzq60mRuiptOx+VPKdIS8OSjSTmxOU48dcpnEvfC9NhMSZj
         y1QqTsjhujEqfV7kVeKCI8waFBP/rc3xmTKy00IEOWtJ7sJmLPyZsUVaa7zyOoqGgNFu
         I9rYYgYrgBjRMaHFa085kqr2x/SuVCnBpHkVp8F4YO8VoMzw4dNp9k9nCNAw0A9o4lBQ
         FrdTdqVX+pwsCh0xTTFKV82j5e+daljKgslTcQhU1rzYv7zwWnAijNXmMfWncLftkLFC
         1a6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NMvHZyncsJAnCGJ7bRzzXbcuUxrhrDjwZNoH8hbjauU=;
        b=tq1HuEmKQKcBGYxd/xgttUj6Tv115WCrN/arrqRM1Vl19oRj9Cc2McSna2yYeFU7+F
         yUnQlABCM+LnSxMfVVx5TEC93LkduCvG5Vt6qdZWZtPVAhLZRzaRHlL/hYROxnWbb+TZ
         tt/DsxgoRysquPxIKR/SFZCm7pOXxePvydau6ONcQmcUIb6CF8AvWQ+g+f4SBxO0rVaq
         gcm2IY5qGBFKlLJM6iWrF3I6ERxOqKZBfdEqxGtPP4Jf+9KvYo211qkJ07ntwnsTipmz
         XCTgyKWRTvFIYUQNKZK2EfQksnhNXrmXtT0GoOWoF5/pWkDIDkJZnGFytPCm9c1vPzxr
         GaGg==
X-Gm-Message-State: AOAM530JT1ncVbUu/tGXgTVNZweCYCISyil24rpiXwZoQQW8ZuMlsjf3
        K4J1KGcbSszwmJ/AY2TJ96F4Fw==
X-Google-Smtp-Source: ABdhPJxQtRnmsUD/6XK3HXHT+A8ZUqi3Ua5KDsXRg8vgZWDCVYFVV1EgwEikQP9Tw33Dm7Ruxkj8ZA==
X-Received: by 2002:a5d:6506:: with SMTP id x6mr4483138wru.71.1604075666733;
        Fri, 30 Oct 2020 09:34:26 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id z6sm5031989wmi.1.2020.10.30.09.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 09:34:26 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     linus.walleij@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/2] pinctrl: qcom: Add sm8250 lpass lpi pinctrl support
Date:   Fri, 30 Oct 2020 16:34:19 +0000
Message-Id: <20201030163421.14041-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for LPASS (Low Power Audio SubSystem)
LPI (Low Power Island) pinctrl on SM8250.

This patch has been tested on support to Qualcomm Robotics RB5 Development
Kit based on QRB5165 Robotics SoC. This board has 2 WSA881X smart speakers
with onboard DMIC connected to internal LPASS codec via WSA  and VA macros
respectively.

Most of the work is derived from downstream Qualcomm kernels.
Credits to various Qualcomm authors from Patrick Lai's team who have
contributed to this code.

Srinivas Kandagatla (2):
  dt-bindings: pinctrl: qcom: Add sm8250 lpass lpi pinctrl bindings
  pinctrl: qcom: Add sm8250 lpass lpi pinctrl driver

 .../pinctrl/qcom,lpass-lpi-pinctrl.yaml       | 129 +++
 drivers/pinctrl/qcom/Kconfig                  |   8 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c      | 781 ++++++++++++++++++
 4 files changed, 919 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c

-- 
2.21.0

