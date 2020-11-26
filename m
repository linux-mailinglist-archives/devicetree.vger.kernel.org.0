Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47E132C4CED
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 02:56:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731040AbgKZBzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 20:55:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730963AbgKZBzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 20:55:01 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEBB7C061A51
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:00 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id d17so298840ion.4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i17QMd8vkhN67qG5gREON3zvFxFBu1aRL3V4o/4TxAg=;
        b=IEjKalurW30XYFDjdsl28nQBRfKLYLJ+qdAf5CYAzGgPDk2W0RmL5XRxRW+c0ZRExk
         H5aMqxcKU6rj9sUURloAfDfs0ollquNBzMxTA+NqMJbHu0bLLQ0WwGaf07OUpoK6eIjb
         yAiz0oDSy9HA+jqkhzELVzRr7IRXjwLi+femMmqtOILDxdbPsD4BVkhLtm9qA+x79RZY
         NsatKxNsN67k3u8KfVlyUCv7YtlLXUXlHqhp8MiY3x05bglTpEPR2JbBw60xpIOXR+ll
         xlFtzRRwPMfaXoM/K79WDGp1CqCBaJUF1neXWAr5azjLyAIgFX7T2oRbFHSnzloSe1Sg
         i7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i17QMd8vkhN67qG5gREON3zvFxFBu1aRL3V4o/4TxAg=;
        b=PbWJyfjUICvwp5r9kh/e7u3NUQzKXaNLof0YTKzE+daED3tzFEHk34/pghaAOmovfu
         zfT98plknryQMjs4VukMQ2oH63+Fe2J1hTdB1XW0INyHwtfSuhIe4ppHeWMJP9FomWhR
         oPX8XAWwT98QlelERxoXST87tiXwDS6WJDZEUEDkNVkz+nIEFqgA+/XcN0iTUt0tDcAK
         1dz4ngfN5XhJTg3RmYJz9LEm9mWglWGE6o19uQ0yflWBRGDZAe6a+Fuqzqq34BorSF9s
         gUlCEQWXRWafRp+JALXcotBorboXJ7VXJQi7o3uTzWwBwjSJAARPPRW97HTTnvcpXBG5
         44og==
X-Gm-Message-State: AOAM530ukDjXkMDyVXvcIccpiqE5aVPSPKYJfN73fK3iNiCCnlnGUEVk
        3TYDOJU98WR98lZLCH+aLpu04g==
X-Google-Smtp-Source: ABdhPJy71WnIi4Z58HUMX4jikkOEFY/62xggxdr1QUv8zavqnRz5yH8xDGn4uhPdVIr7ue5rcjqxRw==
X-Received: by 2002:a05:6602:22c2:: with SMTP id e2mr739207ioe.156.1606355700182;
        Wed, 25 Nov 2020 17:55:00 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id r17sm1714907ioj.5.2020.11.25.17.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 17:54:59 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: fixes
Date:   Wed, 25 Nov 2020 19:54:54 -0600
Message-Id: <20201126015457.6557-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first patch in this series changes the IOMMU specification for
the IPA node in "sc7180.dtsi" to identify two streams distinctly,
rather than specifying them with a mask.  This was inspired by
something Bjorn did recently for IPA in "sdm845.dtsi".

The second and third just replace 0 with GIC_SPI in two IPA
interrupt specifications.

(I'm sorry if I should have separated these.)

					-Alex

Alex Elder (3):
  arm64: dts: qcom: sc7180: limit IPA iommu streams
  arm64: dts: qcom: sc7180: use GIC_SPI for IPA interrupts
  arm64: dts: qcom: sdm845: use GIC_SPI for IPA interrupts

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 7 ++++---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.20.1

