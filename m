Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 979FE6CD6F4
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 11:52:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbjC2Jwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 05:52:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230401AbjC2Jwg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 05:52:36 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA471990
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 02:52:34 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id j24so15047219wrd.0
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 02:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680083552;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QP7I05xe70jVSB1QevUo3ItTmkkaasYyLn2NTliYSvU=;
        b=atzVxpI8GEB8gm5g11uJpDSamSw7m5l2Jb2gktKhjqSnEPTUXyuwdcj6bcJswvcEjd
         3P1nGdyMbGaRALyVgM5Zz/Ue4OSaFoaqZySP/4Tnar/fvfNQ2CUM+CmDjvrxHX1wakZN
         a9Q1ERG6XbGyjH+JTsnxw3OM5F7Y5RCqYm0evl/aYa9oBBxdw9MzZmRsO/2At7tSzY7H
         XtRMQ17E+z17D/gkUqMBBkfaxZKGitD4FdaCmAJ1guLBqPi+ez9dIBMbg1B5IzhOJSr4
         rtm9MpcV90RBhILrJBPsoJyB0RySuQpAzzGQeztVJGst4Vk7DG+3n5Y06/cDWwF8egDP
         MEaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680083552;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QP7I05xe70jVSB1QevUo3ItTmkkaasYyLn2NTliYSvU=;
        b=tpUoyABFEzL23ls8pjgITuVmMe/L1HfDyDlDM10GvW3kR0Z1GiYo3f2lxLcFL1RpLa
         Ot3KJFe9SoN1PR3fb2wWgdQzAqmSxZv3AXb2vRr7o78CWE0DPIz5t/QrWDvMQXrA0DqW
         7J8v0us3yL8ofK+bOvHcnkM8fsqcnor9LelMjgPRUtGbJ19YwA2OHFQ4AUg4MCI7bWGi
         prT/TRVKoC8cSl3pf0hbLkJOuvYDyEcZVvw4kOudBKap8sCr5zAeBSeuMVrqJxa1vqrY
         dF60fZtBAmtz6Taq4wuFzooP2JZuOXh+7iKtQLGc4KaUbsz0dMfQu+OoRa6adFvcWlAC
         hrxA==
X-Gm-Message-State: AAQBX9d32EXlLx9PGuLGwj7pt4fsLPWHyvrmPX6jgsKLGwgEf1VLgq7i
        q7w8MVKyUvGPu8vv9Ysk+viekg==
X-Google-Smtp-Source: AKy350aZi5UrBH5UKgpATnAonVuE25oSWIchhuM9c6JzusQ6e1+Pj0BrguFi+K5Xz7HKNthrYD7Hkw==
X-Received: by 2002:adf:eb8c:0:b0:2ce:a8e9:bb3a with SMTP id t12-20020adfeb8c000000b002cea8e9bb3amr13364022wrn.4.1680083552457;
        Wed, 29 Mar 2023 02:52:32 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id a18-20020a5d4d52000000b002d1e49cff35sm29667158wru.40.2023.03.29.02.52.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 02:52:32 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH RESEND 0/6] Add IOMMU support to MT8365 SoC
Date:   Wed, 29 Mar 2023 11:52:19 +0200
Message-Id: <20230207-iommu-support-v1-0-4a902f9aa412@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To:     Yong Wu <yong.wu@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1483; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=+MCjkFE0VqVcHeHS1WtIefZoTsrmPvOHx7BnXXT/Qlw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkJApfr1/SHi7OubRQWiKNxuTB5I62tKyq/5VwOY+P
 NJX4OBaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZCQKXwAKCRArRkmdfjHURU+TD/
 0dO7RC76+8JTfMGKJn7IIdqFMzrDsSdcN/Ws/JLku31n4A+eUHnI3JYToxEbccpwDAXTz9/B3SkqrM
 b6hoJmjCM7vHpb9ApN7Nh6VSpFi7CS0NCafl5keEWCAmJRbWLrRIOvVHY0tWOPNnvxwJ25o/gLeEfL
 6UBBrHIXqi8w7v2lX6cIcQxJVbbndFs7dQcSgdwJPVzApZ5IQx0JS4HdVWr6yS6OUHvjlbNRhwE6RK
 3zQdBFBd+Vkxy+Qft1xYAjzNJgbcIFsgghU5A3QnO6eNyOegPjANhxo2j9XpjGnpORWPMi0pxTkIjb
 oDX/OZ3R7DC/RLziyHxFi1dKpYRwbiQikHShSn7j7PE/adoSLD5d0A+T2ut01SDCT2fbz9xFxgM/kG
 QPd3WZ//kzqkhUZKzyY3UjghUF44SCkROZeUPr8reKMG2n6lbFzqrdtNj+WwtTynUTt89m69anqrbc
 4c45UsY2Ti29nRvrM4jr3mz6CP+Nvlx/lQqvypfG4Ecp2XcmHo9ctqTS8lI65NQSCBP1vRS6gsz+ys
 brVOVq5y89wmlKdrGVtuyXvXt0nA5XS7nagPFT6HWmzYrQwqX6dWkob4Ictfg8Y1PjOrQts3mUQqT4
 W6jhAxFX4AxZM9Fvc7rPlNwGtHsghUPMWC5D8seLDSdvM0beFfGGZ9G31fzQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commits are based on the Fabien Parent <fparent@baylibre.com> work.

The purpose of this series is to add the following HWs / IPs support for
the MT8365 SoC:
- System Power Manager
- MultiMedia Memory Management Unit "M4U" (IOMMU)
  - Smart Multimedia Interface "SMI"
    - Local arbiter "LARB"

This series depends to two others which add power support for MT8365 SoC
[1] [2].

Regards,
Alex

[1]: https://lore.kernel.org/all/20230203-evk-board-support-v2-0-6ec7cdb10ccf@baylibre.com/
[2]: https://lore.kernel.org/lkml/20230105170735.1637416-1-msp@baylibre.com/

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Alexandre Mergnat (6):
      dt-bindings: memory-controllers: mediatek,smi-common: add mt8365
      dt-bindings: memory-controllers: mediatek,smi-larb: add mt8365
      arm64: dts: mediatek: add power domain support for mt8365 SoC
      arm64: dts: mediatek: add smi support for mt8365 SoC
      arm64: dts: mediatek: add larb support for mt8365 SoC
      arm64: dts: mediatek: add iommu support for mt8365 SoC

 .../memory-controllers/mediatek,smi-common.yaml    |   4 +
 .../memory-controllers/mediatek,smi-larb.yaml      |   4 +
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 211 +++++++++++++++++++++
 3 files changed, 219 insertions(+)
---
base-commit: 1db7fc94e6e116f43f7bf3adb33407f21bc29fd9
change-id: 20230207-iommu-support-5e620926e42e

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>

