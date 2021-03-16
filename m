Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E986333DAC4
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 18:21:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239134AbhCPRVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 13:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239183AbhCPRUr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 13:20:47 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 652FDC0613DE
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:39 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id w18so22504237edc.0
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iW1Mo0snzu57fgRZmoRiaaFH2x3HHvb/t9DylSyqSd4=;
        b=uDAVN1ubdXGM7PW+g6GtSW8A34sXrpgfqXsxWlq++dqEGg83ADPPEIvRX9gnzn/leg
         dE52eVtNZCyiVX4xtLDJzd+pBN9FWIRCY9STTw+/0BLaqLFh0KHl4eShQmUBcYV4+1JP
         zqi5NgrzuyMYpKYjoXiHaAjIttTgPdk/K3xQEFCjrGUjkO3+P24GbDmnyNLeSQBAgJBA
         L2uHa7J5QjOG0AU4u77Xk8NTg2xPZK1BeOVJqEZgn2E8qWn1adtpndWNVRahHEyacHQc
         RuZ3XiEYghQLNSGCLV1/ljQpfCadppMh4CuGDH3j7GEjAZlKZsPnio6dyj06r3MPuhYA
         V0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iW1Mo0snzu57fgRZmoRiaaFH2x3HHvb/t9DylSyqSd4=;
        b=Dc8hrvZVKWKAHVkUKako8/ALhGrmm/QIN4v4xRd7R1x4gXSPv6NgMjf6LR4HAiU630
         QbQdQFEZSh9wbi7aFYkUCbKIaJXJ2Y0dklJcwYbf57f70EJ/ifZvh5E9uYfmKsxDgIXh
         zPgEphmOAX+XgW8lkPZMMsZllO7+8XUoV7mxurq9OZMs5r4UaDU+SmJhTSEGnRblfTeR
         syd5RLdv0/MsFyz2jjQ0Glz4Ay1N/e7l1SPeCHnFslbBLUKWa7gEHbwQXv/pf9LNfUJK
         dKvfaM6hiZxTYdk4jtOipmHM6aYR5OgNkQaXwhn1zO6iukmv+at371O/yUQNI5kKWWMe
         HfLQ==
X-Gm-Message-State: AOAM532mmqNCcar7ou85eVrLJmIzfjY6EP/V4Y7oG2PkF/K+tiLnXfGU
        9Xiv9ubXEflV7AQ3LuWa7WRFpA==
X-Google-Smtp-Source: ABdhPJx6PdbjoOS/whT2hCzCaIzwlUr58XkCyYExuLjrvvCEK35TPzkMRnDhnM2QmC1ynEes4g/VrA==
X-Received: by 2002:aa7:c941:: with SMTP id h1mr37172057edt.85.1615915238151;
        Tue, 16 Mar 2021 10:20:38 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id u1sm10571584edv.90.2021.03.16.10.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 10:20:37 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Hans Verkuil <hverkuil@xs4all.nl>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v9 21/22] arm64: dts: sdm845-db845c: Configure regulators for camss node
Date:   Tue, 16 Mar 2021 18:19:30 +0100
Message-Id: <20210316171931.812748-22-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210316171931.812748-1-robert.foss@linaro.org>
References: <20210316171931.812748-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add regulator to camss device tree node.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---


Changes since v5:
 - Andrey: Add r-b



 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index c4ac6f5dc008..7e3c9fe4955d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -1108,6 +1108,10 @@ &cci {
 	status = "okay";
 };
 
+&camss {
+	vdda-supply = <&vreg_l1a_0p875>;
+};
+
 &cci_i2c0 {
 	camera@10 {
 		compatible = "ovti,ov8856";
-- 
2.27.0

