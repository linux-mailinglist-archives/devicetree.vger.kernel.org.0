Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 801D526B70D
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 02:17:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726914AbgIPAQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 20:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726399AbgIOOYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 10:24:55 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 273DBC061788
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:24:10 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id o8so5320123ejb.10
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hdIlY1DMQa6xWQ6TOTopEmK8Mk3bArQLeIZPYRdF+MY=;
        b=cD2Bs7MX5CaMjdT1RGSQP9QjtU0jyd1+ezIHcOrMzjVXXu9EYL+A4L26g++gbDz+66
         V7/ikz3zTXW43pA5cStDWuOIrOULlehaNS0tp8qYe9Cx9+YKDAAswfxwo90YUtYlKwDB
         D4vKWMp0qC7KIf1xo67rwUB0p2TFinGOdfW0rMYd5fg8OTQEYRheaBeOrGekiNZimU1T
         OwOcoe3kxAygpfHMp6pwqVWnMJDr9U2OaZF/RPB7IKDkvDTk7CJVqGoJu98Sr3pjjjVS
         7uxvJBBvhLJbH3URKKet+RxrTa4LIwL7GXG/gP3uFguK8+zuMX1W+zIZupBefTXZKf5t
         pZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hdIlY1DMQa6xWQ6TOTopEmK8Mk3bArQLeIZPYRdF+MY=;
        b=plw4GEE5LWBET8uKoO6GKLmmje9usr2Mk5KoNSBaEtvjDwpRBuCLXUomlw0HTIdXe6
         ChTiYGuV2DBfGoxtqJnCl9vdhgPgtMEEhEGJgSJhufBDlZABgIyaBdiI/5JoYoxaC+HR
         XlTjdFMeGWjWMdkXDZqMkL+nRiS3fMYNvcKeZGBg7JLsdTD5a7Ns10Jx8gS7Yp22y/6g
         b0PrLIC/pv0ViShhh6lSP9oiwUIe8/v2Cu1fpy0CnW0Xd5rNONhs9CFWrpF2qB7PqUdk
         OwqyxBqL9xCSmT/W/CjpukYgwnJnYlG3JuydY64PwoS4XDpAcA/nkUIM3Squ5BUnmWtT
         TlDg==
X-Gm-Message-State: AOAM533ZGfANTseYVNDSVCsSO2Shg4SN/JUaDQw91c+rM19QSXp8Docl
        +SK+6NYPs3QGAOKVydwn74gqaA==
X-Google-Smtp-Source: ABdhPJxxPQqo+SY2oLP3bGkJn5qMdGtI+WtpT8UWcDElnzK3m58LblbwEe5kthpZiMZYWa9Lpnk8Yg==
X-Received: by 2002:a17:906:9416:: with SMTP id q22mr12933333ejx.82.1600179848730;
        Tue, 15 Sep 2020 07:24:08 -0700 (PDT)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:d196:1215:6121:1cc7])
        by smtp.gmail.com with ESMTPSA id n14sm12096001edb.52.2020.09.15.07.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:24:07 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@linaro.org>
Cc:     Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v1] arm64: dts: qcom: msm8996: Add VFE1_GDSC power domain to camss node
Date:   Tue, 15 Sep 2020 16:23:16 +0200
Message-Id: <20200915142316.147208-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As the MSM8996 has two VFE IP-blocks, and each has a power domain,
both of them have to be enabled. Previously only the power domain
of VFE0 was enabled, but not the domain for VFE1.

This patch adds the VFE1_GDSC power domain to the camss device tree
node of the MSM8996 soc.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 9951286db775..df6e1b246a19 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1009,7 +1009,8 @@ camss: camss@a00000 {
 				"ispif",
 				"vfe0",
 				"vfe1";
-			power-domains = <&mmcc VFE0_GDSC>;
+			power-domains = <&mmcc VFE0_GDSC>,
+				<&mmcc VFE1_GDSC>;
 			clocks = <&mmcc CAMSS_TOP_AHB_CLK>,
 				<&mmcc CAMSS_ISPIF_AHB_CLK>,
 				<&mmcc CAMSS_CSI0PHYTIMER_CLK>,
-- 
2.25.1

