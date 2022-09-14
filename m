Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B415F5B821C
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 09:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbiINHjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 03:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbiINHjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 03:39:33 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A61325E9
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:39:32 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id c198so14067572pfc.13
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=dkrAiZKiDO/9nfcsU0K36RdgA1owqPLGrCcpfF5b/r8=;
        b=wiYSOZnaqj/mhAkHPl20Mmv2JOT+FocOwx8IUKGls+woSRX089vc35qNc4jc+M7Gvr
         RqXJ4VRk8sNXmkHe36IwFMIJ/95dptQWR6OQ7fBDl/EXoNieKw002sxxvspWtKl2MPLo
         DN136BmfTTFUVOxnjBi91hA/RM3aiOzfuO6WiwiXkG7VvMk3gpajMwYzqZrY3RUfsLx2
         oJYX2DyjD9SSEDJB/QDBMeZhU1jVWRA5TdV2shQOnytGj/sqfQbcMPr+MgE2HbV4S4SS
         IUVJjNYaVN8IEvJqR5U3Yk6JifNYAxysCD0rKaGvCzIauDvJ+cKUHjNCv3p4hmj/6IfS
         4qzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=dkrAiZKiDO/9nfcsU0K36RdgA1owqPLGrCcpfF5b/r8=;
        b=uTJukGjoG0vbuyNq8VZ/TrLnfEiWIrR3cs/vDdpjmXO+6rVBk8Hi4wjDe7foSHJIhs
         PXGUED+rivmXRgr9IhcDs4RLEOkFd1qTV3TaWYKRCOjWP2YPMyR7e59xjxkiNznA1B6T
         A1y9fLMorbIQPgArn87PspmUFsoiCBHlAq5PqRnha2H7zIKZKkCd5O2ekxZYVw2UpQpY
         7Ojn12ZAyPVQc5uZ0al5+8bs67Ich2B0fg4uAY9NuRVdSbEh2ULVH0IXtn9GwdWzTiAP
         SKSEv16F8TwJUJK+z/cmd6trGuZ3+/HnyNRjXA+KxwEi1AkuyCzcszHBLZu8L2ifXMtg
         wj3Q==
X-Gm-Message-State: ACgBeo3EjTD5IBsv/qqm9KCMuAjns6JmITFkQX5Fbd6yhkLZVD1cS7dC
        ag5r0DbK/XhDaVOlaZpsO2+4
X-Google-Smtp-Source: AA6agR5gXbHlyticYxP7CDAwLn2JYlZI3h+Vec58aZjrSwErvkDa/qxiiMvD6wIRPB5mbwe2V+gH0Q==
X-Received: by 2002:a62:1bc8:0:b0:546:c62e:e84 with SMTP id b191-20020a621bc8000000b00546c62e0e84mr4599725pfb.45.1663141171987;
        Wed, 14 Sep 2022 00:39:31 -0700 (PDT)
Received: from localhost.localdomain ([117.202.184.122])
        by smtp.gmail.com with ESMTPSA id mg20-20020a17090b371400b00200b14eb067sm8530542pjb.44.2022.09.14.00.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 00:39:30 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
        steev@kali.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2] arm64: dts: qcom: sc8280xp-x13s: Update firmware location
Date:   Wed, 14 Sep 2022 13:09:22 +0530
Message-Id: <20220914073922.7145-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
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

The firmware location in linux-firmware has been changed to include the
SoC name. So use the updated location in Thinkpad devicetree.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

 * Used "sc8280xp-x13s" prefix in subject
 * Collected tags

 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index c379650e52b1..3b7943d6e164 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -554,13 +554,13 @@ keyboard@68 {
 };
 
 &remoteproc_adsp {
-	firmware-name = "qcom/LENOVO/21BX/qcadsp8280.mbn";
+	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcadsp8280.mbn";
 
 	status = "okay";
 };
 
 &remoteproc_nsp0 {
-	firmware-name = "qcom/LENOVO/21BX/qccdsp8280.mbn";
+	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qccdsp8280.mbn";
 
 	status = "okay";
 };
-- 
2.25.1

