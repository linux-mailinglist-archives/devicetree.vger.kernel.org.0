Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9C56576E9
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:31:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232182AbiL1NbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:31:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230170AbiL1NbH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:31:07 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B27C1F5A7
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:31:02 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id gh17so38422018ejb.6
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NTKU4hQGZwLZEDf90fSvXtHVV3p1bqrikxtaOtl5vtE=;
        b=Yy1xhtDXG9AhlZlv064T+ZQxYh/c8mnOIxeBnyRVgba9qntOTId0ot+bIZTm4j/Ho1
         cTrE72G92KDbT82M59QKgah6OOPkkgQJwgKyKy4BZwObg/EiLes0TgBbVi1ngyVKCnx/
         Qzsgru8zEGqlTHxVHlvdByTZb/QMb3ujV48NxTCt4OaFrYNGfBHdIEAYudskuBkkp5XJ
         ARG/hVotqKK0WmQhEBxTjKyVcA5zQTDRQ+ehFJjDmCnHyw4f+tnmhrshnWnf5LEbO3FQ
         pK1JaOjv+tt0rAVpDw8H+U5LxEtJ7T0EpuH11/CbQabC0EfJNRx6Agrv2Nljz5BKDTKe
         dikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NTKU4hQGZwLZEDf90fSvXtHVV3p1bqrikxtaOtl5vtE=;
        b=IDYpupb+skcMkp/NXIiq96b9qYIeUHztiIhrXWQraSc23CKmpQOPUu0Q32tKs3TKim
         Dbf/eGrj+H83KYFLeTXCSR6vuz5O7j2R4K8wyv2NTiyTXB8c+nbxqKzLkisnnuVVDvaQ
         qNXlvlQ1QGO7RZF3//8/pL0UtEuWiUzuqcl/TdtDAGFN0oIn0e8aDuRM3DWrH1t1NgsB
         a/iP8nkVHkIQN8TgMqJ9UGd4pM70KsBfuNwsNKvDpG9Wh1okiMAbeizGHanTu88B+ch8
         uoYVDJNmWlOsS15xAjMILRysl4jWLuWbZht2zlzgrILo5JWMjKgaxt3R1b5b3KX0qzti
         vIYQ==
X-Gm-Message-State: AFqh2kpiihwQLNZIL6pBMSVFlVa4C75eooISY+zoKm1TQTXTSUzgoCok
        n+C3ApMvLZflVOyWSsdFC8bKVw==
X-Google-Smtp-Source: AMrXdXsLqVKQxE3F2S7zJjROiP8PY+36IsJxF97o7BGhtvcebsFiGgfCtrvYh/8//j/3GChOIlR+vg==
X-Received: by 2002:a17:907:170a:b0:7c0:daa3:b4ab with SMTP id le10-20020a170907170a00b007c0daa3b4abmr22669862ejc.40.1672234261338;
        Wed, 28 Dec 2022 05:31:01 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-85f6-04b5-1651-3b6c.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:85f6:4b5:1651:3b6c])
        by smtp.gmail.com with ESMTPSA id j15-20020a170906094f00b007add28659b0sm7541393ejd.140.2022.12.28.05.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 05:31:00 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     cw00.choi@samsung.com, myungjoo.ham@samsung.com,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        agross@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/2 RESEND] Fix pm8941-misc extcon interrupt dependency assumptions
Date:   Wed, 28 Dec 2022 13:30:56 +0000
Message-Id: <20221228133058.213886-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
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

RESEND December 2022:

Hey Chanwoo could you please pick this up ?

RESEND September 2022:
- I thought I resent these at the start of this month, can't find them
  in linux-msm I think I just sent them to myself.

  No change since July 17th

V4:
- Added suggested extra log text from Marjin to extcon patch

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
2.34.1

