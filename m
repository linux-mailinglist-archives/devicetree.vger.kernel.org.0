Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7354425B3F2
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 20:41:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728303AbgIBSlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 14:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727961AbgIBSkD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 14:40:03 -0400
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A317C061249
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 11:40:02 -0700 (PDT)
Received: by mail-qk1-x744.google.com with SMTP id f142so613682qke.13
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 11:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xZ0W2CvSOqgevHE21Wvc9Ii5sefbzh3TG/j8nJsk3zc=;
        b=amGpMxv6FvcAg54gGJVlhJ2rkwaxD6yAwwrDqBRT8krp7t6DTO5eNbTLg3vELZMxf3
         i5EFYxV2aMGDxbXZNoDC0RxPxo3kXTUJ2qqEk1X+CGK77nVItz4G9D55EsiBIKV0tQDV
         cjuQ6+rd6wsXLqyiIL605ZocjnWmgTbGiWYGU2ZVkz9wONFpQLJR4r0YUeA1SCDo+WzC
         X5/HEqAZS+sIHWEBYDv1b7MikqvYHYjR0cww3OOLRRrfUFXOsa5fuGhLfVVtgHII05Ni
         KpU03yh8vfqr5g0UZn7DLMfYGq9UY9YlUZKY0NSR8Myh5zfqYSVsRjlKJhVZ0wUaT7KV
         wD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xZ0W2CvSOqgevHE21Wvc9Ii5sefbzh3TG/j8nJsk3zc=;
        b=c+zeJR6NN5SXESJDVa+24h01xpqnvrmpms6+DOXfDHDNtsMWXNpVkunVoZgwg6vdW/
         JXGg8g6DWYer6v4wCqCwtVuik6XBQTq9jI1f0eyBa8WX9Nq5LlHZ0cunDfxL6xxTsvSB
         AXZ+Zep8ifvLDGTt5uNgFcv+7nPfZSgWUu13z7EfNLYGKWv9MUrd5ruZqp6k9nMcukLB
         CZXRtDs7dTFqt1JVHJc5lKfDXk3UF1wzFglnpDCOhMFS2aKGDBzoH5OWi+s7a4+ZCpzM
         9IN+b68eXCxms396duKjVjZ8wk18h5g8/AtxqRzFCZFFjhQIZGqgeRjOMOkpZ7nq2p6x
         46Jg==
X-Gm-Message-State: AOAM5313RK4rc5Fm1vVgPrAKdB01juv6ZrDehU48HIVUCfbYYteTrIX+
        2r/zlQmkr2hxW+qTn+BF1qImZg==
X-Google-Smtp-Source: ABdhPJxTU9b7WO883MKtpvazzxZ5+pb+oWzXy1zuPWo5OXWaGGxtczyZMtE99Y1PD5VxXfdH9gLNkA==
X-Received: by 2002:a05:620a:78f:: with SMTP id 15mr2612760qka.340.1599072001235;
        Wed, 02 Sep 2020 11:40:01 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id s47sm208004qtb.13.2020.09.02.11.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 11:40:00 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/7] dt-bindings: clock: sdm845-dispcc: same name for dp_phy clocks as sc7180
Date:   Wed,  2 Sep 2020 14:38:41 -0400
Message-Id: <20200902183852.14510-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200902183852.14510-1-jonathan@marek.ca>
References: <20200902183852.14510-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This makes it easier to combine dt bindings for sdm845/sc7180 dispcc.

Note: nothing upstream provides these clocks and the sdm845 dispcc driver
hasn't switched to using .fw_name for these clocks (these properties are
ignored), so changing this shouldn't be a problem.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../devicetree/bindings/clock/qcom,sdm845-dispcc.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
index 4a3be733d042..3825dd6e67e3 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
@@ -43,8 +43,8 @@ properties:
       - const: dsi0_phy_pll_out_dsiclk
       - const: dsi1_phy_pll_out_byteclk
       - const: dsi1_phy_pll_out_dsiclk
-      - const: dp_link_clk_divsel_ten
-      - const: dp_vco_divided_clk_src_mux
+      - const: dp_phy_pll_link_clk
+      - const: dp_phy_pll_vco_div_clk
 
   '#clock-cells':
     const: 1
-- 
2.26.1

