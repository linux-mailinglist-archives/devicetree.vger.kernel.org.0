Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6764537927C
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 17:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237559AbhEJPWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 11:22:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237237AbhEJPW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 11:22:28 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A1CEC0610D8
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 07:53:39 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so10483834pjb.3
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 07:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NRw7CDFpS1q9ZVL6Vz48+QpNkzFGcgIXfr4kOnd5kYo=;
        b=O7EDDvnnwKHp59jdXm/LWuTtFAHOv3r/ayTS4x1rYRhaTr3FvFLeNrKzLei76S/Qs0
         EW0uPnXwvlDNf6AD27MIvqktQW+VFQQiInlInQ5a4I/B7d7C46ZopnsEEAs8j+pVmUCr
         7zw58AH7GXd6AXX0aPGsC1vxgKP8p9UoFxmWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NRw7CDFpS1q9ZVL6Vz48+QpNkzFGcgIXfr4kOnd5kYo=;
        b=FU1sgrE3ESnBqBn5yQsX8kvTaMX/IAFfeBZHlQmgydlaWmcpkJKyr1zPWAT+x7tP9r
         253318Srb8F3qh+yNP4jNkVDy/BMSp8VIEdGnryQY7QQGX4sQ5ieeX3TyfgeIVAeMpLZ
         vc6MoERGw0fXVxgKEgj5l4aVorjQNHffnJ6b9he8J9DBtPvZ+OOP2Dm1xv8NQdaUVTT7
         op+V00QDCY9HLGOaXeLYSuRPcAk4s+uIU9d/D99OXMIqrHnv+nJrByWcFe99HYZdpOD5
         7TH1hFxzyjXh+5woiZcUMoKIsICbg5zodHaYo45IPj4Q4hPX+6ozvDt0Zb56mIYBxWCM
         vSTg==
X-Gm-Message-State: AOAM530L21r/qAr7DfYK9nW+lriNAskz+0QKOhAtBHWGZTVv1Gr4brgb
        2hoa9Wj81mmSys9S/HJHWe74bg==
X-Google-Smtp-Source: ABdhPJyCnxKhzplFOsqDSD0HB21qizrWFUS6W8vKQx85c2pZYNKGLQ93Hmfq9eD3dG4AQCj66QrEQQ==
X-Received: by 2002:a17:90a:440f:: with SMTP id s15mr42639024pjg.192.1620658418656;
        Mon, 10 May 2021 07:53:38 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:102b:59ad:66fe:cebc])
        by smtp.gmail.com with ESMTPSA id bx12sm19863298pjb.1.2021.05.10.07.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 07:53:38 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Wenchao Han <hanwenchao@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7180: Modify SPI_CLK voltage level for trogdor
Date:   Mon, 10 May 2021 07:53:12 -0700
Message-Id: <20210510075253.1.Ib4c296d6ff9819f26bcaf91e8a08729cc203fed0@changeid>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Wenchao Han <hanwenchao@huaqin.corp-partner.google.com>

On coachz it could be observed that SPI_CLK voltage level was only
1.4V during active transfers because the drive strength was too
weak. The line hadn't finished slewing up by the time we started
driving it down again. Using a drive strength of 8 lets us achieve the
correct voltage level of 1.8V.

Though the worst problems were observed on coachz hardware, let's do
this across the board for trogdor devices. Scoping other boards shows
that this makes the clk line look nicer on them too and doesn't
introduce any problems.

Only the clk line is adjusted, not any data lines. Because SPI isn't a
DDR protocol we only sample the data lines on either rising or falling
edges, not both. That means the clk line needs to toggle twice as fast
as data lines so having the higher drive strength is more important
there.

Signed-off-by: Wenchao Han <hanwenchao@huaqin.corp-partner.google.com>
[dianders: Adjust author real name; adjust commit message]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 24d293ef56d7..c11e07959a63 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -981,6 +981,7 @@ pinconf {
 &qspi_clk {
 	pinconf {
 		pins = "gpio63";
+		drive-strength = <8>;
 		bias-disable;
 	};
 };
-- 
2.31.1.607.g51e8a6a459-goog

