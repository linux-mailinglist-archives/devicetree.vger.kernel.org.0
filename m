Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA04B6D2A31
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 23:47:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbjCaVrl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 17:47:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233099AbjCaVrj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 17:47:39 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B211121AA1
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 14:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680299177;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BWAjKcn7KmjDYRHOryY9yAx4ZqStu9DbyRutO1cNTys=;
        b=RJb/g7VAYMR7AL8SBnVpWgQUz3B+y6gDzW59JBGv367j00XpwtonLJhq5dimELFxbXI5cq
        EwfzsOomESGVj+ZR7bejoKMyFp9ssU33+ny2XcGptPGs8EJ99zdHkqLZg/VwxFMDhZtM0z
        InRF85ekBCqJN6vqhWmS2N1HKk97Bk8=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-186-HoCGhmD7NgigV_sYYgRRrw-1; Fri, 31 Mar 2023 17:46:14 -0400
X-MC-Unique: HoCGhmD7NgigV_sYYgRRrw-1
Received: by mail-oi1-f200.google.com with SMTP id r4-20020a056808210400b003897356756bso1993538oiw.13
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 14:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680299173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BWAjKcn7KmjDYRHOryY9yAx4ZqStu9DbyRutO1cNTys=;
        b=Z35pLXkMqB3Kxq55kqeOfsRV5IN47ICo66UldPUqNLGYqgoP3eCoQeq/GElvHvFa6N
         5H0RmeL8IqAbIbwDnJNhrIXpdrATGm77NVEDDbFRWjJvM+B5IjJb6H9pTFi+21zscTFT
         UYX8QhcJln76iaMVpsN8BNDqIjuO1jcMxLSTs6XzrFCavlyHfb8IusELGPWfHsKuf2Su
         59bBjp8ggHznmmd2fhHtmO5gfYE8gX5TURNHF7T3PhYmgw33vdRjnJedDIyUjoQF8B27
         ggT8gsrNXT91ztXVlf3H/Il5ZFHK/eZ40xNmNBeStmNnIQIbPzU4Ik6u6cGe8Lcq4ue4
         69Qw==
X-Gm-Message-State: AAQBX9d8OtF6HKUFxKCzlDtMKu2ckw8kyJaXmKZCePGea3V8php5/Mjn
        cDxiKQfeDRk8YoyJSaUiYVSeoUBVMlJ5r0t53OqqfWPxVZlpQjRvxq5GNGpHD5pwgwhqdzXbMqO
        ZqryJ1CqMtpIWulfTy5Fi3Q==
X-Received: by 2002:a54:4519:0:b0:389:2d2b:4b1b with SMTP id l25-20020a544519000000b003892d2b4b1bmr8396908oil.43.1680299173525;
        Fri, 31 Mar 2023 14:46:13 -0700 (PDT)
X-Google-Smtp-Source: AKy350Zx2tJIil7EtW85aEQyo8RTGjEHt7aKU8TOLaUPn71QidrVG+oC5h5rPNpRYe4KMVFNW/3RtA==
X-Received: by 2002:a54:4519:0:b0:389:2d2b:4b1b with SMTP id l25-20020a544519000000b003892d2b4b1bmr8396874oil.43.1680299173054;
        Fri, 31 Mar 2023 14:46:13 -0700 (PDT)
Received: from halaney-x13s.attlocal.net (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id x80-20020a4a4153000000b0053d9be4be68sm1328531ooa.19.2023.03.31.14.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 14:46:12 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        bhupesh.sharma@linaro.org, wens@csie.org, jernej.skrabec@gmail.com,
        samuel@sholland.org, mturquette@baylibre.com,
        peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
        joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
        richardcochran@gmail.com, linux@armlinux.org.uk, veekhee@apple.com,
        tee.min.tan@linux.intel.com, mohammad.athari.ismail@intel.com,
        jonathanh@nvidia.com, ruppala@nvidia.com, bmasney@redhat.com,
        andrey.konovalov@linaro.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, ncai@quicinc.com,
        jsuraj@qti.qualcomm.com, hisunil@quicinc.com, echanude@redhat.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH net-next v3 01/12] dt-bindings: net: snps,dwmac: Update interrupt-names
Date:   Fri, 31 Mar 2023 16:45:38 -0500
Message-Id: <20230331214549.756660-2-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230331214549.756660-1-ahalaney@redhat.com>
References: <20230331214549.756660-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bhupesh Sharma <bhupesh.sharma@linaro.org>

As commit fc191af1bb0d ("net: stmmac: platform: Fix misleading
interrupt error msg") noted, not every stmmac based platform
makes use of the 'eth_wake_irq' or 'eth_lpi' interrupts.

So, update the 'interrupt-names' inside 'snps,dwmac' YAML
bindings to reflect the same.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v2:
    * Add Krzysztof's Reviewed-by tag

Changes since v1:
    * Dropped Krzysztof's Acked-by since changes requested
    * Changed interrupt-names items per Krzysztof

 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 74f2ddc12018..5a4737e969a3 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -105,7 +105,7 @@ properties:
     minItems: 1
     items:
       - const: macirq
-      - const: eth_wake_irq
+      - enum: [eth_wake_irq, eth_lpi]
       - const: eth_lpi
 
   clocks:
-- 
2.39.2

