Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD0164B528
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 13:29:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235679AbiLMM3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 07:29:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235680AbiLMM3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 07:29:06 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD4D41DA79
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:29:04 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id r18so10291340pgr.12
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6B2uCXhwS8UcOxHSVMu84gj0hLuyx0nL5YZCYMXlNbI=;
        b=GxvydUusQloT11Q4kIxBsIZkyi+0z3i9DcsvxchXOG9AMb18+uEjdmO/sM6vCWz9TP
         ww57Jhgx8llazHhg1dVP07lRvY6PM5+PIJqLTfF7vNhhkVyXCuQBkQ6h/Fz3CGh3URjW
         BIW3rEsTIM/Yo+usn28sAJ0jZaYAsu1OfnIm5J6qG0RS/6a7y4f33EYFtvzxYxNVFAmG
         cp3rR+msN/qGgx5JQbKrqHSRyxdmg4BIxah7HWcuP930UD/lsMa5JvU2bWc0j2Ns8zZv
         gbMvk63mH/lyniuw1Sopq277j/Kq4S1zMwE+g5Dc6hYlBLNIJbpmYvdxADpV4Ndr65KS
         bPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6B2uCXhwS8UcOxHSVMu84gj0hLuyx0nL5YZCYMXlNbI=;
        b=ZSG8iHPgp7PjOlzDExSWEWFeo5OUuepGIqHq3rUn0lYr6gd3+PsL5TBrkbGSycbFmh
         nv462qdXMm9BQ3jPng+CJYAL3dE2TClxM/FX8lP2d4rqi1oh/Un9ZhZhVz9LIIawZWfk
         3M4VLMq7EmbCnfxOEDi9qOzsGJTGDwhp9pja5HTxABKnRQmRrveErxOfXO2GgH2lnxiy
         wzR0dPm6acOCVsFG136YjYNXP+FBBgB8U3leMS5LDt6tcD2mcpwII6fvY9Jx6rusP7nt
         iLeDzTiAdJ3kyvDpX/c5ak9eUHN41trXJdbecI2v9Wu8kGzIec5Wydo7fhSG1xQ7RNzi
         h5xA==
X-Gm-Message-State: ANoB5plAxHfL41iJkiTzpfI3w2No7du+UE2y1HnKCg+qBx5JOVjDOp1+
        DZ/PHdUxwPR/2No1apfhGDpEmA==
X-Google-Smtp-Source: AA0mqf5wGzHlxevuKvZLX4cMgfWkGo5uzzVzFm6E2mKP6BYKfxRAQtuK8zx6RdswZl5YbOjEUNxqlw==
X-Received: by 2002:a05:6a00:1711:b0:576:c2f0:d6a1 with SMTP id h17-20020a056a00171100b00576c2f0d6a1mr19952530pfc.8.1670934544111;
        Tue, 13 Dec 2022 04:29:04 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:03 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     vkoul@kernel.org, linux-phy@lists.infradead.org
Cc:     shawn.guo@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        konrad.dybcio@somainline.org
Subject: [PATCH 0/3] Add Qualcomm SM6115 and SM4250 USB3 PHY support
Date:   Tue, 13 Dec 2022 17:58:40 +0530
Message-Id: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds support for USB3 PHY found on SM6115 and SM4250 SoCs.

Bhupesh Sharma (3):
  dt-bindings: phy: qcom,qmp-usb: Add SM6115 / SM4250 USB3 PHY
  phy: qcom-qmp-usb: Fix QSERDES_V3_RX_UCDR_PI_CONTROLS init val
  phy: qcom-qmp-usb: Add Qualcomm SM6115 / SM4250 USB3 PHY support

 .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml   | 3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c                      | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

-- 
2.38.1

