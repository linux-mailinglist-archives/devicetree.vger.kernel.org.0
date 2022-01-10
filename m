Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E756A48A381
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 00:16:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345679AbiAJXQI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 18:16:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345686AbiAJXQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 18:16:07 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F361C061759
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:16:06 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id w7so14372780plp.13
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3m+MSLx1aWfmG9c9/zNheqVQNvN/1RiPSkKxDhXhUc8=;
        b=FAMQ5bXG1ZfRIjz22ZXOpXwVILq33lkpwxmtzGpBLjXF7+qgVHuUiHA0IqeOkC8bnf
         6mYOLEIUEemetr3Z3413MXhVtacNv8CjstL7k17KalyIrrEcMiYBqquu+0XESpYWrlyB
         bA36yrEmUwWyB0vAkd5sj8ujgXq2UelOE8jr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3m+MSLx1aWfmG9c9/zNheqVQNvN/1RiPSkKxDhXhUc8=;
        b=GlbEqRgM2mUvdjJZwdYxUtwS0xt1Q0bAPpP8WpHuxSf4JFD+OGNYqI3EdCm+pl4xNI
         QJjdCovHi76yNk9PSaFT4nHmimqky8LaRwn4U+Z8W1UlqQAVVV4u8/T9uBh5gKQyeedU
         UqwICXZRTSRwvNgZYWjPHxkaOUvcSdD+ExKzey48Mlp0Y/0NedWAgG12Ha7Iz6Zia69k
         hZ+Ew2bF/z9yC7rFqK1jUo7L62+L5x47zwhvgVhUo6qhR9oaNGXiO1DjvogIT3dLgvF4
         wgrQNqmjegvqLpwaJjhFr25vBTRBn8cdnONO4HxaGpYZOxBB1GsTFwRZO/ISTkRJzizi
         JSKQ==
X-Gm-Message-State: AOAM531/JpbI22Mc1PMTpfJHf3GkUyi0uDaQ53mGtqQtEfmy9RxVyxBy
        nBB04PUqqHSVeGAS+3BH46vLi0ltK9vz3w==
X-Google-Smtp-Source: ABdhPJz6e6Ax9KoaHUu4OKn9vuzroT/JFuIVuYRtgwypH2Qm2t3A+TB6jFw/sR4u3TNPzw9d5v2lIg==
X-Received: by 2002:a17:902:bd05:b0:148:a2f7:9d87 with SMTP id p5-20020a170902bd0500b00148a2f79d87mr1720722pls.166.1641856565660;
        Mon, 10 Jan 2022 15:16:05 -0800 (PST)
Received: from kuabhs-cdev.c.googlers.com.com (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
        by smtp.gmail.com with ESMTPSA id z12sm6123924pga.28.2022.01.10.15.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 15:16:05 -0800 (PST)
From:   Abhishek Kumar <kuabhs@chromium.org>
To:     kvalo@codeaurora.org, ath10k@lists.infradead.org
Cc:     pillair@codeaurora.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, kuabhs@chromium.org,
        dianders@chromium.org, "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        netdev@vger.kernel.org
Subject: [PATCH v2 2/2] dt: bindings: add dt entry for ath10k default BDF name
Date:   Mon, 10 Jan 2022 23:14:15 +0000
Message-Id: <20220110231255.v2.2.Ia0365467994f8f9085c86b5674b57ff507c669f8@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220110231255.v2.1.Ie4dcc45b0bf365077303c596891d460d716bb4c5@changeid>
References: <20220110231255.v2.1.Ie4dcc45b0bf365077303c596891d460d716bb4c5@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is possible that BDF name with board-id+chip-id+variant
combination is not found in the board-2.bin. Such cases can
cause wlan probe to fail and completely break wifi. In such
case there can be an optional property to define a default
BDF name to search for in the board-2.bin file when none of
the combinations (board-id,chip-id,variant) match.
To address the above concern provide an optional proptery:
qcom,ath10k-default-bdf

Signed-off-by: Abhishek Kumar <kuabhs@chromium.org>
---

Changes in v2:
 - Changes in v2: none

 .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
index b61c2d5a0ff7..d76d1392863d 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
@@ -63,6 +63,10 @@ Optional properties:
 				 hw versions.
 - qcom,ath10k-pre-calibration-data : pre calibration data as an array,
 				     the length can vary between hw versions.
+- qcom,ath10k-default-bdf : default board data file name to be searched in
+			    board-2.bin. This is searched if no BDF is found
+			    in board-2.bin that matches, chip-id, board-id and
+			    variant combination
 - <supply-name>-supply: handle to the regulator device tree node
 			   optional "supply-name" are "vdd-0.8-cx-mx",
 			   "vdd-1.8-xo", "vdd-1.3-rfa", "vdd-3.3-ch0",
-- 
2.34.1.575.g55b058a8bb-goog

