Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C254D62BA6B
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:59:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233340AbiKPK71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233959AbiKPK7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:59:13 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 912FE27B16
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:47:41 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id k8so29264720wrh.1
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=By9pv5KI4gt3N0wgWU7W6vlocg/3rxVvUg00FE7dhuM=;
        b=UhFThg0Dn8KaL6+1pseQ/JMxNvZyd3jLptcmFFtllKsOhc1dzhVbuRWUQ4VZaUZ1tY
         xS3z9Sw6NqL60jR78osLZ6MOL19wAdpKOs/vEky09WxmV9sh2Bv8IqrWp7tU7BNRYCuC
         h9wrWGxf5UIQf0b8aXxlB4GUymvIvcrXPJLwxLJBUBeYMXt2NPGqE63YTPGAvtrHhaZK
         BiQZUyzQDC4ogRIHEpE5saddVt9Qx8rPvyIpeHoIq9kq/39wIOFhJKndrGaRImTKyTDD
         mPdO8QM2m9XgW60h1IMib15GReXNs6f21UdGYJ8Sum1HdOD4gDbUJmJ2aOz1xtNP5pcT
         rFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=By9pv5KI4gt3N0wgWU7W6vlocg/3rxVvUg00FE7dhuM=;
        b=hK4e3AjHrhsh979crd5yoiyW5/nL+vi0JQjuZV2kUY2Yho7fik8h8EK7Cm//wg3iLi
         OYwkOfi6lRPVjXA4ycmuvxJoWyzPI2D4YyWtgFEWY4iqPZs/RHckKQ+13beBke+tC6MK
         oYy2re+8tqIbsns4uRhBwlhBeuriiiZj6DPpy0P3238pmAsZ2K+sy2WMNCmXHNPy5Y0R
         AkIOa7N3+aHV7kL7h6bNTxfip0voVgfrXlGPK2Nm2mrDMxrA1Skt5qx1AqJfspAbIVIG
         R9MuUk+krHY1W3h49a3FQZYYhqKI3LM/xOXZhecR0PcsOdYA9O42WM0IsqwvauNqV9BR
         4yDw==
X-Gm-Message-State: ANoB5plzZTVPWRsNv358Ds+kR4mEsSG8IGgRFO+6k5vCUJBVl/1XA+Qm
        hNrTtcnA2yz3/xKZ0mLN2hZTbQ==
X-Google-Smtp-Source: AA0mqf7djajqKsCdWgCtQhONAfoz9mcHtkq6R6OwrB9b7UsFy7fmxgiPOCOinK5qedG7qCOYm4fc7Q==
X-Received: by 2002:a5d:56cb:0:b0:236:d611:84e1 with SMTP id m11-20020a5d56cb000000b00236d61184e1mr13553571wrw.328.1668595660117;
        Wed, 16 Nov 2022 02:47:40 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id b3-20020adff903000000b002366fb99cdasm14674206wrr.50.2022.11.16.02.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:47:39 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH 0/9] clk: qcom: Add support for SM8550
Date:   Wed, 16 Nov 2022 12:47:07 +0200
Message-Id: <20221116104716.2583320-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds clock support for the Qualcomm SM8550 SoC,
It adds support for the new type of PLL, the TCSR clock controller
driver, support for configurable poll timeout, the RPMh clocks
and the bindings.

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Abel Vesa (9):
  dt-bindings: clock: Add SM8550 GCC clock bindings
  clk: qcom: gdsc: Add configurable poll timeout
  clk: qcom: Add LUCID_OLE PLL type for SM8550
  clk: qcom: Add clock driver for SM8550
  dt-bindings: clock: Add RPMHCC bindings for SM8550
  dt-bindings: clock: qcom,rpmh: Add CXO PAD clock IDs
  clk: qcom: rpmh: Add support for SM8550 rpmh clocks
  dt-bindings: clock: Add SM8550 TCSR CC clock bindings
  clk: qcom: Add TCSR clock driver for SM8550

 .../bindings/clock/qcom,gcc-sm8550.yaml       |   88 +
 .../bindings/clock/qcom,rpmhcc.yaml           |    1 +
 .../bindings/clock/qcom,tcsrcc-sm8550.yaml    |   46 +
 drivers/clk/qcom/Kconfig                      |   15 +
 drivers/clk/qcom/Makefile                     |    2 +
 drivers/clk/qcom/clk-alpha-pll.c              |   16 +
 drivers/clk/qcom/clk-alpha-pll.h              |    5 +
 drivers/clk/qcom/clk-rpmh.c                   |  110 +-
 drivers/clk/qcom/gcc-sm8550.c                 | 3396 +++++++++++++++++
 drivers/clk/qcom/gdsc.c                       |    5 +-
 drivers/clk/qcom/gdsc.h                       |    1 +
 drivers/clk/qcom/tcsrcc-sm8550.c              |  193 +
 include/dt-bindings/clock/qcom,gcc-sm8550.h   |  231 ++
 include/dt-bindings/clock/qcom,rpmh.h         |    2 +
 .../dt-bindings/clock/qcom,tcsrcc-sm8550.h    |   18 +
 15 files changed, 4108 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sm8550.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,tcsrcc-sm8550.yaml
 create mode 100644 drivers/clk/qcom/gcc-sm8550.c
 create mode 100644 drivers/clk/qcom/tcsrcc-sm8550.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sm8550.h
 create mode 100644 include/dt-bindings/clock/qcom,tcsrcc-sm8550.h

-- 
2.34.1

