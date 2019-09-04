Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6E3AA8127
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2019 13:36:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728936AbfIDLgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 07:36:21 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38659 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727125AbfIDLgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 07:36:20 -0400
Received: by mail-wm1-f66.google.com with SMTP id o184so3283052wme.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Uuq1eCLagqB7It6aGbezur+IR8biDO9SazdI7cqdaFI=;
        b=qp0yJe04jx2ivZeuIXUwlhAyXXeFSfk5tgqH6oCkHR05lDEik9mPR5v9927SPGcRcF
         Bqpd9uYWbP1lsr+hb7QvkpYLluhnrev870vk1hyz6CstDwPiqkr8mp4/e4g5uP5dShX8
         xdt0ym7tbVmwYwx2pgRVRGsEZ8C1evHUk9FGitl/8RMxdTyfqj6zxtwcIzKPbnKHu2ay
         q7f/9kZ1lQ7dZpPPtuumZ9QoFlwEHWVriNgD+6IQtn2ystKcFOD1L8ahTB72/zQlOPjj
         vijaYPmPpyVFjezLg3cx8drAtt4pP5Fz+cYk5fH1mE2O8yX+nvUAM681Qx1ltYOUjSXv
         zQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Uuq1eCLagqB7It6aGbezur+IR8biDO9SazdI7cqdaFI=;
        b=hywIy2wmn8eupQ/ciHdmDnYhHXqOeY6r4li8wQXhvngZlk31SIpE1emoMU5lfsLAi7
         r1qrtiZaWOdXTgF7JWg0gs2w3Np7v/uHGXOlY9zMizVTmtfr/ss+Pyd276Fb4ZSNkmX5
         mD3iUMFaF9jVLN3NFA/KFNYBtxgzq85Lr/lSmRZr96M9roxOE5w+gyZ9+Eh87kHnSE9g
         IWD8FYrIje8hC0z5dYbvULTyUK3kh2FQAMN0oJIA9XP9Jdl3OPzuK50xLDY6Yllqcod/
         gnoNRmXplb3HB44fxio1NRlzE+ZMdIg9LJNpxiV7SGE7/BkEKwqT9gQ+T4N0fGka59TX
         maAg==
X-Gm-Message-State: APjAAAV20ePRREWuwvVIeWJN0V9JHQW0wxDyVzUb4LnITgHc+1bn1m+r
        xIPoTgZm7gGiDRQi0OozBXCmtw==
X-Google-Smtp-Source: APXvYqxrVXn7NXLmsW+n0aD02675Wv9vt7hSV40SwdLs0RB8oNmnK6HhJ+4q7rd/GnqwtFaz3fRPdA==
X-Received: by 2002:a7b:c8ca:: with SMTP id f10mr3812956wml.36.1567596978030;
        Wed, 04 Sep 2019 04:36:18 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id d9sm10823933wrc.39.2019.09.04.04.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 04:36:17 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, bjorn.andersson@linaro.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 2/2] dt-bindings: soc: qcom: Provide option to select FIFO mode
Date:   Wed,  4 Sep 2019 12:36:13 +0100
Message-Id: <20190904113613.14997-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904113613.14997-1-lee.jones@linaro.org>
References: <20190904113613.14997-1-lee.jones@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Used when DMA is not available or the best option.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
index dab7ca9f250c..b0e71c07e604 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
@@ -40,6 +40,7 @@ Required properties:
 Optional property:
 - clock-frequency:	Desired I2C bus clock frequency in Hz.
 			When missing default to 100000Hz.
+- qcom,geni-se-fifo:	Selects FIFO processing - as opposed to DMA.
 
 Child nodes should conform to I2C bus binding as described in i2c.txt.
 
-- 
2.17.1

