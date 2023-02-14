Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D44A8696B3A
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 18:18:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232889AbjBNRSF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 12:18:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232648AbjBNRRo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 12:17:44 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610563028A
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 09:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1676394913;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=jeEdpXATs9xAq3Ic1YKNwPFKV8iOmXM6rM7COSxPs48=;
        b=VykLS2WzlXkZfq4IB2Kp59+LLU6jooe4eu7S1BlWphrFqLa/1sCR9FUBAnZTHdtTsvXjOy
        Uxkml1ey7XUe3/pqsx15+uTTxdG3zdDAgd6R68SwnXeovxxSHhyZwIkfC7Goccf/JKZGbT
        Kxm7Ql/82d6w4A6IaaL2xozUSoX/D+4=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-381-a-NaYniDMK-kUR4dJ_PPXw-1; Tue, 14 Feb 2023 12:15:12 -0500
X-MC-Unique: a-NaYniDMK-kUR4dJ_PPXw-1
Received: by mail-oi1-f200.google.com with SMTP id du3-20020a056808628300b00364c7610c6aso3155142oib.6
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 09:15:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jeEdpXATs9xAq3Ic1YKNwPFKV8iOmXM6rM7COSxPs48=;
        b=NaqQk/HD5vVjCjYNQeQYiE7ub0cpMUbFce0kbFUEr1qJ8S4DUkeMQYmO850Azpgh2N
         dUSFUBVn83AAeKbM/mWenEXlXa/DnfIPHcsNR95Cke4WwxhpOwjox51L2V4hX67JmYAE
         SMfVM184/24Af9bNlXrcBuF5XvD+dp9885G9yjIRVHAww2ZtUBuzRwNxB+aOAsa/rZyn
         aBnmCxA+lj1PuhMo11sqSkbRCp9S0SqYQUNC+Jh4hnh8EtbDhC3+P55md9WsTgKML76v
         TAzJXHweeOKY6jdvUVHfIVB8qvFwX+PXbWzfmMr41jVMlHmLWilqTRNF8kmTaY/tcTL6
         +d+g==
X-Gm-Message-State: AO0yUKXA4ApV6a0k6pUjMJAD6+RT0JPQe2AXGR3a4KjyKtFqeO12sJ4I
        sHGb3PZBs1ZuNDL8SpbZMI802gXe8y2Xe1kH9dT8v8cEGwsCt6rReTFiLQAqiHq8nbbbir+AzZI
        HBem05WZPSvaE+1d1aDoPXDVMfWqrYxCIlmIDohve4ixR0s+AleGYSP0Nf9SR8pE65mZPfWwuGW
        ci5pV8UA==
X-Received: by 2002:a54:4511:0:b0:364:eafd:2697 with SMTP id l17-20020a544511000000b00364eafd2697mr1473615oil.58.1676394910655;
        Tue, 14 Feb 2023 09:15:10 -0800 (PST)
X-Google-Smtp-Source: AK7set8ckzBSvYvKffHSR9kx+MhjoJN8bdYl7WQAW88sdJYAf1ZjAuXtQj8VAA9ciHNcY8zcaNqPDA==
X-Received: by 2002:a54:4511:0:b0:364:eafd:2697 with SMTP id l17-20020a544511000000b00364eafd2697mr1473585oil.58.1676394910338;
        Tue, 14 Feb 2023 09:15:10 -0800 (PST)
Received: from halaney-x13s.redhat.com ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id h18-20020a9d6a52000000b00688449397d3sm6581786otn.15.2023.02.14.09.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 09:15:09 -0800 (PST)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     devicetree@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, alexandre.torgue@foss.st.com,
        peppe.cavallaro@st.com, joabreu@synopsys.com, mripard@kernel.org,
        shenwei.wang@nxp.com, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Andrew Halaney <ahalaney@redhat.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: net: snps,dwmac: Fix snps,reset-delays-us dependency
Date:   Tue, 14 Feb 2023 11:15:04 -0600
Message-Id: <20230214171505.224602-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The schema had snps,reset-delay-us as dependent on snps,reset-gpio. The
actual property is called snps,reset-delays-us, so fix this to catch any
devicetree defining snsps,reset-delays-us without snps,reset-gpio.

Fixes: 7db3545aef5f ("dt-bindings: net: stmmac: Convert the binding to a schemas")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v1:
    * collected Krzysztof's review

 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index e88a86623fce..16b7d2904696 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -552,7 +552,7 @@ required:
 
 dependencies:
   snps,reset-active-low: ["snps,reset-gpio"]
-  snps,reset-delay-us: ["snps,reset-gpio"]
+  snps,reset-delays-us: ["snps,reset-gpio"]
 
 allOf:
   - $ref: "ethernet-controller.yaml#"
-- 
2.39.1

