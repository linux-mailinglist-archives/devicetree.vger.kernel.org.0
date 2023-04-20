Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE63E6E8BBF
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 09:51:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234176AbjDTHva (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 03:51:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234099AbjDTHv1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 03:51:27 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F8CD55BE
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:51:02 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so2953175a12.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681977059; x=1684569059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3CR3BI2yh9MeLdi3JYOil8h8vHlVqWBwCjOYqqG86U=;
        b=lIf/e5YKS8nTmrVf7TMWMWyQR52Ic03c7lbNZo0mxGy+dUSqXbe78BvRR5DbhE/ooI
         pIvQhgxSboPLG7uLLaSRMGAluMUOHqhOobgZGb7YCesvrIrOeN3X8JxG0xVgreDbky03
         hRylvbml+dmqJbc1f8kt6crnbMXjD5qGZRCiF/khduEQb967ks6ebFM9WGSaRNp3J2xd
         t+6s1pxaPp+FmuCwAPycn/v/1NsEYp/lmHPZBLUaA/8sKyUeT41LMq1+6BKGSCG9MEU1
         BSSgOc4kIxMGxJTeIRZDmBXvbpurtaBcu8T5fgF0sesrR7ThnPapT06/a4I5yqI1JSEA
         7C0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681977059; x=1684569059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3CR3BI2yh9MeLdi3JYOil8h8vHlVqWBwCjOYqqG86U=;
        b=Dft+H1zP6c7yYHqOS9/ybpS5DspjmskfgpuBeH9rIs7NXAGzMntKByZam1NKRQvruX
         w7d5mTR2HcUZtkfp84sNQzQFtzRUSqEHtyQjPO48MYIKvwRzstZom6n4mQEGnxeK1pz6
         ACbtjcD0cboRhwunUjbtKOJb/q/rryeH7IggZ7r62faD2+nCoRE/fA04xL1uga/6gBop
         V2o8HcjU2a3sUTWJySskEeTOjEd4KWuBLQQuyLqxO7//t/lkVLlZzaxkBw6z0ZHPo7Un
         MPZgtCjsMAtefVc6fGyCetKFA21QmPBOWUk/oA1n5Drl1sBcLm+fLvVOsng4MnQydEMN
         ycVg==
X-Gm-Message-State: AAQBX9df5UZHdckdKI02/Ihqg6Fo/xCKCg0B7awzxlo5HtHLRjlA8kRG
        MK5AmSm2kkIpxUe7DTdb6cfwTQ==
X-Google-Smtp-Source: AKy350bOJiwVxLdC5SSpXC5UbMGI4/PTUOLH1YpD9PY4uZQOwe2P0YrhvPvdc6CTlNbH+v64KNmrjw==
X-Received: by 2002:a05:6402:50c9:b0:508:3c23:ae95 with SMTP id h9-20020a05640250c900b005083c23ae95mr4611888edb.3.1681977059372;
        Thu, 20 Apr 2023 00:50:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id h25-20020a50ed99000000b00505060e4280sm447165edr.94.2023.04.20.00.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 00:50:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/10] ARM: dts: qcom: msm8974: correct pronto unit-address
Date:   Thu, 20 Apr 2023 09:50:46 +0200
Message-Id: <20230420075053.41976-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
References: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc/remoteproc@fb21b000: simple-bus unit address format error, expected "fb204000"

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 788d9540fab8..939449a0c695 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -707,7 +707,7 @@ rng@f9bff000 {
 			clock-names = "core";
 		};
 
-		pronto: remoteproc@fb21b000 {
+		pronto: remoteproc@fb204000 {
 			compatible = "qcom,pronto-v2-pil", "qcom,pronto";
 			reg = <0xfb204000 0x2000>, <0xfb202000 0x1000>, <0xfb21b000 0x3000>;
 			reg-names = "ccu", "dxe", "pmu";
-- 
2.34.1

