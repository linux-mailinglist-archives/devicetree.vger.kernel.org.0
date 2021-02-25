Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E732E32596D
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 23:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234492AbhBYWQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 17:16:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234407AbhBYWPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 17:15:46 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B765C0611C1
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:13:49 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id j12so4538624pfj.12
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DWfJgrkm+PiOhD7g8KXUD8ia7V1Lzy83q7sZnbzerdI=;
        b=A/aRmSydE/uJYEhHY+s4KHoIPPxgRYmCY5N1mmrw2rW5mmZ+XMApgFAYNieqeFW9bP
         R8oPJYyypqaixPSp52KTRAqNihidnvEfavgNdHzwrK/qGGM7bIYAZCstVhjU5fvT6PUz
         AAh2vuza8Zlg38SFwI892+Gl0+GVqOeaOp+Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DWfJgrkm+PiOhD7g8KXUD8ia7V1Lzy83q7sZnbzerdI=;
        b=fM6E5Go8DFIxn76z3AZcXSes2C4o83Agp8fcXuh6CSs7dH4zixdwycvkYJLM6CVb81
         JPRoHLf9awcpDwFsl4GBqHYunSK9DuzT2KJwJllyro/xt3OTO+0Sj1hAicmnqa9I/yCG
         K4ohCU05qyYuwjEEkinkB0dVVELvxpOwenAUsOW9U+97OQg6z6qWP8SYQQMuEt31MS89
         wC+CgJAFhb8qA02Yi5Kr9GlAd8o4wg+QOFgj1oBM11ckXwqzckmouSNUU+IdA7OJe/kN
         ikqV8VV4Xyth2g9pRFmlmOY0LrBqkA05cMutSoThPol0CwpWS0hg2YX14vRo4g+0BqXF
         HJ3w==
X-Gm-Message-State: AOAM531Ls+OSxMjrYSes23Yx22+yzeUHZjI+t1kPJknWsp8UDWksMM4G
        E/ikl6KrCDbk6Gv7VDTeJo4xog==
X-Google-Smtp-Source: ABdhPJyRASVmSouq5LszmzLBjUuuxzI6kqNOdBDRujBCpa+n4UpgF79DeAwjNdtxwKoNGZsLUw1ZZA==
X-Received: by 2002:a63:4f59:: with SMTP id p25mr8007pgl.335.1614291228656;
        Thu, 25 Feb 2021 14:13:48 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:8414:45a5:94c4:d35d])
        by smtp.gmail.com with ESMTPSA id jt21sm6713301pjb.51.2021.02.25.14.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 14:13:48 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] arm64: dts: qcom: sc7180: Remove clock for bluetooth on Trogdor
Date:   Thu, 25 Feb 2021 14:13:05 -0800
Message-Id: <20210225141022.8.I80c268f163e6d49a70af1238be442b5de400c579@changeid>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
In-Reply-To: <20210225221310.1939599-1-dianders@chromium.org>
References: <20210225221310.1939599-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>

Removed voting for RPMH_RF_CLK2 which is not required as it is
getting managed by BT SoC through SW_CTRL line.

Cc: Matthias Kaehlcke <mka@chromium.org>
Signed-off-by: Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 12397e31bef6..05e3c3db2e9a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -833,7 +833,6 @@ bluetooth: bluetooth {
 		vddrf-supply = <&pp1300_l2c>;
 		vddch0-supply = <&pp3300_l10c>;
 		max-speed = <3200000>;
-		clocks = <&rpmhcc RPMH_RF_CLK2>;
 	};
 };
 
-- 
2.30.1.766.gb4fecdf3b7-goog

