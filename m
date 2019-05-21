Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AFD2824BAE
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:35:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727608AbfEUJfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:35:36 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:36302 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727605AbfEUJfg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 05:35:36 -0400
Received: by mail-pg1-f193.google.com with SMTP id a3so8310316pgb.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 02:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=d2eIpxSdjsX7/lLIjpHMiJAHo+aeKfpvFXdzoX+BN1U=;
        b=mwHzEwi0iE+xHqdlGaQ1uBp1E2gATH9uWQYVYVWfQbo0ZivXmmXxi9T16+MZ4cSTlc
         dE9SYzVSLdHtJkAvihlnFayERaA/U5IsZkgqvwS46h+DkD8XNkpsgGzYM6TZ04/Uhjxc
         rUeWTaaAzNg1KDPSjRJLiQlBLCvkZ4IDEvXIMFYE3xK9BIVLnWa4CyXfacqqWdxidcQw
         jHBVP1Kssmpj3OD0ym3GodXS3tVqgLLluIusM7ndAYXTfCoQW6PI3pK5MmBsfOGVZOE/
         stghyRWSzMcYUqvpK4g+KqXDYJoQLa7I4pHxcqpJ2LrmqTxSL9L154vI1N5hoyRI7FAu
         3VhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=d2eIpxSdjsX7/lLIjpHMiJAHo+aeKfpvFXdzoX+BN1U=;
        b=a1TZIzheoqKQdZEaR7ON4lofbSXkmm6bntgWDYK6p8k6S6tCS7WziqtjXV2Lsz4Oad
         Vlo78IqPMR4oDeqrDFF6Ym6Ksuaqwd+G/iPnqX4WY7j/flELAjV1OobC/h9sYtIIe190
         QxxEW0bmMX3y4omqoWTy8W3tujoSI+WGKOv/LcWPd40uWq3iQfV97YcuoAvaHJnxOMOa
         +q2+o38zrOJqDUcgA1TopczfmXQ+S0oYcuAdBLcZL4raOrvSFaaXKKAGO4IX3/AEFuLf
         iQu3/c4H9R2ZZ9qi4xlQlz882a73xOS4d7XE/TTqD6gc7wP2XXFhX0vh0xIqqZitFGzi
         HkDg==
X-Gm-Message-State: APjAAAXbmG74pH6iiMNT2LD5DBuLNRYw+66ZRHCHUh17R9gjEN0piOUw
        BF9Ab55JlQH3dWWr6KGtI8S/AQ==
X-Google-Smtp-Source: APXvYqxU/eR8zo/KSsNzGchOV9mx0K9b7ckVoQsRSRsfOQfU5x4fKkjXosmVzTMhVKHuzaVfE+caqw==
X-Received: by 2002:a62:d286:: with SMTP id c128mr86829674pfg.159.1558431335265;
        Tue, 21 May 2019 02:35:35 -0700 (PDT)
Received: from localhost ([49.248.189.249])
        by smtp.gmail.com with ESMTPSA id y10sm17012625pfm.68.2019.05.21.02.35.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 02:35:34 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        niklas.cassel@linaro.org, marc.w.gonzalez@free.fr,
        sibis@codeaurora.org, daniel.lezcano@linaro.org,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 3/9] arm64: dts: qcom: msm8916: Add entry-method property for the idle-states node
Date:   Tue, 21 May 2019 15:05:13 +0530
Message-Id: <0374669560d13bba30dfa33cd10a0ad8a65b604b.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The idle-states binding documentation[1] mentions that the
'entry-method' property is required on 64-bit platforms and must be set
to "psci".

[1] Documentation/devicetree/bindings/arm/idle-states.txt (see
idle-states node)

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 0803ca8c02da..82ea5b8b37a2 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -158,6 +158,8 @@
 		};
 
 		idle-states {
+			entry-method = "psci";
+
 			CPU_SPC: spc {
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x40000002>;
-- 
2.17.1

