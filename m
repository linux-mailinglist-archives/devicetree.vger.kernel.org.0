Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87EA953908F
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245045AbiEaMTd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:19:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245457AbiEaMTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:19:30 -0400
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19570813F3
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:19:28 -0700 (PDT)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
        by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220531121924epoutp01fe328317525b989ad36ae16a60c6e438~0L9dLzsAv2409524095epoutp01j
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 12:19:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220531121924epoutp01fe328317525b989ad36ae16a60c6e438~0L9dLzsAv2409524095epoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1653999564;
        bh=zDj968qjhoitzucIx3DnEJjQCteSdo3vwlysv6LRSXU=;
        h=From:To:Cc:Subject:Date:References:From;
        b=Rcqu5QftplxiB1oynE6jR4v6vjqi02W/+IKU2PKHZBAG+llKYCURr2soK4l+HneZV
         ocpdIImxKtH6b7sTwQJ6qoB2i2u2dQIkZ4BGOkChkkqJetlloif78w4tQrVoHdX2Ml
         mqm5O8Ff1doISuJUmODs6xP1bQTmdazG3nLMzqT8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
        epcas2p2.samsung.com (KnoxPortal) with ESMTP id
        20220531121924epcas2p22dbe2fab4f1ebb58cb33a7a133ca7acc~0L9cg-a8f1560015600epcas2p2n;
        Tue, 31 May 2022 12:19:24 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
        epsnrtp1.localdomain (Postfix) with ESMTP id 4LCBCt5Ctkz4x9Pv; Tue, 31 May
        2022 12:19:22 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
        epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        CC.BA.09764.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
        epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
        20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40~0L9avGv0U0523905239epcas2p1_;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
        epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
        20220531121922epsmtrp2fd1220f7607e60b77825566d394e8639~0L9auWAGR2232122321epsmtrp2X;
        Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a46-f75ff70000002624-ae-629607ca81b6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
        epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
        E1.E1.11276.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
        epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
        20220531121921epsmtip1444282c0b97a0dcce6235e94afacfc0c~0L9afl_lu1653516535epsmtip1I;
        Tue, 31 May 2022 12:19:21 +0000 (GMT)
From:   Chanho Park <chanho61.park@samsung.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 0/4] support secondary ufs for Exynos Auto v9 SoC
Date:   Tue, 31 May 2022 21:19:09 +0900
Message-Id: <20220531121913.48722-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIJsWRmVeSWpSXmKPExsWy7bCmme4p9mlJBo2PNS0ezNvGZnF5v7bF
        /CPnWC0uPO1hs+h78ZDZYu/rrewWmx5fY7WYsOobi0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
        HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
        zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUmBfo
        FSfmFpfmpevlpZZYGRoYGJkCFSZkZ0xb3sVUMJu94vxqiwbGp6xdjJwcEgImErcmzQeyuTiE
        BHYwSjyasJ4RwvnEKLF443s2COcbo8TPWfMYYVpWPbnNDJHYyyhxf81BqKqPjBLHWj+zgFSx
        CehKbHn+CmyWiEA7k8SJe3PZQRxmgQmMEhcv7WACqRIWcJT48mo+O4jNIqAq8bRlNjOIzStg
        J7Hx1HMWiH3yEhvm90LFBSVOznwCFmcGijdvhaiXEHjJLrHsXySE7SLxY80RJghbWOLV8S3s
        ELaUxOd3e9kg7GKJpbM+MYEcJCHQwChxedsvqISxxKxn7UBncwAt0JRYv0sfxJQQUJY4cgtq
        LZ9Ex+G/7BBhXomONiGIRnWJA9unQ10sK9E95zMrRImHxBSIw4QEYiVWrF/FOoFRfhaSX2Yh
        +WUWwtoFjMyrGMVSC4pz01OLjQqM4JGanJ+7iRGcNrXcdjBOeftB7xAjEwfjIUYJDmYlEd6S
        XVOThHhTEiurUovy44tKc1KLDzGaAkN3IrOUaHI+MHHnlcQbmlgamJiZGZobmRqYK4nzeqVs
        SBQSSE8sSc1OTS1ILYLpY+LglGpg8nroEXAj9dm61XJHSr79OzHrIue9ry+5xXccuhG0oH1O
        Zmbh9J8qLbUNvYU3rj6odvv+ZwPP0rLkRP9EpmjpV1Y3VaM2Gp33X7tYa9KiYy1+P1ecfH3Z
        6pvfgR3ti7+u9w1w1/3MUrfFoXbPbKni4x9SDZUyZPm/Xj8nUuvGvnqBWMGijCCPmet2R06x
        fMDVqXuE8bXCvP1Wrd52VpKeXH7bEj2niQit/liq3zf3pOe/OxvYOHMeBV47O/to/pXuVT8+
        e4XIhMx8/OGXO/+Pks4HB+7f6d/erPJUQuRtavLf6kv7Jz9M7Js7sZyVhenpKYaaxr44Ts+n
        LJ1Lnf/zfH/7cI1m+hZDHtF2EaFPPEosxRmJhlrMRcWJABXkEmMkBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBle/c1s8mLeNzeLyfm2L
        +UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
        PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlTFvexVQwm73i/GqLBsanrF2M
        nBwSAiYSq57cZu5i5OIQEtjNKLGh9z9UQlbi2bsd7BC2sMT9liOsEEXvGSUenVzOCJJgE9CV
        2PL8FSNIQkSgm0lizqZ+JpAEs8AkRok/fyNAbGEBR4kvr+aDTWIRUJV42jKbGcTmFbCT2Hjq
        OQvEBnmJDfN7oeKCEidnPmGBmCMv0bx1NvMERr5ZSFKzkKQWMDKtYpRMLSjOTc8tNiwwzEst
        1ytOzC0uzUvXS87P3cQIDmUtzR2M21d90DvEyMTBeIhRgoNZSYS3ZNfUJCHelMTKqtSi/Pii
        0pzU4kOM0hwsSuK8F7pOxgsJpCeWpGanphakFsFkmTg4pRqYJk7Q3l182yrJyqaPvftfIJvZ
        lTdTylsFvky/ZXbqQ4z7Zs2+p5cuBR28F+weM5epJeWYstGbqJOV+p7uZ+XyGTx1jF6x5D5V
        0CnTerZ04p3avycyHujZx4YsX98zpfKp6EWzpXVTbDcaOvw0mLFk0XlFW6W1DCu0nq/eK5Ts
        /Wb6JyneCUIpEY4vlB0eLY/iWmx0W1G07HU4x4IdM8/fLbdlMuX0qDk0/4X5A8PCibxela27
        ao6/YY9S0L/9L/XW6qbpE7+2KrRs3lNqzBH4wOLHFa71fp2Wf75MZc/cXl9mZp9aml9vZlJZ
        2nNQr7mS6dKbUE6+7Nb3b0N19n7vUmvy2GT3ZzWDRPv64v9KLMUZiYZazEXFiQBWfLjh1AIA
        AA==
X-CMS-MailID: 20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40
References: <CGME20220531121922epcas2p1441278a45ff7ed662e6ec3474869bf40@epcas2p1.samsung.com>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To support ufs #1 for Exynos Auto v9 SoC, we need to control its own pmu
register. So, we need to specify the offset of the register via an
argument of syscon node.
Regarding UFS HCI driver, we need to specify different sysreg
configuration for UFS #1's io coherency setting.

Chanho Park (4):
  dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as phandle-array
  phy: samsung: ufs: support secondary ufs phy
  arm64: dts: exynosautov9: add secondary ufs devices
  arm64: dts: exynosautov9-sadk: enable secondary ufs devices

 .../bindings/phy/samsung,ufs-phy.yaml         | 13 +++++---
 .../boot/dts/exynos/exynosautov9-sadk.dts     | 18 +++++++++++
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi  | 32 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  7 +++-
 drivers/phy/samsung/phy-samsung-ufs.h         |  2 +-
 5 files changed, 66 insertions(+), 6 deletions(-)

-- 
2.36.1

