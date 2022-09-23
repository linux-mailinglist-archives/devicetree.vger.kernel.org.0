Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A355E7C8F
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 16:10:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232511AbiIWOKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 10:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232369AbiIWOJ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 10:09:58 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5005F7F3
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:54 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id a80so266476pfa.4
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=LPYKbguZc/KYKDAy5XVdCd4nJdkVt/SEkrsrImBpX8M=;
        b=EAjhOdvgjArw8sNIzQ0hUGUR5C0UY0fiqJfiosuEyKMIz+iThn3vm7sx98wNmV/jxa
         GdQAjsSLhEsVaxKT6+c1FsvRYbY76gLPkreqY9O41/mllSkEtyxhn8HuNPmNGPZe9lTy
         AdJFFWbMZpy93pAnlgHBGTx9rsCKFAnjBUug8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=LPYKbguZc/KYKDAy5XVdCd4nJdkVt/SEkrsrImBpX8M=;
        b=P1Q0dvkPo0xNXo0h8TjjnV9uc1Q8kvG0YT3V+kgnhCitco5i/RAzy4uGOpn2DFOuUN
         SThYmi7UGNXs3w+WG9eRMLqg8fGbJd1hs4mrAvT35ODbbE6/q2n7SWYJ/1mIvHju2x/V
         BmTHlZy4Q1vgSYygEBE7e4CxrdZ67wueriAUHU92zJwNmbY2n6He0a3eFbt2lOXn0iDq
         1tYgBfuCW/64Fv2AEpYz4i8ZLdY+3ZVes5PJdheCST2ZXnmb3JgCLGD6ioy2/Fnltyj8
         +9ba798jIBABXIQlj52mrkRd7OVoJ+Zwhcnv+KBo6sANYpb7WMI5N04NT4EwmxLmiGcg
         hicg==
X-Gm-Message-State: ACrzQf1MPXMKsfOPb1LkNBGlP5ArcGVV/4UjWPU6erhyXcPqoTIEzw14
        z0QiwtmjE/S20pKDD1PlzLNV2w==
X-Google-Smtp-Source: AMsMyM6PLPe54eIdKclOEZNjNZ5iwV7lzwMpeVGCZ0MgnUzMuC6AN9cMLx1aHKnMYqF/oMDRjlEgAQ==
X-Received: by 2002:a63:90:0:b0:439:befb:fdab with SMTP id 138-20020a630090000000b00439befbfdabmr7481048pga.341.1663942194478;
        Fri, 23 Sep 2022 07:09:54 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id l14-20020a17090a408e00b001fd8316db51sm1645318pjg.7.2022.09.23.07.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 07:09:53 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v5 3/3] arm64: dts: qcom: sc7280: Include sc7280-herobrine-audio-rt5682.dtsi in herobrine-r1 and villager-r0
Date:   Fri, 23 Sep 2022 14:09:18 +0000
Message-Id: <20220923140918.2825043-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.3.998.g577e59143f-goog
In-Reply-To: <20220923140918.2825043-1-judyhsiao@chromium.org>
References: <20220923140918.2825043-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include sc7280-herobrine-audio-rt5682.dtsi in herobrine-r1
and villager-r0 as they use rt5682 codec.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
index c1a671968725..c569d7a5edb7 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
@@ -9,6 +9,7 @@
 
 #include "sc7280-herobrine.dtsi"
 #include "sc7280-herobrine-lte-sku.dtsi"
+#include "sc7280-herobrine-audio-rt5682.dtsi"
 
 / {
 	model = "Google Herobrine (rev1+)";
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
index 73e24cc55a09..31a57ae5af57 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
@@ -9,6 +9,7 @@
 
 #include "sc7280-herobrine-villager.dtsi"
 #include "sc7280-herobrine-lte-sku.dtsi"
+#include "sc7280-herobrine-audio-rt5682.dtsi"
 
 / {
 	model = "Google Villager (rev0)";
-- 
2.37.3.998.g577e59143f-goog

