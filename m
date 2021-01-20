Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8772FE317
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 07:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730406AbhATXnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:43:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732051AbhATVao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 16:30:44 -0500
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BBD0C06179B
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 13:26:16 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id x21so31642258iog.10
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 13:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZgcJCeO5IRSICza2r6GEj0/QJ8rNtZfDDcOXMnAT21Y=;
        b=laOq+sY8LdhQ82MV1OE2k34/xvmxGGN8PYlZcP/QlnQd36aPaJL0QwY6yrkwtxZsCG
         AxO8a7SKnSFX6L3IDCUyZSeU29af28mcRdXZeBaDanpsvywcLg6uhJuFs1SCEmm7pDq/
         PmlZuq+fvsBCSSMfV0Lqzk+P6TDZrGHWm6/rHAVtxwicLhPHz1ts5+Ln3upe9F/eTJoR
         l8xNILxBwBTJYQH7gLYUCNlu4ENvip5fBJGVt34ijeCSf7IhrSynpli/uhfWVZ3FrqVE
         7wMylBzj2Yg3sliX8JK0g3RSsBklNNot5FgTptKsiKbcZWWmp09TgTYsohXaHQgUJj6V
         LvYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZgcJCeO5IRSICza2r6GEj0/QJ8rNtZfDDcOXMnAT21Y=;
        b=m/ZM2sSMbxsvpCGmukyozQXt1FndcChTJzE62Ij9tiZzf+mh7scSyYtZFCrEfhww4r
         N0CVG4E35O8Vb4tHol6ZlaijqJc6IsIrBzpus4YAZ9WJmrtLIR3caeezIjmpUluQJHpk
         4B8J2dQd3QCjSej1szodc3bQmu9gawU4AVdM9J1iTJlW1TbbChO7LaSyCWwlhxC2QkZG
         vJRRUWYSUAlUaQ/gpANOvvwIptcR+aX+ziRMewTHN5rYJSe9CMAHItNk5vDSx8F5YjCg
         8zKf5Kl+nXUkrdVg/Uyf9PunC7ArqxTJLSOmU8RlBPZiEEpFyoDE44Es3yM3J+qpqYxS
         cjfw==
X-Gm-Message-State: AOAM532CM/FnWDUWcCNTKRJb3WqRvhHHDdETR45e2qPiFuIhI1zsZG4i
        mGCRJwS0wSPVErNy4L291FpaiQ==
X-Google-Smtp-Source: ABdhPJxJj4nC6zIao/ax3tDl6ctcokGZcYWqetq/RRwKiBH/F8BiV38BeQQYHbVK6AY3DnZtx2DY3w==
X-Received: by 2002:a92:5e11:: with SMTP id s17mr9482916ilb.23.1611177975159;
        Wed, 20 Jan 2021 13:26:15 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id q196sm1335687iod.27.2021.01.20.13.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 13:26:14 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org, bjorn.andersson@linaro.org,
        agross@kernel.org
Cc:     robh+dt@kernel.org, evgreen@chromium.org, cpratapa@codeaurora.org,
        subashab@codeaurora.org, rdunlap@infradead.org,
        netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 net-next 3/4] arm64: dts: qcom: sc7180: kill IPA modem-remoteproc property
Date:   Wed, 20 Jan 2021 15:26:05 -0600
Message-Id: <20210120212606.12556-4-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210120212606.12556-1-elder@linaro.org>
References: <20210120212606.12556-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "modem-remoteproc" property is no longer required for the IPA
driver, so get rid of it.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 22b832fc62e3d..003309f0d3e18 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1434,8 +1434,6 @@
 			qcom,smem-state-names = "ipa-clock-enabled-valid",
 						"ipa-clock-enabled";
 
-			modem-remoteproc = <&remoteproc_mpss>;
-
 			status = "disabled";
 		};
 
-- 
2.20.1

