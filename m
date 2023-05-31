Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA8737172EE
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231545AbjEaBQf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233482AbjEaBQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:33 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0EAF9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:30 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f3bb61f860so6120482e87.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495789; x=1688087789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eMZeiPIi7TP7gXho3St6dgJ9AasXrJTL2jtP8YLAFi0=;
        b=iJES3Hzzswvmk70tOV0eW4Fc+P3sx1muEyTLXZc06JlECYGjtynQoDvtOKbikmotV/
         nO+NbhRgkTn3Tpod3kP8JfWxkCFvhpduXtSFVuwq+8HC3IAKuI5Ssj+IQGlDa9gzznqf
         jefY8EkqDE4rmVBnAPpUAEx984rAd+r7UlQ6hb96Fe3cWBC7bA6UJp1VUNKvkyY+6eMo
         f4yxGIZTj5f6yxB7jr1RKayQgL1evZv/fZsoh+2gB8y705u98bPa9wbt+SEuHhpXy0UZ
         uYQn7KvfPnY4rh2UiJ99ugCfU89/NZQTspL6fe/OgKLy902w/EMLPsiMopiPaWVkCfep
         cv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495789; x=1688087789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMZeiPIi7TP7gXho3St6dgJ9AasXrJTL2jtP8YLAFi0=;
        b=WHWyMQJllO2KCnn+Lh20FgV6yHsDpqsAfQBJmL/wn/m4S2QqUfdZ0GehOhAvrl8PFM
         xp5e0D8ebkxmaizdlRzSJ3PVGJ7e3MqP6WKEeuatGIQVyXG1XSAwOC3iempuNXWBTO5u
         S2z4qTTeiFnzan1IH2dBoVHvU5h5304Rt4fIVWPvfG1D3QuxkexS3cVk8/2yj14Jm8G5
         vnyWIkOGneyaBHxc0v9XifywXpWDjNmGRwIJJOBPhVUW42AFBCpjfI7ryxtGPUDT7O47
         RjHpJ8HkzBbn6SRW+FCv1maHCBGcVTnisw/azjlDrrJ/xJu8TMf2yMyv1it9tH6wI3pi
         Am5g==
X-Gm-Message-State: AC+VfDzY2re7P5WBmS7NcYtR8XzVyYvgkm/cQeoOyd0By4CSKYIAo1Q1
        +Woh7K1P+2QdoeJpTedYqWdw0g==
X-Google-Smtp-Source: ACHHUZ44SFqHBtOb4DQtt+L0gX+v2ZLGih7vIXIy0lsFJCCVeHyJoe4PDY/ARDZGUg4dr9Oipl+AxQ==
X-Received: by 2002:a05:6512:64:b0:4f4:cb4c:36e5 with SMTP id i4-20020a056512006400b004f4cb4c36e5mr1635744lfo.29.1685495787676;
        Tue, 30 May 2023 18:16:27 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:26 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 02/14] arm64: dts: qcom: sm8350-hdk: remove useless enablement of mdss_mdp
Date:   Wed, 31 May 2023 04:16:11 +0300
Message-Id: <20230531011623.3808538-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MDP/DPU device is not disabled by default, so there is not point in
enabling it in the board DTS file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index d3788bd72ac3..61dd9663fabe 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -424,10 +424,6 @@ mdss_dp0_out: endpoint {
 	};
 };
 
-&mdss_mdp {
-	status = "okay";
-};
-
 &mpss {
 	status = "okay";
 	firmware-name = "qcom/sm8350/modem.mbn";
-- 
2.39.2

