Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56365703E5C
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 22:16:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244176AbjEOUQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 16:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245255AbjEOUQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 16:16:08 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F8D2E60
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 13:16:06 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-643557840e4so14302437b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 13:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684181766; x=1686773766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NdrXa/PlVV43Pf78fHCONHu55eewXuTj8I+Jt1XajL4=;
        b=X9UotK3nIcZR9mIfhjg25eDJxkcGD+acT07JpZEckYeI+bTkV3P9Fdkgw1EWtT9jV2
         IO63n2RSI1nMLnyHJQxSGIgS94GjNw01y7bdsmNmNkxPMWdQErTCS8eIgAf8JamBLgbq
         JYpiV390X5/1BgjzuPvK5AbSMp/lQLYT8msx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684181766; x=1686773766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NdrXa/PlVV43Pf78fHCONHu55eewXuTj8I+Jt1XajL4=;
        b=YLoJHATJ7i8WAyac0/Ip7NS1VOnjMhi/AethklyYmESnt6d/K5bNBtmVOdv9ecccZ5
         A7dbfst9CvGuEITY3AU4MorNQpvOUPQsnPTxxlM8ATEcVDEM+JfPWmzwShqJvGqdcqlw
         0eiGOylzUo+4OOVOUNC6g/fP/DrSvK+tLIieWMj0Lgi8b8BY5TIUy7XFiE805hR/WN54
         /w/ubZF6dHfkREn5pj4s+1jCsXWSPyOCjtIDsRT2H9oXVFd3ftgKipUu9fJAoTf19HXu
         Wgfz029Qu/eMEFIJ7manyrBZX4p5wn4HgRhZP5MPvHcPMuM0VG6twE64lXBxNYbfWjGW
         B5IQ==
X-Gm-Message-State: AC+VfDzTttqHchLIBVG1XfdrBuh/9+xUGfSwbYvwveYL6yvyX+CLjiBr
        1IMh8uvjDtY0PzmxAicYefSnzw==
X-Google-Smtp-Source: ACHHUZ7WrmkGpx7fG2HxU/uySV9x6q9FF5ouvQW5vcNqFi/UOINhM724hDTKdx7iOkCYhq6cqFKofA==
X-Received: by 2002:a05:6a20:7295:b0:f2:ae03:4020 with SMTP id o21-20020a056a20729500b000f2ae034020mr41711998pzk.54.1684181766038;
        Mon, 15 May 2023 13:16:06 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:9f33:9d98:277a:d4cd])
        by smtp.gmail.com with ESMTPSA id a19-20020a62bd13000000b0063f0c9eadc7sm7981411pff.200.2023.05.15.13.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 13:16:05 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, wenst@chromium.org,
        yidilin@chromium.org, Tinghan Shen <tinghan.shen@mediatek.com>,
        jwerner@chromium.org, Weiyi Lu <weiyi.lu@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Douglas Anderson <dianders@chromium.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Enric Balletbo i Serra <eballetbo@kernel.org>,
        =?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= 
        <nfraprado@collabora.com>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] irqchip/gic-v3: Disable pseudo NMIs on Mediatek Chromebooks w/ bad FW
Date:   Mon, 15 May 2023 13:13:49 -0700
Message-ID: <20230515131353.v2.cover@dianders>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As talked about in the bindings patch included in this series
("dt-bindings: interrupt-controller: arm,gic-v3: Add quirk for
Mediatek SoCs w/ broken FW"), many Mediatek-based Chromebooks shipped
with firmware that doesn't properly save/restore some GICR
registers. This causes the system to crash if "pseudo NMIs" are turned
on.

This series makes sure that we never allow turning on "pseudo NMIs" if
we are running with the problematic firmware.

The patches in this series can land in any order and can go through
entirely different trees. None of the patches are harmful on their
own, but to get things fixed we need all of them.

v2 fixes the quirk name and also moves the quirk out of the SoC.dtsi
file and into the Chromebook file. This, unfortunately, means that
mt8186-based Chromebooks are no longer handled since they don't appear
to be upstream yet. :(

Changes in v2:
- "when CPUs are powered" => "when the GIC redistributors are..."
- Changed "Fixes" tag.
- Moved from mt8183.dtsi to mt8183-kukui.dtsi
- Moved from mt8192.dtsi to mt8192-asurada.dtsi
- Moved from mt8195.dtsi to mt8195-cherry.dtsi
- mediatek,gicr-save-quirk => mediatek,broken-save-restore-fw

Douglas Anderson (5):
  dt-bindings: interrupt-controller: arm,gic-v3: Add quirk for Mediatek
    SoCs w/ broken FW
  irqchip/gic-v3: Disable pseudo NMIs on Mediatek devices w/ firmware
    issues
  arm64: dts: mediatek: mt8183: Add mediatek,broken-save-restore-fw to
    kukui
  arm64: dts: mediatek: mt8192: Add mediatek,broken-save-restore-fw to
    asurada
  arm64: dts: mediatek: mt8195: Add mediatek,broken-save-restore-fw to
    cherry

 .../interrupt-controller/arm,gic-v3.yaml      |  6 ++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  4 ++++
 .../boot/dts/mediatek/mt8192-asurada.dtsi     |  4 ++++
 .../boot/dts/mediatek/mt8195-cherry.dtsi      |  4 ++++
 drivers/irqchip/irq-gic-common.c              |  8 ++++++--
 drivers/irqchip/irq-gic-common.h              |  1 +
 drivers/irqchip/irq-gic-v3.c                  | 20 +++++++++++++++++++
 7 files changed, 45 insertions(+), 2 deletions(-)

-- 
2.40.1.606.ga4b1b128d6-goog

