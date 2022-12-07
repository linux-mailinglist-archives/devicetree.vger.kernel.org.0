Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6DC0645129
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 02:28:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbiLGB2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 20:28:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229825AbiLGB2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 20:28:09 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9FCC51C30
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 17:28:08 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id bn5so19268944ljb.2
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 17:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PEqiDsYEiDO00tgdMLKsNoJpUA3u2krxNv3MdZBB8lA=;
        b=G0uDtaqnpjqEiACkFVKZCraxVRQrMk/rZm1nfwlPs65OWyuoBrobv5X/u/hlQUcucR
         j1g8gl6WpIXhT533NK7lthLs9X30KPV7sS/KUYXuTY3pa17NWjE1zS6e2BOOcHkpu/h6
         CMB/PI9fnhhtMlRKbTnpRrbLJOLLZBIBODRdgDdilBGIOFSJjdoPNQBpkkX7Wqat3SvD
         G6jy5aRrxzgJN8/4Kayb1Z9NkE1eT1UkQmc5NYihcXC+l6ufcy+5XwzK/treWeb8YeHm
         RloHHMxkwTzQzuA0SxyYqPRT+xEtJmrsIosHh76rS7y8BqKVAfm6X6lyzuo/81s12M56
         qAug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PEqiDsYEiDO00tgdMLKsNoJpUA3u2krxNv3MdZBB8lA=;
        b=2BZPM+aSwt4x7ZPfHsDH8FSsmDmDXk9MK42DhogcuwXcT1aHI/0NIcPYqBVH5erN3f
         qFw+ZVechRZ5D67ebWR4ukC7CFbYbBA2UoTR4VWPjmuVknd3+lQY44pCNVt6KJHIs7W9
         iGod6sZb32mTPAM+emF/ZmTWDXW7A7yEZsS606Xpxu1CDBrWM73/PhLcO8wPAEbzrSNg
         efMjnm0bAcK93DjSLxmnyfCBy6ABiusbcb2leqLvsJWT11r/gwJP+MEr3o4TbUXeMVqp
         Zu1lE/X1o4L8sbuOzNrk411ww4i1IjhUMCKProUSduoLw5M6Xah1US6fjHe9T5KbqhL4
         9q4g==
X-Gm-Message-State: ANoB5pkJRZSETJ/88cT5tHaXvZQelUimGFw/6uqnjqN3JvQWb3oCJaLv
        ZRYctx7Vud3uJNn/cRqFRHEtmQ==
X-Google-Smtp-Source: AA0mqf7c0uKsntHOJltlxGrMcnxIVrv8u68i5Na5JvQUurmk+KeB+JFW3mi912o36YvbVgzny3MvxQ==
X-Received: by 2002:a05:651c:904:b0:277:210:41d1 with SMTP id e4-20020a05651c090400b00277021041d1mr22583401ljq.507.1670376487040;
        Tue, 06 Dec 2022 17:28:07 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n26-20020a05651203fa00b004b5626ef9f4sm1461157lfq.262.2022.12.06.17.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 17:28:06 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v4 3/5] arm64: dts: qcom: sm8450-hdk: enable display hardware
Date:   Wed,  7 Dec 2022 03:28:01 +0200
Message-Id: <20221207012803.114959-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221207012803.114959-1-dmitry.baryshkov@linaro.org>
References: <20221207012803.114959-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable MDSS/DPU/DSI0 on SM8450-HDK device.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 2dd4f8c8f931..75b7aecb7d8e 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -349,6 +349,28 @@ vreg_l7e_2p8: ldo7 {
 	};
 };
 
+&dispcc {
+	status = "okay";
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l6b_1p2>;
+	status = "okay";
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l5b_0p88>;
+	status = "okay";
+};
+
+&mdss_mdp {
+	status = "okay";
+};
+
 &pcie0 {
 	status = "okay";
 	max-link-speed = <2>;
-- 
2.35.1

