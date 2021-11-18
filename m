Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96452455BC6
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 13:48:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244504AbhKRMvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 07:51:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244182AbhKRMvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 07:51:25 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D24F7C061202
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:24 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c71-20020a1c9a4a000000b0032cdcc8cbafso4705107wme.3
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tGxJYhNR1wDaDEZR9RgxRUSgwO4lM3FgflyATgU42ms=;
        b=j57Ozilf8R5QUaFhDZr4WvHZBweTwt7S/wz+5tTd4M37jzcAUOQyKxBq+SHgBvj/yf
         jOs8tJepJ6AgSry0FmCh0Q8tPjZIsH7YQMjF/hY9Je3c2zmxCxz01XAc9Bflo3H6S/LX
         zSWxBrfoUZEBRg7NwJSOkmmy6n0AUrd4SHP/iGCQdsP5NF7sBTMd35RF9uV0Yhg6rO88
         or14JRqos9rQZ5iRmxRFfKkFSk+eNaArc0kjcnjNAt/k6FYKCExQc01AysA90QMJN3gS
         SyJQFl9frMg6Vm36/D2yG4dZChpxctIRujAeTjzsg/+f+m+VzkOIgQniXSNmx1lIoSh0
         +56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tGxJYhNR1wDaDEZR9RgxRUSgwO4lM3FgflyATgU42ms=;
        b=VdaOBjnOR3kT+TfVv5KF9JSxoDQDJNu3Okpz9yhk8kQVKs8vAEBn7aX98w2Lb7N+i4
         UDBxc6J0EgSZtFGMKP0xmQrqbRz/c0n/lqnCvc2weQnIgme6ffauGJ+Rev67mZEOqvSI
         iyFKkEZHw5dMhfauDZnnONuNYhgoYcWVZBjVSwmRK/knGRZjM3sRJ8HGmrJddABgvU5F
         IRAEtDP9glgg8c4mGusdpVrO5bN5ZDvMULVXiu4rpAK23mB4kBaBpejHAFNiatOGAug5
         yushOqVW/mVWfDa/i1uzI91XB8HaVZDX1UfaYWQKyh/b7+eDmvB+fTXUmYrtbNkRI8/f
         coXQ==
X-Gm-Message-State: AOAM531/JHqHUjk9439aslcGD57K3wpRxVnWBtsoqLXUXZ9iiiG0WuTr
        zD0s16aE8/90HPggwwYtn6cz/4bprBjA2A==
X-Google-Smtp-Source: ABdhPJzAKqAckg6sG87m9s236s5Zc53+K6PmF/AwzklGvFIhO5r/VmOrbfidXFErfB1wci/DVwNItQ==
X-Received: by 2002:a7b:c050:: with SMTP id u16mr9697799wmc.82.1637239703280;
        Thu, 18 Nov 2021 04:48:23 -0800 (PST)
Received: from xps7590.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id h2sm2955635wrz.23.2021.11.18.04.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 04:48:22 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v3 0/4] Remove clock-lanes DT property from CAMSS
Date:   Thu, 18 Nov 2021 13:48:15 +0100
Message-Id: <20211118124819.1902427-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v2:
 - Stephan: Rebased on v5.16-rc1
 - Stephan: Fixed 3/4 commit message title

Changes since v1:
 - Rob: Instead of documenting and fixing the use of the clock-lanes
   property, remove it, since it is is not programmable and
   therefore shouldn't be exposed in the DT.

Robert Foss (4):
  media: camss: csiphy: Move to hardcode CSI Clock Lane number
  media: dt-bindings: media: camss: Remove clock-lane property
  arm64: dts: qcom: apq8016-sbc: Remove clock-lanes property from &camss
    node
  arm64: dts: qcom: sdm845-db845c: Remove clock-lanes property from
    &camss node

 .../bindings/media/qcom,msm8916-camss.yaml    | 10 ---------
 .../bindings/media/qcom,msm8996-camss.yaml    | 20 ------------------
 .../bindings/media/qcom,sdm660-camss.yaml     | 20 ------------------
 .../bindings/media/qcom,sdm845-camss.yaml     | 17 ---------------
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts      |  2 --
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |  3 ---
 .../qcom/camss/camss-csiphy-2ph-1-0.c         | 19 +++++++++++++++--
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 17 ++++++++++++++-
 .../media/platform/qcom/camss/camss-csiphy.c  | 21 +------------------
 .../media/platform/qcom/camss/camss-csiphy.h  |  7 +++++++
 10 files changed, 41 insertions(+), 95 deletions(-)

-- 
2.32.0

