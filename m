Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41BB36D2A33
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 23:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230444AbjCaVrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 17:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233084AbjCaVrj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 17:47:39 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BDEC21AB4
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 14:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680299182;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8lcrUOTtZQ8Y8eq1MxEjtzOYPZBObLg5qooJNdijlKM=;
        b=A+5rRcdv45SbQVM6kLjRSgEQfo1w7ink0y9VR6R74r817zZ5MbJPN58gs9vVFDNOTA9sGH
        EdqRrtONR8hJcSn3ahE9moy3elayYfmAMjhtwni97UowOJWDRLrXvyCM/Ml6VnLa8j3Kuf
        +lSeLYIhd8tedKbS+iluEYN7X6bfRu8=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-13-wCKNgpkmP5ayh_bbPZ9xEw-1; Fri, 31 Mar 2023 17:46:18 -0400
X-MC-Unique: wCKNgpkmP5ayh_bbPZ9xEw-1
Received: by mail-ot1-f70.google.com with SMTP id e2-20020a9d5602000000b00694299f6ea9so8783066oti.19
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 14:46:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680299177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lcrUOTtZQ8Y8eq1MxEjtzOYPZBObLg5qooJNdijlKM=;
        b=xBByMuuk/e2YI5XsqQGVUP//A0tjERkESbyijzIYFlArf9ktXsB+Z0YdaSc9xNHB63
         mTZ4JBAg22kkzD6Tz8vMMu7MQ++5BOWcUX/JcjsuBipe13y9/1LUL5cTr6slmLnXVvjx
         q/JchHja+gy5PGsYVYzd2FatUcHXmnmKMgsId2F6IqOTqFty/DKdzQX8m9JEHd9iV0Lt
         kfeWDvg9HKyCtYQ6fRLCu7RgjfvPrfVYWnZ6h6EJspFg550jw+tgom3Yqj1o99On/z0F
         MDbvTg2/vow1y6SF/emnWYwXEb+T1mjj9PlK3qXSjCjoaBdzYqLJGO0Xp4ixfwZ5+bY7
         MtFQ==
X-Gm-Message-State: AAQBX9dqLbaOdGbcKIiDBh10mdQBmjsNeZGTJt+KUqKj1Csq3xYVTiga
        WOiR9OGNBWDsmWoQ9s25BPENArjW4LhSmvkkEIDoHqPaPaelVIJ/o8FH+qcxgHtiF+nCUSuSE8l
        qc5zAGpiA9E4akTEdmnUbFQ==
X-Received: by 2002:a9d:6a4a:0:b0:6a1:6cf9:49ee with SMTP id h10-20020a9d6a4a000000b006a16cf949eemr4413168otn.9.1680299177282;
        Fri, 31 Mar 2023 14:46:17 -0700 (PDT)
X-Google-Smtp-Source: AKy350aUQ7W33R935fGo9TuSQD3HX9RxY871Aop63H4kyUDTxL9RxaeaTlk4Ws52w4rzbyNf1gKQ5Q==
X-Received: by 2002:a9d:6a4a:0:b0:6a1:6cf9:49ee with SMTP id h10-20020a9d6a4a000000b006a16cf949eemr4413139otn.9.1680299177094;
        Fri, 31 Mar 2023 14:46:17 -0700 (PDT)
Received: from halaney-x13s.attlocal.net (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id x80-20020a4a4153000000b0053d9be4be68sm1328531ooa.19.2023.03.31.14.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 14:46:16 -0700 (PDT)
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
Subject: [PATCH net-next v3 02/12] dt-bindings: net: snps,dwmac: Add Qualcomm Ethernet ETHQOS compatibles
Date:   Fri, 31 Mar 2023 16:45:39 -0500
Message-Id: <20230331214549.756660-3-ahalaney@redhat.com>
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

Add Qualcomm Ethernet ETHQOS compatible checks
in snps,dwmac YAML binding document.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v1 and v2:
    * None

 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 5a4737e969a3..1e7982704114 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -65,6 +65,8 @@ properties:
         - ingenic,x2000-mac
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
+        - qcom,qcs404-ethqos
+        - qcom,sm8150-ethqos
         - renesas,r9a06g032-gmac
         - renesas,rzn1-gmac
         - rockchip,px30-gmac
@@ -625,6 +627,8 @@ allOf:
               - ingenic,x1600-mac
               - ingenic,x1830-mac
               - ingenic,x2000-mac
+              - qcom,qcs404-ethqos
+              - qcom,sm8150-ethqos
               - snps,dwmac-4.00
               - snps,dwmac-4.10a
               - snps,dwmac-4.20a
-- 
2.39.2

