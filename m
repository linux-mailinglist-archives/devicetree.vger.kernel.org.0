Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 029C04C581E
	for <lists+devicetree@lfdr.de>; Sat, 26 Feb 2022 21:57:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbiBZUvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Feb 2022 15:51:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbiBZUvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Feb 2022 15:51:13 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51974261D08
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 12:50:38 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id f11so12041082ljq.11
        for <devicetree@vger.kernel.org>; Sat, 26 Feb 2022 12:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9eu5IDEp2t1qrOAkX38QkwgZAE/8bIDCA2vJFlWH2NA=;
        b=EFFUjEAOGcuiQpTdTeOHxDslQKrFpD0x7HJWSd5FsdPdn4jT/Rh6jmBFb+ytjgBrix
         xev6iUPoqevBpAkk/QWpxmS/UJzITkZF0GVHFqBHVMrP0yRRGUTwVCCyvQ0UmgojOgw6
         yl/ImsTxby0JKdKprdRLJ7YyWb25mUG50dm4zrvxRh3CjLvW3PBlr0mvgR0382R1513o
         CzbTwSbH9QbmWfEL/leOgGRP6kvEkORXBFSGRsXvyUKOpaLsAMAzouf5vpfnyyjWJ8tV
         /3/OQlYygQ53KNZSrNZIIsfuHmHOzJqNxGI9Syu7xT/YTUrloRRYeIL0NFGo+xbivPwv
         PHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9eu5IDEp2t1qrOAkX38QkwgZAE/8bIDCA2vJFlWH2NA=;
        b=lTmT4MmP6XzvUysLagWmZMgctjRbgbCOkVo8RWfhaS2FS1o1Bm6fb2vh18iBxl50T8
         3iGNPTfqEAndB7TzIEB4oaDedofg2omxYhlfE1U1YttANy622tCMJGJu3FuMKs12mjfR
         3k6xf8IWSm1QT9Cpdp29U+1l0ouq5C4eBsjbYCxu4ze7+zzDGriOv/qR4m2d3kUK/l8s
         QIvSmyH8s9VfrhhIKbbVuL9fLALCSUWCs3wsCGgB7jo67IwnAt9xUR2oSFUabRzHFcWw
         xLy8EILSGMM8CUHUSDJiz5BS4eW9LdWiQ3BXhLTAF+8XV1yan9ZAT/ONAZPrx84zLXTf
         SQJw==
X-Gm-Message-State: AOAM530FSEeAUU22iUioqYBcCucy6s9h4eLVuJ53D42ukkCk+7Qc+XcI
        nxW/kEcfsRJK80nSiGLp/8aJ3w==
X-Google-Smtp-Source: ABdhPJy3+xjCNaRdQ+uOGtrm9edpHH5P5ckrv+H6o6f6xL/2VfTEB461ALyxHUQ4Zylo2RBpLLUApw==
X-Received: by 2002:a2e:a41a:0:b0:246:3334:9783 with SMTP id p26-20020a2ea41a000000b0024633349783mr9564835ljn.474.1645908636529;
        Sat, 26 Feb 2022 12:50:36 -0800 (PST)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m27-20020ac24adb000000b004433bbaa3fdsm527162lfp.174.2022.02.26.12.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Feb 2022 12:50:36 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/7] arm64: dts: qcom: fix PMICs for SM8350/SM8450 platforms
Date:   Sat, 26 Feb 2022 23:50:28 +0300
Message-Id: <20220226205035.1826360-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- Add missing thermal sensors and thermal zones definitions
- For existing thermal zones stop depending on thermal_zones label,
  which is not widely present
- Add PM8450 include file

Dmitry Baryshkov (7):
  arm64: dts: qcom: pm8350: add temp sensor and thermal zone config
  arm64: dts: qcom: pm8350b: add temp sensor and thermal zone config
  arm64: dts: qcom: pmr735b: add temp sensor and thermal zone config
  arm64: dts: qcom: pm8350c: stop depending on thermal_zones label
  arm64: dts: qcom: pmr735a: stop depending on thermal_zones label
  dt-bindings: mfd: qcom-spmi-pmic: add pm8450 entry
  arm64: dts: qcom: add pm8450 support

 .../bindings/mfd/qcom,spmi-pmic.txt           |  1 +
 arch/arm64/boot/dts/qcom/pm8350.dtsi          | 31 ++++++++++
 arch/arm64/boot/dts/qcom/pm8350b.dtsi         | 31 ++++++++++
 arch/arm64/boot/dts/qcom/pm8350c.dtsi         | 32 +++++-----
 arch/arm64/boot/dts/qcom/pm8450.dtsi          | 59 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/pmr735a.dtsi         | 32 +++++-----
 arch/arm64/boot/dts/qcom/pmr735b.dtsi         | 31 ++++++++++
 7 files changed, 187 insertions(+), 30 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/pm8450.dtsi

-- 
2.30.2

