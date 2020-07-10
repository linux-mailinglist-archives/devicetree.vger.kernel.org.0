Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E24021C06B
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2020 01:03:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727050AbgGJXDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 19:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727033AbgGJXCz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 19:02:55 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D2EC08C5DD
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 16:02:55 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id ch3so3217705pjb.5
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 16:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/bGZQukgdvxpeO9P4CSAAgyZ7LH76RJIkGY9IX/WOgs=;
        b=BcS8K872KzDafnCAvS8hTMh2QRHiwdT9K3jScaFOUPgJFjZ13VQBHt7Y2Uk6bycC3s
         gFubY3kH6dpBie7TZ00tvqwBf2YvJK8IXh9opftUX+2Lcxu5HoLJMLtS5LHH1U4GHzV8
         WUOgdIZLvuu9ghtGat46xqbYhTXSeOVqFMp/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/bGZQukgdvxpeO9P4CSAAgyZ7LH76RJIkGY9IX/WOgs=;
        b=Y11nkXK+OR5lCnRiopWvcEmhHuzkgwQXQoJc8NnYsqCH8T83UFyQjcxzlxRc4Xoyly
         KeSNubmu3BXoPMBdU2wLykxIZp+Wg1r/Co/Bl03J8Hi1ajjaRMltHzBr7mc3hpTkvOGj
         Xzxbzmjhs7/KADjBu180mL5QbhVrBcWeGxJgD0I7yv0ssl6lmHawZCgaasOCGVNRdW5N
         eKK+lj0aOh7SYlYotizy6CzvU5/0YSBaBkztYpdU7XMn2NF4YoqK5DK7NIIO6c9JgidK
         QTKD/4vvPxeK4w3/mlndpbm9IS6fgKsNZ6iK2VCU0zR7wQ4HkTtvlNCV8NdTajZDiu82
         5ZNQ==
X-Gm-Message-State: AOAM530EJGNTZstsuK3PjMHDjcKSuLCkZGlthQ68NlCZDQmsdlC9wo9e
        3UyuCORSybTPoleJunW6XF4HGQ==
X-Google-Smtp-Source: ABdhPJzVWK4kKHNQXZpw08rHhXfVuWKYJIflqz8a/l8lIEhQwXnMNLvfwBAieMzQP16Ze01ezXBUxQ==
X-Received: by 2002:a17:90a:2681:: with SMTP id m1mr7431338pje.204.1594422174680;
        Fri, 10 Jul 2020 16:02:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id my9sm7266836pjb.44.2020.07.10.16.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 16:02:54 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] arm64: dts: qcom: msm8996: Add "simple-bus" to our mdss node
Date:   Fri, 10 Jul 2020 16:02:23 -0700
Message-Id: <20200710160131.8.I7a02e4b37149190227bc03fd1027c8241d8d4f4a@changeid>
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

 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 9951286db775..e303b0e644ac 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -499,7 +499,7 @@ mmcc: clock-controller@8c0000 {
 		};
 
 		mdss: mdss@900000 {
-			compatible = "qcom,mdss";
+			compatible = "qcom,mdss", "simple-bus";
 
 			reg = <0x00900000 0x1000>,
 			      <0x009b0000 0x1040>,
-- 
2.27.0.383.g050319c2ae-goog

