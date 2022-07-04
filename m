Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4BF6564B0B
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 03:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232645AbiGDBHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 21:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbiGDBHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 21:07:04 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF7645FA4
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 18:07:03 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id d2so14147403ejy.1
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 18:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9YQTU+DB1S95eYR2obrum8OCj4piK278jsbnN/rrQxQ=;
        b=ZCkmPOxyrbxh/eRzc5W7NugrL7pKPmHoDEmTGVLQpOJNZtleLHPYPOWx+qFjfxvWHe
         ZG8YEAW01tN5duycR3XrqQ9TbPlIdTbnH+aWqYUrUfHnl1I154ghiKKs6n8Yh4rsVvby
         eEpR9SvKlBmzhv1ugIvbhhADejEL2qtFDJLEi09DSIynORJGTmFjQXOfOqqSCro9SYVD
         F4CfLPhOnYcNNiDMFL74EiyZ7ARVWhCTY3qgnZED6Lc1ZgwlRjBsdGc1P6HhJwRTsyh8
         q8g7K/uAQodOQTxLKXColLxE/kfLBVgZ6pax48knyVnPbmABfl+gisx5IR3JHnHlOXNh
         RhGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9YQTU+DB1S95eYR2obrum8OCj4piK278jsbnN/rrQxQ=;
        b=cyY79BMJBty9zGAXuB7FoKxf4nixG6Nn27XmyYUy6+2bK0JAjSkc61fuNaXFKxqRLN
         LfpnY1bl0rsXjeqXlYpHz9jL/KNm9B3hlrZWMY+h6tSp70fPm4WNDl2bmq1+OhUAFVaa
         rwCumpXQ527CWfD7ieQTl4anPPRcksGFjilu1tATnhKn1OIDpiui/Yhss1afRsOWox/P
         I1sFpBb7U1sCXB5lcj+93TlQlO+j4rMhotqSahoECe5ubywMMyOllaMFJtQ7jzrzk368
         wqUEWqVfYW7sgxO/rY4IpBkyfsRdhDvsH7RMx75RCqVh+hQidjFz5+xrtyAMe8IptCgK
         fJ0Q==
X-Gm-Message-State: AJIora93aXHB68ZeWJUXwpSfPavM6qSad8HHyLzHf1oFzavQG7dz9B4W
        8dsepUB2ALONDQIy0j3tmvrqQg==
X-Google-Smtp-Source: AGRyM1sjJVASDNlIa+Jpg85TcrlxhK5D4GQKn3fOa9tIeB5PdSoJbac6UJ+zuKzO3wMvDTEfBGvrng==
X-Received: by 2002:a17:906:2da:b0:712:14b:62da with SMTP id 26-20020a17090602da00b00712014b62damr25643946ejk.351.1656896822486;
        Sun, 03 Jul 2022 18:07:02 -0700 (PDT)
Received: from localhost.localdomain ([146.70.96.66])
        by smtp.gmail.com with ESMTPSA id lu4-20020a170906fac400b006fec69696a0sm13466082ejb.220.2022.07.03.18.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jul 2022 18:07:01 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        myungjoo.ham@samsung.com, cw00.choi@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        stephan@gerhold.net, marijn.suijten@somainline.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v3 0/2] Fix pm8941-misc extcon interrupt dependency assumptions
Date:   Mon,  4 Jul 2022 02:06:57 +0100
Message-Id: <20220704010659.223596-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
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

V3:
- Adds a cover-letter since we are now doing two patches a dt-bindings fix and
  platform_get_irq_byname_optional fix.
- Add Review-by -> Rob Herring, Marijn Suijten
- Add additional patch to negate warning when one of usb_id or usb_vbus
  is not declared in the platform DTS.

Bryan O'Donoghue (2):
  dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
  extcon: qcom-spmi: Switch to platform_get_irq_byname_optional

 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 drivers/extcon/extcon-qcom-spmi-misc.c               |  4 ++--
 2 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.36.1

