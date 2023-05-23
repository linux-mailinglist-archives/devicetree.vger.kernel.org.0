Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7064370DEB0
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 16:09:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231325AbjEWOJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 10:09:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237283AbjEWOJE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 10:09:04 -0400
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC83192
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:25 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2af2958db45so50374741fa.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p3KXXqilydNSJx6QX3Hgpj305X8NziePQgOUtVW2SK0=;
        b=awrh0BqWOiMn4lx3qn7o1+q0TkhqFBkzo2YEPuF0b0V2QzSJ+TaGwlAamERzgeSl+U
         DXcVOIuWuQtrmfyuqYZEhjmvZZNEgW6czIR8aImz3WTwmaEk0+3Kti1KPKvo5Lo5u3SN
         pI06QZBM9H/lyvwSvD94h9UPRQZxDNWpkXigpyVsXF5Jj8h5qXKLglfrkBqrJUhg8Nre
         T78RurSEY2XG2IKoRFh42wODb6HlkKZdPHYu8UQp6qJYaJn9JtvxC0ZCLi5igBse0mDS
         s5P5JooLOjxgukFiN13cLhVM0MP6iBhmOKgKvHKv/4cLgax+pouWNzeo+q0b7OXkL7qj
         ajfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3KXXqilydNSJx6QX3Hgpj305X8NziePQgOUtVW2SK0=;
        b=M8kQ8mDi5qRDFRg1EJqr55tL02b1QolLRSSLhkJO/AWvlnUtsnaS6ZUvdn5bEabMNt
         iaIsih7R2CWq6lo1aNtxmLyX6zZXk8pWLuBIFAEKOxEvW31syEDpb10tUqgm4kRWy5su
         So4DQRVtj29oimrTw1IT/wQdBr5Ho0adKAW1OHNOGFpIBWHa7EtB+ToYmrd5XiQWYK0r
         N2N2kuDWk2uf/4274KfevHsgQR9X1eycOTa6yoiqlvfoHLyrRb6OMGJpRz1fbrx9WHvt
         FdcrFNKeSCLjRCfd7MiUPAhlrZ6omDC8iS1XL1ILDgFO54weKcJki20WQ3ycmVxlTv2S
         CNEA==
X-Gm-Message-State: AC+VfDw8oRESkzRZ8J94h5NPndxJtXdMH+J0Y19LzrlvQXpHaOlnD5WN
        JpQ/EF0AQgsm47rIivtVayjItw==
X-Google-Smtp-Source: ACHHUZ4zUgBMgGLYTzXfn85FeLCsjP+6KNCl1xEr29QcvYTUYMdyldO+hcO99YKNm6Xqjayq7IUy3A==
X-Received: by 2002:a2e:7019:0:b0:2a7:73a2:d915 with SMTP id l25-20020a2e7019000000b002a773a2d915mr5738921ljc.5.1684850783704;
        Tue, 23 May 2023 07:06:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 00/11] phy: qcom-qmp-ufs: convert to newer style of bindings
Date:   Tue, 23 May 2023 17:06:11 +0300
Message-Id: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
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

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  18 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  19 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  28 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  28 +-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 12 files changed, 114 insertions(+), 381 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

-- 
2.39.2

