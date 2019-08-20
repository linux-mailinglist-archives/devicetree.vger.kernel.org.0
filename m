Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 319AC962A1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 16:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730276AbfHTOlC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 10:41:02 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54913 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729810AbfHTOk7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 10:40:59 -0400
Received: by mail-wm1-f65.google.com with SMTP id p74so2848987wme.4
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 07:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FtjbfzxxRQVlXomA51tccWbA15Rb8KwyrlxD2ZA+wlQ=;
        b=Y/hLIPMrAuVaUxTSVXjbJHQmQQ8JLEBe1TvDbYh0gvKcX2L/Q/YU6tCzL+yKFrGpZ5
         ++ri4z7NgbbXSYnpAP9cfnIKYfRqe6h736YsHvXgGFZfhrlp8i6rE9I0FqQeijg5Ywkd
         dSxEds04VSwwrRZjM0p1JUPOWxO0Drr+rqefb6Znck07/Vgb482CYubnYJfz1jZUuzGz
         ljFEX685mjvDyQG923roLxR5fBE0IEULiyQxg0QqAmYuxMTXDJH8LVbQYWH0KvnhG7OW
         D8IE/GWDFqaEzeeSTlYlvnjYGETQC7pdoEmQkBd1sT3eay60Q5JzCHIqi/MjXCwfRPFF
         Cz8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FtjbfzxxRQVlXomA51tccWbA15Rb8KwyrlxD2ZA+wlQ=;
        b=NfuGqq85j4DCedV8ZXJ1bmnJR7bOP4rYdMS5uJAIVeQW5EhdP7kmv1wjkxJnfogprw
         xtm7tEqR/u8RRMm/ASdgpIr3Uz7eNfTLh+gbcWAF2vi1lxU9t533Gf7Lw5VqOEKAgBAI
         0Ng3ozLAaodnnDz3BrUEPqrXE+xn7XIXY3v/sHreuBGp6SzF6pLwHGavXrMApBlskwVw
         5/UTzoi1hC6lbja8WsIfFbd5g+7P+/IwsaY+vvdYYxrHfuVv3dCLYxrlyoqFtyX5VVeB
         dn0/l7Voj+APsO84DYUBsvP77QBa4PcXXfj2GIhY/PhHOTUUeq3WjajB0R7X8cyzXKQ4
         DNxQ==
X-Gm-Message-State: APjAAAUDQQMp2piC9qHMcYys9jROA3InixDYcjKgFSNdPA/QAHKVI0bU
        K8ECs8GEPBRvxtrnaV36eL1ciA==
X-Google-Smtp-Source: APXvYqwBS4oD1m88wTCd7yYz/NuvNsTh8uemnpLC23aAqfqzhSziSlAqHUgACd7BA6CGz5CxGnWs0g==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr400414wmc.6.1566312057392;
        Tue, 20 Aug 2019 07:40:57 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 07:40:56 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 2/6] dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
Date:   Tue, 20 Aug 2019 16:40:48 +0200
Message-Id: <20190820144052.18269-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Amlogic SM1 Compatible for the clk-measurer IP.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
index 6bf6b43f8dd8..3dd563cec794 100644
--- a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
+++ b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
@@ -11,6 +11,7 @@ Required properties:
 			"amlogic,meson8b-clk-measure" for Meson8b SoCs
 			"amlogic,meson-axg-clk-measure" for AXG SoCs
 			"amlogic,meson-g12a-clk-measure" for G12a SoCs
+			"amlogic,meson-sm1-clk-measure" for SM1 SoCs
 - reg: base address and size of the Clock Measurer register space.
 
 Example:
-- 
2.22.0

