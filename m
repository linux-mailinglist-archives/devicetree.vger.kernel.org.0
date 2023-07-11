Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7534E74F2B3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232865AbjGKOv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:51:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232071AbjGKOv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:51:57 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE60710C4
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:51:55 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b6ef9ed2fdso95352561fa.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087114; x=1691679114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p2XsPmwSqX9Gd1WyomM6zWpuzgKDAWrgDwIrAbNMU7I=;
        b=rsu2irE1H4DrWMvUp7Lbi5cNv2peQjK2wFAaVi1AlCBW47LZuUhKBJmSyO8Q9/i8sD
         nVR+Wt2h+zrq0KNpIqvqoObhen7ZLbRN+cFzSWJ/kBtlo4aw9ocsYGQ0GdgC8QljXPtv
         ygL+FJqzVrAo7EywuGIGZfI8dAS98PbxOPSXwhJc1/ACyHp4auMPOyi4OT63gDNE8vYi
         Nhzq2h7BoPIMex64gYhD6jzohC3+Rq8TWJWY7zBPVXI7EV7F7CS5D/QZyjP/GZZqD7JM
         L0pIrCmRbe3v2tSoCrOt8bNFQoApv+iI3lTXR8GItmyoOqFG25A0kVQ6BEvNIRy2oyQ3
         GGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087114; x=1691679114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2XsPmwSqX9Gd1WyomM6zWpuzgKDAWrgDwIrAbNMU7I=;
        b=IaPYXKyNk5dUsbM6fyoTMIDV9dl0D9zvDVjqfGZLKtXogbR1y+hCPBO6Dfp960XMWT
         WB8UJLsSqcYO1fv+OCPD4sqYuntFGtEdE+0QWpcuvhPUe2sqARmsNkZ2WJYcg/EgjZUG
         jKBhjhWC8ZyNFG2lx/fp6UgjkZnOKz14xDFav85vJKfXEmPgKxJkxsVojbYFCK91dGB/
         31hXQ3Hmd0sYMQHgSiHoLhK3C5wBaVrtlTAvMqpow0Xq8aX23JPL7NItFjVcg5p06Soy
         z5LViR4YND8JqKN/Wk1S0w03SP3weAH6JGvECRHrMbosH4bPR2CiAJdz4fWm3Fvj/SqC
         3hJg==
X-Gm-Message-State: ABy/qLY1rj4V5uynP144IspL5bRC18VeZHo6XRvghE/paflgBi/5gqth
        AN6zoxjOdSMTKr57/WVU7lrO+Q==
X-Google-Smtp-Source: APBJJlEsnz+jmijOqb/3+xiSUoZqe+lJUQAWRgjneiCrf6EOnQnP3uZ2g1TWr9YlHGHSF2b40Waenw==
X-Received: by 2002:a2e:7c18:0:b0:2b6:e651:8591 with SMTP id x24-20020a2e7c18000000b002b6e6518591mr5441446ljc.37.1689087114101;
        Tue, 11 Jul 2023 07:51:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v4 00/11] phy: qcom-qmp-ufs: convert to newer style of bindings
Date:   Tue, 11 Jul 2023 17:51:42 +0300
Message-Id: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Changes since v3:
 - Rebased on top of phy-next

Changes since v2:
 - Moved status property to the last place for msm8998, sdm845 (Konrad)

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (11):
  dt-bindings: phy: migrate QMP UFS PHY bindings to
    qcom,sc8280xp-qmp-ufs-phy.yaml
  phy: qcom-qmp-ufs: populate offsets configuration
  arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 228 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  18 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  19 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  28 +--
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  28 +--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 12 files changed, 114 insertions(+), 365 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

-- 
2.39.2

