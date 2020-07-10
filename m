Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFFFF21C063
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2020 01:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727007AbgGJXCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 19:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726991AbgGJXCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 19:02:54 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C47BC08E8A0
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 16:02:53 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id a14so3179781pfi.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 16:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9Qsyzl86u0xp/Q3AsfuSrATvhmR+NH14naSidgeU2PQ=;
        b=lq+MGkGphLSf5MfibDTvyQhzb4kbnr6BuiTTOfoYVXvs6hnNVAZTeS4GzeWIxArgee
         Y/DxQGYcoFo+gk/NY0IejlYOm3y/3+wSh+PT17XFNxMNb8K+oQfFlM+FQezfd3als/7y
         0D+mf6sp9cX0TEI2MsZR5iuiPVqiJ/+S4Grxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9Qsyzl86u0xp/Q3AsfuSrATvhmR+NH14naSidgeU2PQ=;
        b=QYJnbdzfp64skMhAQoUaXEALmv2yvrtR19hWINECYkLAHsw0pIOOnThPCEDCMFVVKs
         27kKRDobTkYPT7K1+HSqDoeQm/bD4YURw9ribt11osEfPtoHV7FqPjVJuqcFEemCLyoR
         wyyXObAH2GEzdh0NN8F6Vj39Y+47i/PrhJZs0zn5OCqpcJi3BDZgZ/hl3IXnf/bwbESk
         XMSpPlKhfYsGv3ZlToMF4y19u8LFu6Son8diLqnnXCtPpFlDo0+KjDCii/hl7ZbzyPv1
         aQ5CMOj3fRSRxi1lxQiILkEQMtydMqU1on+noUgXXfQ06auc8NAsHWy+XfdcHJ7d6dgP
         4wMg==
X-Gm-Message-State: AOAM532ha8prrIYNt0SeNMm5eKl4cCRV3vSrqQflCIr3PhyHu0TSw29q
        YbSiK+4w0wMfgWBw0zob3ouMvA==
X-Google-Smtp-Source: ABdhPJysOX+rXIvX5/wYSLxirccnx0NQRBQKy0k+Iygaxavdr8HbCK/P41qasElxbHYh6Os2dg4vCg==
X-Received: by 2002:a62:5a45:: with SMTP id o66mr5243667pfb.43.1594422173149;
        Fri, 10 Jul 2020 16:02:53 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id my9sm7266836pjb.44.2020.07.10.16.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 16:02:52 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] arm64: dts: qcom: msm8916: Add "simple-bus" to our mdss node
Date:   Fri, 10 Jul 2020 16:02:22 -0700
Message-Id: <20200710160131.7.I1605593efa85e3c9260e64fe51aedd0524544d81@changeid>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
In-Reply-To: <20200710230224.2265647-1-dianders@chromium.org>
References: <20200710230224.2265647-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As described in the bindings patch, this means that our child nodes
are devices in their own right.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
If this patch lands before the patch ("drm/msm: Avoid manually
populating our children if "simple-bus" is there") it doesn't seem to
be the end of the world.  The first time through
add_display_components() it'll notice that the children are already
populated and it will be a no-op.  When it gets a defer it will then
depouplate them (even though it didn't populate them) and future calls
will just populate them again.

NOTE: I have no way to test this patch, but I'm assuming it works OK?

 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 67cae5f9e47e..491362fe02ac 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1023,7 +1023,7 @@ opp-19200000 {
 		};
 
 		mdss: mdss@1a00000 {
-			compatible = "qcom,mdss";
+			compatible = "qcom,mdss", "simple-bus";
 			reg = <0x1a00000 0x1000>,
 			      <0x1ac8000 0x3000>;
 			reg-names = "mdss_phys", "vbif_phys";
-- 
2.27.0.383.g050319c2ae-goog

