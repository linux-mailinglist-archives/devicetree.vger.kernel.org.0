Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0DAB34CF9D
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 14:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbhC2MBT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 08:01:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231464AbhC2MBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 08:01:03 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA07C061762
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:02 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id o126so18068908lfa.0
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TnkWF/fJb3+MN0k+LniOlBuYB58LfW58mHqJqX+URIE=;
        b=YWvnaqdDXdIvbYpFm/slhDkvN3LNK4FN0Q/Aj1+TPdF1Z+zz0FJSdlGM17Z1UoaQ0i
         e4825ouP+bSWh86Lc7qeL5qi1kd5J8p/H9sgDVqIizNxJYX/GVfpylSUTj05LhNbsdMy
         kfwbU9bzZmGvNrvrmp3VkgCQOVNBzBgS65PpLUgUqIXuBmd0oCjs+zJ0Xf6ntmf/xu9L
         0YPxkK23VFjUIi0+K5MldB/rLDyYdPckzEQT+bVAemiCTZBLBxAvtMY1HxO/kUiVEOqk
         vZgBNdADKEM2BAbzIJxi+UvJv2z2N+EhAXLiH5G4N0EpCxhmdmrXqZA2oTmCqZOXTTaD
         h1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TnkWF/fJb3+MN0k+LniOlBuYB58LfW58mHqJqX+URIE=;
        b=LwHH28/h/DYHYm1NKk3o5kiudkWArBnlr0UPowtbp/mFDjpNjwOde6DB9GPvtG5haT
         GDqiWWZWsV61eCakwyUX9hhqXV2nwVIWAbBZYt6b/7W8LZFXamVBdQJhlGQaBG8k9p46
         6SKqXfm04oICBLa5+W12pkowhf4+AmnZsdvaWax5xR4meVQ7x3CtxQFPtb0dDfkc6RwM
         zqKN3SaO4I06Go2WB+Tvh+hCg5uUs2+qcdHK5RySqayVWZrLZAQjw1LJMEdal+PnPbnv
         CVg3gmp0s6Rl+bcq5ws4XJQIyqze6D2x5G1xx3pKxEUkOeJzBphnpImFy54OV1qMlUcO
         n4Tw==
X-Gm-Message-State: AOAM531OCgmLNnx7ET9cO4d5PuoqrRbhL33eth8AGxPVF6MlEPUejUWj
        vgZoQYgu++93QdfV2ZZ+CVS4DQ==
X-Google-Smtp-Source: ABdhPJzvvEcuDdin+Rl6Z1zLKQZ88UPWFkNSXMU6UzLLhPOlRygjEWDdGE4qOxIihheaK6HYJSsBgQ==
X-Received: by 2002:ac2:4dbb:: with SMTP id h27mr16954400lfe.634.1617019261533;
        Mon, 29 Mar 2021 05:01:01 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d8sm2415240ljc.129.2021.03.29.05.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 05:01:01 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: qcom: sm8250: fix display nodes
Date:   Mon, 29 Mar 2021 15:00:51 +0300
Message-Id: <20210329120051.3401567-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Marek <jonathan@marek.ca>

 - Use sm8250 compatibles instead of sdm845 compatibles

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 32f0d6a82457..693ac533f9b6 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2323,7 +2323,7 @@ usb_2_dwc3: dwc3@a800000 {
 		};
 
 		mdss: mdss@ae00000 {
-			compatible = "qcom,sdm845-mdss";
+			compatible = "qcom,sm8250-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
 			reg-names = "mdss";
 
@@ -2355,7 +2355,7 @@ mdss: mdss@ae00000 {
 			ranges;
 
 			mdss_mdp: mdp@ae01000 {
-				compatible = "qcom,sdm845-dpu";
+				compatible = "qcom,sm8250-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
 				reg-names = "mdp", "vbif";
-- 
2.30.2

