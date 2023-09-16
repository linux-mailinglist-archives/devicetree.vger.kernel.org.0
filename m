Return-Path: <devicetree+bounces-747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB77A2EF5
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 11:14:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A1C2281E31
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 09:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88C1125D3;
	Sat, 16 Sep 2023 09:14:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA710111A1;
	Sat, 16 Sep 2023 09:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9CCAC433C7;
	Sat, 16 Sep 2023 09:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694855661;
	bh=GdGIL53lm5iv/mox0ahLK0T+iKNQXpwOmFGuHh0bLKI=;
	h=From:To:Cc:Subject:Date:From;
	b=MXFjs8+pBJZdHwmuPF39Dgwiac3x3AZ6Ss001Xqa4bdVx5TwxJZjc+2e08dgidLqf
	 a1ThGwqoJ6cAu9E0MeCHJLx4YOr4hm9Z4mcrWe/AUeICdzvrfMbZbi2UcDrqEh1tJu
	 WK2k44+EDyhxS10IwH49j77ngj+JZcI23btS3KkdtAZqkUiiUMQxMS/U0aQ0eZ9YOd
	 k1fEulNFIvO4rcGn6pWtQ7eDvtckKZ5CJIrZVrbRcmjwKpWfQ8W4iomNjJpwNeTJuf
	 6gRJg40669dhp8j//RhdpTdWlIC4Q/Wrs9uP6kOb5PQrs2tS15Xl/YQFaiYnQp7g/i
	 uoD7BOXntteuw==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] riscv: dts: allwinner: remove address-cells from intc node
Date: Sat, 16 Sep 2023 10:14:00 +0100
Message-Id: <20230916-saddling-dastardly-8cf6d1263c24@spud>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1512; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=UgmedOCSd3V8sGIbZthMv9VrCmYnN+opWlLsZB5DVno=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKmshVfr/vQqXF5o7fZG0oplI5uJspPEknN7nj39fsdMy ckhYXlFRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACbizMbwT8U7bukPz22JO/Yt to7Y7bVftroz1N7/sa+Obo/PthIJK4b/NVf+PvkQ5LS8NWG25eMLWp3N3x9XHX96bs379guOHle SGQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

A recent submission [1] from Rob has added additionalProperties: false
to the interrupt-controller child node of RISC-V cpus, highlighting that
the D1 DT has been incorrectly using #address-cells since its
introduction. It has no child nodes, so #address-cells is not needed.
Remove it.

Fixes: 077e5f4f5528 ("riscv: dts: allwinner: Add the D1/D1s SoC devicetree")
Link: https://patchwork.kernel.org/project/linux-riscv/patch/20230915201946.4184468-1-robh@kernel.org/ [1]
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: Chen-Yu Tsai <wens@csie.org>
CC: Jernej Skrabec <jernej.skrabec@gmail.com>
CC: Samuel Holland <samuel@sholland.org>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org
CC: linux-sunxi@lists.linux.dev
CC: linux-kernel@vger.kernel.org
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 8275630af977..b8684312593e 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -30,7 +30,6 @@ cpu0: cpu@0 {
 			cpu0_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
-				#address-cells = <0>;
 				#interrupt-cells = <1>;
 			};
 		};
-- 
2.39.2


