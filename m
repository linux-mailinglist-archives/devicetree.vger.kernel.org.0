Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91F166F3049
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 12:58:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232255AbjEAK6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 06:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231438AbjEAK6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 06:58:42 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CD919D
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 03:58:41 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1aaf706768cso6745755ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 03:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682938720; x=1685530720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=agB2JVlLm7qatGarskVqXIUTBDa1pDkkSP4B/2AFuxQ=;
        b=WXUwsiJRouuAC3y9DIr8jQWoR0zDOAlNmlecjvFJQREaW+r0SrC+jwp1Q7MuJS1fj4
         gUuIfCr8h8bEn6udxWzBB2KMY8aFCEtDE196mnqGs8+E3yR5fOfJobLJvf9Sr9lqZUXF
         mGjtahs9dkBP9iMFuU4yIVT010QyhQFfNiFBzWZD3BHvs2QR3pszxP5NF2T77kY44RIZ
         RnmSQi04t7q8RRbjibyMuFkAtZqdS2tMlDTNXxdBj/hHfeYizQNW6KYvprXySgyMvuhV
         x/7GT9+xBvG6s77F4e20iXENsUy9jt55nHd8Lt7DY8KIJByc9VjZKw5+APeqGk8o78Sl
         DmkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682938720; x=1685530720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=agB2JVlLm7qatGarskVqXIUTBDa1pDkkSP4B/2AFuxQ=;
        b=FX0b4XxuTGBobNCStoekcjbxb7riy3p3caF2y0DJqtFlw24txWXd8xVlXwJrjtqEx8
         Ajjrv00JQFkRhoJdERxoRlZmWM+6q0awRDY+Z5mwJSIhD59ttsOkNWKOG68oYFn3v/0C
         FwbEzSkDdOCtVTKtP1JSCBox7ok0fyNqt6/WvIUTG+yIIuer9jJ5ZIwM0Le9tGCSj6Kh
         YytUic+/SE6eG4fZfpGZmsclCej7I7yQs5/9cmaRj0NxbMjJo6x+VcrKnEvzsEwbYNQf
         OWleHPwrU6becdFwJimD7BqJ8Ekw4dnXLk+V5r+0XyIWPDzdtru/2EFzaYKD+OHiydA9
         r7tw==
X-Gm-Message-State: AC+VfDzMn55IrtQIuHXRdgokZR90iIxgAdvhDtG/Uzg1Oqkq18l+ANaD
        O7rLc6h4GZWV0WVbsI4vzemipA==
X-Google-Smtp-Source: ACHHUZ49wOIVT6FmNHeEg4ymKVi5J7feR6/bqFdRXKqDD7+vHGcrDsUuUlZgkQm3gS0Xtk9y++XcNQ==
X-Received: by 2002:a17:902:868a:b0:1a9:6183:f965 with SMTP id g10-20020a170902868a00b001a96183f965mr13732927plo.60.1682938720604;
        Mon, 01 May 2023 03:58:40 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id c24-20020a170902849800b001a50ae08284sm17569516plo.301.2023.05.01.03.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 03:58:40 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: qcom: QRB4210-RB2 board: Enable more peripherals
Date:   Mon,  1 May 2023 16:28:29 +0530
Message-Id: <20230501105832.1185477-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v1:
-----------------
- v1 can be seen here: https://lore.kernel.org/linux-arm-msm/20230501102035.1180701-2-bhupesh.sharma@linaro.org/
- Converted the SDHC2 CD gpio fix into a separate patch as
  suggested by Krzysztof.

Add the default and sleep pinctrl states for SDHC1 & 2 controllers
on QRB4210 RB2 board.

While at it also fix the Card-Detect (CD) gpio for SDHC2 which
allows the uSD card to be detected on the board.

Also enable the adsp and cdsp remoteproc nodes on QRB4210-RB2 board.

Bhupesh Sharma (3):
  arm64: dts: qcom: qrb4210-rb2: Add SD pinctrl states
  arm64: dts: qcom: qrb4210-rb2: Fix CD gpio for SDHC2
  arm64: dts: qcom: qrb4210-rb2: Enable aDSP and cDSP remoteproc nodes

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 27 +++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

-- 
2.38.1

