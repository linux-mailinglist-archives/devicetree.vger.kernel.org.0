Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B90D64B54E
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 13:41:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233602AbiLMMlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 07:41:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235680AbiLMMkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 07:40:18 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFEB91E735
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:38:33 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id t2so12477066ply.2
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/BF8JndXAe7RFMWzoj2II+IDSsudG7x0IX18blakTqU=;
        b=aFeUADQqf2xN9haWcEEq176sYYEkoT66D6W4F6Cc0gBcIuvjXrhMg04MXvqZEZbRFS
         aHuMSYQ9sjBA/JggARg3iYMm0U6tCKHiX252IW4BZI95aRV/0ZZ1W27hQGBSx+btTGZX
         512gTKbiWw2KgyvJzgw+33CAlNZF4ztarYfF2/1w5rnY+XA+JPBBJdicdPfZGQT8Kd1M
         qdYHRUa6cXP8T7D+5pEiebcqdpQ2cJtU1gd1yL3Hmwn9wpKiMs42cgFtaEu2jAhf3blS
         /OKzz5cYnIsbSqn4up74jE8C81Q+xWks4xtS7L5U+3CkM4PRNQVEd8+CacOFZcQlMuDs
         0k2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BF8JndXAe7RFMWzoj2II+IDSsudG7x0IX18blakTqU=;
        b=iRk29rOAqS4ykcjz4whIFn+0HOWhlK0fY/0W1zhMvApdPnIrTtBHura/+j/cDROSo+
         sc+yUD0j0q8jIWEGBKRyRq/PXL/E99SOdwN0DJFSIzKOW775dB7QLKZzpe/tZQtvsqTA
         bYbvvqKGPBbDurNH0NFaffDNyD1wij7fG6xwK1nUrg0MKfegoott7DJ1a352mfBe3alU
         1+vEpS0CrETzbuxjvFmbh8GtOFHnKJVDVtP9H9gj6L7X6ZrkyRVrr01c9uq8+dNf90Ax
         oyN/KeDMenkiBWuyfxD0G5Qsbsq6T+dXvkN+VKtFDiT8VhWM4zQlaBHwVDOWUTBg6LUN
         jzKQ==
X-Gm-Message-State: ANoB5pkHlPi6V1duxccPkoTNBiV1ASJEI4kMhlwlhPnqyOHIs1o1nPd1
        2ZMAbcuNzH1Xj3mlv4ar3prM1w==
X-Google-Smtp-Source: AA0mqf5MSPjudIpNA6MAReWXCCofjZkVhmBjYKad9SStcXY7QUi9Q3DdzYkcPANTvyE8t2ry11ff5A==
X-Received: by 2002:a17:902:9b8d:b0:186:605b:7527 with SMTP id y13-20020a1709029b8d00b00186605b7527mr19263795plp.48.1670935113345;
        Tue, 13 Dec 2022 04:38:33 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id m12-20020a170902c44c00b001889e58d520sm8297011plm.184.2022.12.13.04.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:38:32 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        konrad.dybcio@linaro.org, andersson@kernel.org
Subject: [PATCH 0/3] arm64: dts: sm6115: Add USB SS qmp phy node and perform some cleanups  
Date:   Tue, 13 Dec 2022 18:08:20 +0530
Message-Id: <20221213123823.455731-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
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

This series adds USB SS qmp phy node for Qualcomm SM6115 / SM4250 SoC
dtsi and also performs some related cleanups for USB nodes.

Note that this series is rebased on linux-next/master and is also
dependent on the corresponding dt-bindings and driver series sent via [1].

[1]. https://lore.kernel.org/linux-arm-msm/20221213122843.454845-1-bhupesh.sharma@linaro.org/

Bhupesh Sharma (3):
  arm64: dts: qcom: sm6115: Cleanup USB node names
  arm64: dts: qcom: sm6115: Move USB node's 'maximum-speed' and
    'dr_mode' properties to dts
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  9 +++-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 46 ++++++++++++++++---
 2 files changed, 46 insertions(+), 9 deletions(-)

-- 
2.38.1

