Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFC3E736CFF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 15:18:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232901AbjFTNSz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 09:18:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231750AbjFTNSc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 09:18:32 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED8E1735
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 06:18:07 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b46b11051aso44435961fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 06:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687267082; x=1689859082;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EVOdNiEd3QtveZDzDg3FsMJG7kxU4f80fKhWvEhaEaM=;
        b=vaXlCq4mGEiZSlvEza4Habx9SP/IfH2ZIfp57+w94uElLSArC5U2D5cVcE1HNVadKp
         NsoYpFT/T2SfnFNlbyqoEGaxgMZmpT6Mx+rDQ1MX1Jb+q8cFTFo20YCwxOl76kse0pCD
         Q1J/+sO/KVGTLLHiS1PuCr7Siy6NwN9cZm/gy8EmFDmtVDKpZJnwAy0htnUTez+pPd3Y
         8c3rNl/uAt3HxtXW/GtsxdP6lUI21W8Too/JDKyTH3et4WPJROVSFhnwSe0PP5eUFj9N
         GgSTvBJ10W6WUKC5icGx6OnVh2ruLkFET/VqkjVm/KTaXoCoI2cd9zsnAx5b6aPPmRgE
         JZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687267082; x=1689859082;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EVOdNiEd3QtveZDzDg3FsMJG7kxU4f80fKhWvEhaEaM=;
        b=if8uhX7tApBZd5IaXvIDqML65TbmOt31Dgysi2DOoJpoCCcac0IKMReZEhvCDexspE
         VHGgZ+/BAnIOs/d8ZfVjavRSzFaHTbtKGmI9/OgUPfvxQwJ3dCFG7v9+GGeKwpRvvF6Z
         zPHvO9w6chHTSQCj0GypjZTkyJD+xNtk7xNObStjT9nH0+8Za9EyFcCgdq7EV0bNMvz1
         gyEHABaMhTWVuWRaUeb6BAwDB+FgGXDdpoE3oV6TMI9T8wYDB712PGQnlSS/mAOSldNQ
         LWtoC9UHO6xGA2F9xqOair8C8YIF9IFcPoVbKGb3FC87SX0OjvAbu9kMcvvTBTF0f39K
         CNLg==
X-Gm-Message-State: AC+VfDzOs5T9I2v9SGpQswxRODVOVjMHyCANRlb+1tofEvPFMLrhyDe3
        03eHR32CgpLH1TtbdX1oa7Fh4lQnVJIMIz3m8Cc=
X-Google-Smtp-Source: ACHHUZ79ZlCn0m4GZ9VNXHrUz7bP9VIrjrMLch6qLGBufeZH5e0N65/dSWFpYQgWpd3LgCZnu0t9Mg==
X-Received: by 2002:a2e:b0f0:0:b0:2b4:8251:7c89 with SMTP id h16-20020a2eb0f0000000b002b482517c89mr3028384ljl.28.1687267080873;
        Tue, 20 Jun 2023 06:18:00 -0700 (PDT)
Received: from [192.168.1.101] (abxj193.neoplus.adsl.tpnet.pl. [83.9.3.193])
        by smtp.gmail.com with ESMTPSA id h19-20020a2eb0f3000000b002b3318c8d6fsm414433ljl.28.2023.06.20.06.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 06:18:00 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/4] A610 enablement, J606F display
Date:   Tue, 20 Jun 2023 15:17:44 +0200
Message-Id: <20230620-topic-gpu_tablet_disp-v1-0-7bb02bec8dc0@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPimkWQC/x2N0QqDMAwAf0XyvELtVNh+ZQxJ00wDpZa2joH47
 ws+3sFxB1QuwhWe3QGFv1JlSwr9rQNaMS1sJCiDs+5uJ2dN27KQWfI+N/SR2xykZkOBJsLxMfQ
 0gLYeKxtfMNGqddpjVJkLf+R3zV7v8/wDgOGlM3wAAAA=
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687267079; l=846;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=zivfHVW7lha8lc01hiAsybuK9fAUZIvzRT5Lhvc+9EQ=;
 b=vcPPYNv0dOWEXpk3byHiurjBTlH7DgDagTMg5Dw8ar23lf3hZhW/NS+ORSay13wqPOOzf/kXN
 UxEpUwQ8Oh2Cr3i68027Usz7Og5UgW04e59NBtxmC9rujiFz8/K006N
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the A610 GPU on SM6115, as well as on the RB2 and J606F boards.
Add display support for the latter.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (4):
      arm64: dts: qcom: sm6115: Add GPU nodes
      arm64: dts: qcom: sm6115p-j606f: Hook up display
      arm64: dts: qcom: sm6115p-j606f: Enable GPU
      arm64: dts: qcom: qrb4210-rb2: Enable GPU

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts          |   8 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi              | 103 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts |  65 ++++++++++++--
 3 files changed, 171 insertions(+), 5 deletions(-)
---
base-commit: 9dbf40840551df336c95ce2a3adbdd25ed53c0ef
change-id: 20230620-topic-gpu_tablet_disp-cdc6ca5941c4

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

