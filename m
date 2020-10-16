Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C406290C3F
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 21:27:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2411004AbgJPT1X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 15:27:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2411003AbgJPT1W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 15:27:22 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2870C0613D4
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 12:27:22 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id o7so2019530pgv.6
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 12:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZutnMIL/H67VpZ1xfDw9FLjDAwyBxbbGIobudgCrQiw=;
        b=ZQjOSsgcoMO2CXnhaskRO+312Zp1tq5TjmkQJljC2bw3kX+ZPV2IXzKRDk4V+yjMEY
         OpzoFsN/c/F5jFJNAnmwThYzSYjR0IHeQQ5tNjTiaBYd0ff6wi2hLkyMScSNRHF4b3I/
         MXYMr0Zp7MLr3gMMddAntXzeYVNuN83TIC100=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZutnMIL/H67VpZ1xfDw9FLjDAwyBxbbGIobudgCrQiw=;
        b=DwZrPoVH+2JAQMKhds3cqbnteDhAGpWYYF6iBPAxw+TIZuPmx98oFFs/OsMsEaQ66m
         Gy6RSvMk0E8JYFXSmLngGjgs3WgjL+irUW9BatuLmW/MUOcviBbIEdqcq9EPZ7k7WWT3
         dmSK2ID0Se5jDkFIrpYHBiKKp4MUPbf39XyP8XtBD0P2yvDoYJhuazAsgxTarYi//GxL
         BJhhTaz77sZDWwf0CTkbDNGtjoK2fIHcHnpcd6ALNSpjYqOkJTv0lXbGKkVktp7k3BhZ
         tX4eKpqAUeQW4JGRLtuOrpYWyLJOI3tAnO+TA+PT7Czf3O9tcCVFzHwOD6NOzJ2+z99W
         FWGQ==
X-Gm-Message-State: AOAM532GzgII+f1zrfIC9a6BS1nXiIpiz0sPxT6//VeSb4r7qVZjakB0
        oPyqb7Oe98hp1c7uvCpy1FiJwgavcXcgXw==
X-Google-Smtp-Source: ABdhPJzPDLW5Qh+Ws+bU1lQWYvuirtLbAiDWTvm404IMCWAvRvAa3q56OWdGjKb1in4J7nomWQ8BCQ==
X-Received: by 2002:a63:f815:: with SMTP id n21mr4540376pgh.410.1602876442423;
        Fri, 16 Oct 2020 12:27:22 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch ([2601:646:c780:1404:a2ce:c8ff:fec4:54a3])
        by smtp.gmail.com with ESMTPSA id lb13sm3566622pjb.5.2020.10.16.12.27.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2020 12:27:22 -0700 (PDT)
From:   Evan Green <evgreen@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] arm64: dts: qcom: sc7180: Add soc-specific qfprom compat string
Date:   Fri, 16 Oct 2020 12:26:52 -0700
Message-Id: <20201016122559.v2.2.Ia3b68ac843df93c692627a3a92b947b3a5785863@changeid>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201016192654.32610-1-evgreen@chromium.org>
References: <20201016192654.32610-1-evgreen@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the soc-specific compatible string so that it can be matched
more specifically now that the driver cares which SoC it's on.

Signed-off-by: Evan Green <evgreen@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 6678f1e8e3958..f1f8bbc0b37bc 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -660,7 +660,7 @@ gcc: clock-controller@100000 {
 		};
 
 		qfprom: efuse@784000 {
-			compatible = "qcom,qfprom";
+			compatible = "qcom,sc7180-qfprom", "qcom,qfprom";
 			reg = <0 0x00784000 0 0x8ff>,
 			      <0 0x00780000 0 0x7a0>,
 			      <0 0x00782000 0 0x100>,
-- 
2.26.2

