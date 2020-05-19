Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFB111D965F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 14:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728757AbgESMdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 08:33:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728579AbgESMdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 08:33:05 -0400
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com [IPv6:2607:f8b0:4864:20::842])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10F61C08C5C1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 05:33:05 -0700 (PDT)
Received: by mail-qt1-x842.google.com with SMTP id v4so10927085qte.3
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 05:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F+t7VT6RnoX76WR9ri3gPhMmUz1SOd30HZsDXWBjt9w=;
        b=fzkoxnSg0zliPjtIMba4XqsZAfUU+OBGnGTw8WY0OxgxMbY4MzJXjvnhyeAtM0dSYU
         4uirB1AnaOuQjFyBDGcDlYjS8i9JYmjrWu9BLkpOaPfFgUs0F4LlQHzP0ZInkwFCEzWy
         GMPWnBAEJpo0b3EsDbwRKlOJ9Wryaia+QGEksDCyCM4hRJV8WlqkCZtK/thet7Acaq7D
         VfEJrO6zD0To+8Q6Z5d6KxKbVF2/eu0pfrjahgx7jirG2A/6vOZTCM2pOtLa153BeEHm
         wQAnOAS39epji14eep3+9RIoaNOol2+h6dXCyvcTrNC17d+rkuTRghCwRvvahBbMUJEw
         O5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F+t7VT6RnoX76WR9ri3gPhMmUz1SOd30HZsDXWBjt9w=;
        b=jvtTtFTG54pUFAnpSdOVEBBd1HdhOKyxi64FkwCTlM6r4fLYqR1ByWpleHJXvzIEw5
         rACaYypumKOA56BQCsIaZpTDvBanAC1lIIyRb7jR1P2axwIl7OtQogPwK9mnMLVEXOsE
         P/dlOE9ECiWkxefp/BysQrkKjgVPVO7Prr3eebKQrIQgARR+Rl8SbN4BEnjZ5OLx8lk2
         ZWaG9wtb9vMqY+DXddRahKlckW3P0VPiaIXG7AlIC85z/B4NNWMNNUOmflx6gCi/tXvz
         DvGJWKAIHoc75Vmnv3W52WN0mVZJUdYIv8u1o5OgI/0SxkK17IC6qDg415WPfU8tWKnh
         jBZQ==
X-Gm-Message-State: AOAM533hqskxnYqXgYPQIVpCfhDORzVQ240E7YDa6lAehJ7We3bEmHCO
        ndRiO0yM0DedkWB7zZ14ktX06Q==
X-Google-Smtp-Source: ABdhPJzaTybmIlbDP8Dmzb8h8nZcJnchUinV/svAwS+RzFvpa3fMsFrDzgoS0g2/M5xAZRvI0FXoFA==
X-Received: by 2002:ac8:1c67:: with SMTP id j36mr20582493qtk.34.1589891584148;
        Tue, 19 May 2020 05:33:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id p9sm5439907qkp.88.2020.05.19.05.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 05:33:03 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     evgreen@chromium.org, subashab@codeaurora.org,
        cpratapa@codeaurora.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: sdm845-mtp: enable IPA
Date:   Tue, 19 May 2020 07:32:58 -0500
Message-Id: <20200519123258.29228-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable IPA on the SDM845 MTP.

Signed-off-by: Alex Elder <elder@linaro.org>
---

v2: This device uses the AP--not the modem--for early initialization.

 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 1372fe8601f5..91ede9296aff 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -448,6 +448,11 @@
 	clock-frequency = <400000>;
 };
 
+&ipa {
+	status = "okay";
+	memory-region = <&ipa_fw_mem>;
+};
+
 &mdss {
 	status = "okay";
 };
-- 
2.20.1

