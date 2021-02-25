Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6EA32596E
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 23:17:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231604AbhBYWQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 17:16:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232429AbhBYWPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 17:15:50 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E291C0611C3
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:13:50 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id o63so4761986pgo.6
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SRM09e0XG9iDpWuWB8nMTgOWrXG/nxGrXiBhekdNcJg=;
        b=G0S7x75/R7r1fGd1saUoVxPFnqw4/sWhW8lHA755YPlAIbFsWyItvuVyfJxHXpasYz
         MdE9DFSfjidLtDYjMjbZKBP5F3n6gyFnXe+Ud+TQqJTzl9+GlI3DQJDxcJATXvQxVctB
         KZLThqNpqhP4hZFetX8vPgMsJNQRaWjjkTQJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SRM09e0XG9iDpWuWB8nMTgOWrXG/nxGrXiBhekdNcJg=;
        b=B0m6Wqz8wk+nEelOjWHmoEHAdClFgqxrqnYLW//EY32k2RxN+4h4Apw2bcPJq27ljY
         /pr79xrwxCR9P80+Ripbf82i7dccpa5hftt8eQiBOWpvJjOzmFvquz5CoAoNfcnndBkl
         wzpcPzXfj/ojoEUabOCJD4JvCBP4229YifSFepxfwMYV3YMa6icseGga6rlwV8rtMrOg
         GtlcKZ8f9fgodHqnW+uv2HMDisheVoMBR330XcwFrbLZFEQzmDaub8d+TMthFPpXUg8l
         /h7JJSXqnXh5y4UPJ2u9+TVhfHjHJ7AygR2crWNYUfs0I4oUnsWd2IenECRp5gECUVYm
         2ArA==
X-Gm-Message-State: AOAM531DIsvDy1BYwh6W4pg0/7NmuPWOAfOdLD9LBJ1rqx+TEsb19Egh
        WeaBnphAI1/p9bbvJIDfGoWeeg==
X-Google-Smtp-Source: ABdhPJzOJy70QJbhalFGwUvn2ysJjEn64L2lFRIGfvfjaBwOSoSgCdTggX5g0xWNGsYMrfaLKVMkLw==
X-Received: by 2002:a63:e42:: with SMTP id 2mr60944pgo.100.1614291230149;
        Thu, 25 Feb 2021 14:13:50 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:8414:45a5:94c4:d35d])
        by smtp.gmail.com with ESMTPSA id jt21sm6713301pjb.51.2021.02.25.14.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 14:13:49 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Abhishek Kumar <kuabhs@chromium.org>,
        Philip Chen <philipchen@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] arm64: dts: qcom: sc7180: add GO_LAZOR variant property for lazor
Date:   Thu, 25 Feb 2021 14:13:06 -0800
Message-Id: <20210225141022.9.I4a38fe64dd79c54af80d7e4ef5940f8cf4f86e75@changeid>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
In-Reply-To: <20210225221310.1939599-1-dianders@chromium.org>
References: <20210225221310.1939599-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abhishek Kumar <kuabhs@chromium.org>

For trogdor, in the latest board-2.bin file, new BDF with variant
name GO_LAZOR has been introduced, so we need this property set, for
GO_LAZOR BDF to be picked.

Cc: Philip Chen <philipchen@chromium.org>
Signed-off-by: Abhishek Kumar <kuabhs@chromium.org>
[dianders: adjusted subject line and sort order]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
index 5efa04d0d256..6b10b96173e8 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
@@ -49,6 +49,10 @@ &trackpad {
 	interrupts = <58 IRQ_TYPE_EDGE_FALLING>;
 };
 
+&wifi {
+	qcom,ath10k-calibration-variant = "GO_LAZOR";
+};
+
 /* PINCTRL - modifications to sc7180-trogdor.dtsi */
 
 &trackpad_int_1v8_odl {
-- 
2.30.1.766.gb4fecdf3b7-goog

