Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAA5833C109
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 17:03:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233495AbhCOQDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 12:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233768AbhCOQDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 12:03:00 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26BAFC06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:03:00 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id p7so55821413eju.6
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kp5VYTsDNiB0gGXlB6HcqJmGVkbYyLUkcxdf+TCO1As=;
        b=Lr214abl7ddeutY5fxou0YYCI5lxlhT/40u6BAPjjD91wy0wAapA+ON5eFepOmFSm3
         xT9EoCsmlyS0lG2ivodFxwAWfVVhMkhQ1/06EYs8jN/Rf1Ztc0LHC6V3BQ1u57EJcAZz
         UKTBuME1jPE5NNZZUQlkbMcZsd7PMWII3SoGvfXPakEFuM5E0CLeHZHUYxrXfR1XF9mk
         pTiws9aKIsTsi5xEGqhX5fy9TMCaOmf5du6Nw92hPYkgfOFWK8rsM6vciiyFbTDIIqkm
         aUSMxG9B3MYH9f5rgKoeG1PdgozGhZ+L68kiQvdqhu2Fnesy8vliCwj+8QjHK7d3qVdh
         XLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kp5VYTsDNiB0gGXlB6HcqJmGVkbYyLUkcxdf+TCO1As=;
        b=XuINqoQZAfZ83x78nkJ+7j1/DUh8jCMlt97HrNK0/InItDVR6qwQgqOYlevRbT3N8R
         PqOSidMMTUmLuaP3gzuJyAVRijhXbKA3XrEUfR1gug5mRnkgY/wwIryUuhjYZPTLuIlS
         uNOq/Oz3Ip3PvEhwqCuJ1YC8cRAGHZO5jjjqkYy5jLFggPCKZYYR9CcAcwZF4SekOVY1
         I4eoPid7hPXJQ748Kd9tDeEwF51qDFIbtHI6odThnQoj0JlrNWNitY89MJ1YNFuE4GmL
         UbXNJ0sjoge9SEyb5Vx0pAs9fQmB6AaFFEzpAGcHa/5cdwBKHM3bML8C6HsnsV59B2Fa
         AlUQ==
X-Gm-Message-State: AOAM533N5fRiZuACbgii6eMau/LirBp4Hsj0ywAPKmSWy+shPOloyuVf
        NbogJJkeWK8ME4YvijAd7Hxj0A==
X-Google-Smtp-Source: ABdhPJwertWu+l7Zeo7FOjsdIsO/DukgNukXQTqr1PwqR9mJokCr23IenGBVbVAZL+dMW0MgXH8DCQ==
X-Received: by 2002:a17:906:2786:: with SMTP id j6mr8716846ejc.157.1615824178926;
        Mon, 15 Mar 2021 09:02:58 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id r5sm8456445eds.49.2021.03.15.09.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 09:02:58 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
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
Subject: [PATCH v8 21/22] arm64: dts: sdm845-db845c: Configure regulators for camss node
Date:   Mon, 15 Mar 2021 16:59:48 +0100
Message-Id: <20210315155942.640889-22-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210315155942.640889-1-robert.foss@linaro.org>
References: <20210315155942.640889-1-robert.foss@linaro.org>
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

