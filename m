Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B655159975F
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 10:36:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347612AbiHSIcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 04:32:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347253AbiHSIcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 04:32:23 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7428E990A
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 01:32:22 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id x25so3880523ljm.5
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 01:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Wsi3drafxqLS5hS9Kxb/pKatr5Z8SKnnBwYatfij3pE=;
        b=bCx2wf7Gj13i2aYFNWF1S2YJa3874Em7xBh3dz+DlznXqkiHAbqCp7Lmvx05DjVx49
         8MokVyRwI6Hu4E0Lu8oRWqg39+m/+i1cxYR3KFSIgRI6wzlcxL3L7ZWOfiJJHptW86bq
         E3qU/3lqoeyvWooRjBl5bnSjrxyBt04/9POIs+Ey7XJiprekCNEU8VggbykzRC4gjrvt
         B4RdsniibMPgWMkIoBhoyI60N1bG4NanhOdSr8UB+M/XI2vDHp+q4Ro7ogu+RsqG3ARn
         /bV1tUzvmFEd13YWxNtiZJmHjkTjyLfCKTd75MWCKqd76PFUaWiDnEC7MzIV3WaUVZCt
         3Gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Wsi3drafxqLS5hS9Kxb/pKatr5Z8SKnnBwYatfij3pE=;
        b=Z3gEPVg3ppByYzq7X5tUT5tlr63YvqEJ1FcElg6Qx1CMBIR/XDdAjAWgn73pc1JZz2
         23/CbGfkUYUKT7VyXeyz5rf5/CbWoDNgBq+ASmNTaMq+6MQbua/uRhPw5+NiJRH923Vg
         dBs5vxLDcCCpegPRMm6RLOQmq6D9BBeuSX1TJ9lP58NMT6b/jxp3yJ1U6aUd8lKj4uWH
         HC+fbrXZ5eb9uf7jwyWZLLCkjFf5ZBwO90F167HNksWsQwGkNnsWFIAQJbQU5FGTbT0T
         o1X3GQAwplwv5gN/JsjcYZb1rj+b4OgyU36glAlhOWFW1qfnskGLstwfUw37fm+Tw6Ky
         AgaA==
X-Gm-Message-State: ACgBeo1epSliSBWGY6f5FEFBoOepu2PCUImOGhwlhYU9+v2nx0lhEX5l
        17G/06KNLLRkXXnDLPeRDYSSiA==
X-Google-Smtp-Source: AA6agR6A2YcKoHFlzcNoal/jwdNC0x/6ogLThhKLnILp0GCISzgz8kd/p0I0Hfb65XJ4cujOuJ2oGA==
X-Received: by 2002:a05:651c:23a6:b0:25e:63bf:c46f with SMTP id bk38-20020a05651c23a600b0025e63bfc46fmr1901220ljb.76.1660897942256;
        Fri, 19 Aug 2022 01:32:22 -0700 (PDT)
Received: from krzk-bin.. (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id j8-20020a19f508000000b00492a54f0be1sm545355lfb.284.2022.08.19.01.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 01:32:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v3 06/16] arm64: dts: qcom: sc7180: add missing TCSR syscon compatible
Date:   Fri, 19 Aug 2022 11:31:59 +0300
Message-Id: <20220819083209.50844-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220819083209.50844-1-krzysztof.kozlowski@linaro.org>
References: <20220819083209.50844-1-krzysztof.kozlowski@linaro.org>
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

TCSR syscon node should come with dedicated compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index b82c335c25af..49f28cb531f6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1468,7 +1468,7 @@ tcsr_mutex_regs: syscon@1f40000 {
 		};
 
 		tcsr_regs: syscon@1fc0000 {
-			compatible = "syscon";
+			compatible = "qcom,sc7180-tcsr", "syscon";
 			reg = <0 0x01fc0000 0 0x40000>;
 		};
 
-- 
2.34.1

