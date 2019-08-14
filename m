Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 825178D61C
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728431AbfHNOa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:30:26 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38574 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725828AbfHNO31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:27 -0400
Received: by mail-wr1-f65.google.com with SMTP id g17so111306312wrr.5
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eAFiTbS9tUsX23wvX/LxXnBM46JN5Jo6L8dXcPl3X0s=;
        b=I0uu0tb7hCj7NOzVQ9cxQqyxLj2ts/mcabRUsP2x/js53uYLjxjpmy9xUxR92i0vVk
         HkjNwwuBeSllIocHQNIVn7rVWwgfNk06xctYCAUklo05hcWc0h3ZMMtX1L4/YjEtTirl
         auQJ9EqjnJiEVyUw7UD4xZxTQAPQe4AtCltZgS0FsPzzE48Adn83e951uj63o4dLj4ak
         gpZ5LU8pKqnDwcj5Z2iFXdGO9/FcUWZWE7NOJcLwnekcZNrtLVUGB4ABOl6i9idkZCnu
         Ccy13esI8dtih+gCHB6bRKtJMIip975/2Xb9nAhp2/NYFe0A+I8FlDGoeWiNRDcEPB6I
         55Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eAFiTbS9tUsX23wvX/LxXnBM46JN5Jo6L8dXcPl3X0s=;
        b=bIpRbjmmX7bc9w7YqqP/8Y7KfAf5BPQPT9Ki2STKjFvWUppZAeKjFLSLZytbQP+PkM
         nakACCpa1ePivsnPkIocAcIyk21u+zT+JvljPG7nxam2/Gutzxh+I3p/cO3a65Zc7wk0
         rX5GtDA5UaaCDtMLSGJEn6d3PXMYmWYM+oRIx9Oa/qE9nl4sDDsU/DhMDKTyc7brsWvV
         dvFaxIyRKvy2SmFge5AU0C5zIOkODDtI6JEWjmUBWCy7TPcFhXzRKGIFD3+MTbTCpGhM
         OVKlBUBbTNmdJuTGuXq2kQU/5ZVspL252Kzq1/1mzN44Pj/7u6fF0RLuCLqshSSvqRvo
         vdtA==
X-Gm-Message-State: APjAAAUqMrWIiz/33lKmmHG4yWmuZNOMpCYciSpbKvtLQh96+8ZMfO/q
        OUDICgtimfE2H9urrIxyFIiczA==
X-Google-Smtp-Source: APXvYqw2v0j/k9m0jX2dRH/od4sgZO9K4GyqV4f6kOpOSECtwsplxNzyoaB+k3+nqd8UXQjoU3OmrQ==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr8286783wrb.172.1565792966037;
        Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:25 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 03/14] arm64: dts: meson-gx: fix reset controller compatible
Date:   Wed, 14 Aug 2019 16:29:07 +0200
Message-Id: <20190814142918.11636-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: reset-controller@4404: compatible:0: 'amlogic,meson-gx-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index c2d3fffea8a7..5b3dfd03c3d3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -220,7 +220,7 @@
 			};
 
 			reset: reset-controller@4404 {
-				compatible = "amlogic,meson-gx-reset", "amlogic,meson-gxbb-reset";
+				compatible = "amlogic,meson-gxbb-reset";
 				reg = <0x0 0x04404 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0

