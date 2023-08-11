Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5F4D778D30
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 13:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236102AbjHKLLp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 07:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236109AbjHKLLn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 07:11:43 -0400
X-Greylist: delayed 527 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Aug 2023 04:11:42 PDT
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [IPv6:2001:4b7a:2000:18::170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7604E58
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 04:11:42 -0700 (PDT)
Received: from [127.0.0.1] (bband-dyn221.178-41-211.t-com.sk [178.41.211.221])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id D47341F635;
        Fri, 11 Aug 2023 13:02:51 +0200 (CEST)
From:   Martin Botka <martin.botka@somainline.org>
Date:   Fri, 11 Aug 2023 13:02:34 +0200
Subject: [PATCH 1/3] dt-bindings: nvmem: SID: Add binding for H616 SID
 controller
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230811-sid-h616-v1-1-d1dfc9f47b19@somainline.org>
References: <20230811-sid-h616-v1-0-d1dfc9f47b19@somainline.org>
In-Reply-To: <20230811-sid-h616-v1-0-d1dfc9f47b19@somainline.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Maxime Ripard <mripard@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        Andre Przywara <andre.przywara@arm.com>,
        Alan Ma <tech@biqu3d.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691751771; l=826;
 i=martin.botka@somainline.org; s=20230811; h=from:subject:message-id;
 bh=UNrJIzFYMiFBJT0dhRHON+UeOYIjcjf6t1SJcZFXSVI=;
 b=BdJZkaTbv96+Ln4S1XO2MRIdsSqy+NoUgvGA3NONN4d9/PPw9u2rL1aJi8M2VVuPfZuTu7+tb
 oPClU7MHvJlBRRl869ea1i4ydu/+fX9KalxZP68lASgQO4+C7rRX19y
X-Developer-Key: i=martin.botka@somainline.org; a=ed25519;
 pk=aTCd3jmwU8GrJidWg3DSKLpdVMcpFzXzCSLXLR6NtWU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for the SID controller found in H616 SoC

Signed-off-by: Martin Botka <martin.botka@somainline.org>
---
 Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
index 296001e7f498..2ec0a1b8f803 100644
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -27,6 +27,7 @@ properties:
           - const: allwinner,sun50i-a64-sid
       - const: allwinner,sun50i-h5-sid
       - const: allwinner,sun50i-h6-sid
+      - const: allwinner,sun50i-h616-sid
 
   reg:
     maxItems: 1

-- 
2.41.0

