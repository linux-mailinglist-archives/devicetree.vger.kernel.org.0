Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B496B53C7E7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:50:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243213AbiFCJt4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243165AbiFCJty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:49:54 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF29F21828
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:49:52 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id w27so9428978edl.7
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hcskUL/YxKVHi0SJFnrMIlY4WGD3EyAiKigPR2KkRlY=;
        b=KmcNPkMHLYTQ2u4xOEzuAGzAw2BxerOp2EFO6RYMwuwAmhs9YMA9jiTMXFjdrn8B0T
         g2xc+bEd3wnfdop23wye+enxPlHLsaOhEcT1CqK5u1aOj7Cz93J2d/af8r++8M5vBBT+
         hHb6OsaFUEn/2XlkOA3e34pI0VN8UZwE99OBT2EkiQaULud/eHPWMH5umlI00c22ovGW
         MEqJ/zQXCVu5OmAJiO7udpON2xZmTfItLSe/khzE7N2ne4e4kF9B1lGPoynXMrxVsZwb
         Xik/WNi5QCCD3WfyV63eW3BewDT7q4lGVUY7+nVzVeFizOY4ircRhWHdrjTiRt5zn14H
         qPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hcskUL/YxKVHi0SJFnrMIlY4WGD3EyAiKigPR2KkRlY=;
        b=SiJPUmjeL3W+gb+ZrUKW+YiSG2kIFNvUywHV2ll7Z7ST4bfsQeX13Uz4seFtbw+Xbt
         i5B6YQ/c1Sccm8/0gx9GgwmtNz2aICp5spVk0Hn07whNJr+qlcDiI8aMx5FVBZ8KL3WH
         aUIl7wwZSRcbesx3PyXGVjwoiHCXJgIobLtnYrGz/jk/X1rqYExy0eF0v+gNqqlGM6WX
         geyIQsw7monl7rxcRQZo/NQgH7/u6sNKhU+5TCL32sLKIjEppz2hH9bcmCIGWgGFxfsB
         +e5mp+32aeygsX8Sw6NUnUYgem4XIBHgAczCXJSL6SAgGNSXhz3togcdx/ERoSgsGrG6
         eU4w==
X-Gm-Message-State: AOAM532YfWUaMrUzQ1yJluWqsaupYEgT8FwqNbkzeOCN9rZpnIxdw54D
        9cuso3vJi6Ehf/hTMwXvJqUbRQ==
X-Google-Smtp-Source: ABdhPJw1mLgVG5DL3JieRuG/BBYBbsC2SOMvJFC0jlKl5g39mhNigbnuF55FhOi7YLa8lAqCj3fVKA==
X-Received: by 2002:aa7:d758:0:b0:42d:b3ca:d647 with SMTP id a24-20020aa7d758000000b0042db3cad647mr9837164eds.63.1654249791585;
        Fri, 03 Jun 2022 02:49:51 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y22-20020aa7ca16000000b0042dcbc3f302sm3669561eds.36.2022.06.03.02.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:49:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] mmc: samsung,exynos-dw-mshc: convert to dtschema
Date:   Fri,  3 Jun 2022 11:49:43 +0200
Message-Id: <20220603094946.509919-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi,

I will take the DTS patches via Samsung SoC.  The MMC dt-bindings patch
probably via MMC or Rob's tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  ARM: dts: exynos: align MMC node name with dtschema
  arm64: dts: exynos: align MMC node name with dtschema
  dt-bindings: mmc: samsung,exynos-dw-mshc: convert to dtschema

 .../bindings/mmc/exynos-dw-mshc.txt           |  94 ----------
 .../bindings/mmc/samsung,exynos-dw-mshc.yaml  | 162 ++++++++++++++++++
 arch/arm/boot/dts/exynos3250.dtsi             |   6 +-
 arch/arm64/boot/dts/exynos/exynos5433.dtsi    |   6 +-
 4 files changed, 168 insertions(+), 100 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml

-- 
2.34.1

