Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2337956A763
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 18:06:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235363AbiGGQG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 12:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiGGQG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 12:06:26 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD57E31372
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 09:06:25 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-fe023ab520so25867386fac.10
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 09:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3KlngvhzlHv//Aw94U6o8uXkEGL1TJzk0ioCEsHw+Kc=;
        b=GZvWYcAh+OWZgVydsmjmbePbME9JyCG76d439vCGFfmMR8VdLPCOwSMWi8WhkkNp7w
         9Nl98EYi/ppokXWBUf6AfxaVCVoaGJUiylpZp9YylhBSDjOoc+yWQAvzxG8YJjXsIPAA
         al95Ts8eL1g8vZkmwJ4Nz+m8e3S0pW+KAPuHn3ly+VVHz0MKdDQuW/8luK5zYd6workG
         DRr6T9q3//IPZSOX9/q+IDxFjpyTupula4v92+SLrVtchNQQoE+HqxOpGqfgChpU+m3c
         yDY0uk5+6jiTInqrRZUxMGFdkH+e3h7BT8Y/Twp3W8RZXJxN61hsbMCcW5pMYuEfeWmm
         3Mxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3KlngvhzlHv//Aw94U6o8uXkEGL1TJzk0ioCEsHw+Kc=;
        b=og3DTAI8oDtpsBWdEoFNy+V3B9LZZXEgsVq7tXjehEalgo/PSFcqE6x7RKi5cV8APs
         bBHuupOo8waPTDIVwyIhFDlEDRWC4SrWF3WmHk0YZs1NalRLznfXiq0fY+knTyeSl0pl
         Z2BYqP4Qg45DbEoB1J3cu4nztdLwRAn+sRysVYSewlsJcPCnNLV+hjc9zgkbY4Pzw8Uf
         JABwKtkc2PmLXpXwkYtK6GlEYrNr37tpr8DWoN8S3HRRWlwvZgHRnDgj7Xmvo4B1gyke
         aB1ZbcXl8uBKnriINTf4+yxz06sXNTltjn6Eveiewc10RSP6XPwho/7kYow8+0Uri9dN
         Wemw==
X-Gm-Message-State: AJIora9aUQvHVSM0LwyCVo/jPZtftuLrGKlUiMPWYcVxgT7VsnlByJ2t
        RF9RE8ihJXs2ddy9Zs5Pv3TfJg==
X-Google-Smtp-Source: AGRyM1vuD9r47ZSbnPGKPZeS6dWqxyqpb3lWuImpBmJPWpgLB3c5thuSzE98szGbobbrHBIzm4S8/w==
X-Received: by 2002:a05:6870:a786:b0:fe:3c4d:6cd7 with SMTP id x6-20020a056870a78600b000fe3c4d6cd7mr3418636oao.118.1657209984240;
        Thu, 07 Jul 2022 09:06:24 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w13-20020a056830410d00b0061c1bc2c769sm239947ott.56.2022.07.07.09.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 09:06:23 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc8280xp: Add lost ranges for timer
Date:   Thu,  7 Jul 2022 09:08:58 -0700
Message-Id: <20220707160858.3178771-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

The timer node needs ranges specified to map the 1-cell children to the
2-cell address range used in /soc. This addition never made it into the
patch that was posted and merged, so add it now.

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 2bdb42c88311..37a4cd6f85b6 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1667,6 +1667,7 @@ timer@17c20000 {
 			reg = <0x0 0x17c20000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+			ranges = <0 0 0 0x20000000>;
 
 			frame@17c21000 {
 				frame-number = <0>;
-- 
2.35.1

