Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3965469530F
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 22:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230383AbjBMVb6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 16:31:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230314AbjBMVb5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 16:31:57 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A54FA21963
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 13:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1676323876;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=S8Jx6cSFIcaW45Hs8sr354ULKB9oTW16m++fk2w9xe0=;
        b=SDq0/9wDpiS5oqRoemC64wrwXUA0MquXtxK/+nvCVWZonrAbekCrLhwbNTLswCMLDJfreK
        wncUsMTjURBJxBe277gsDdusccInqRY2jwNcebIWmzsScpdD7KPax3qufIvB4GOnPbQHb7
        AuhIifjkQyAi9vfBUEbkzqXSQnKIkZU=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-66-9OzxJiJrMRiX3iRpsa2uVQ-1; Mon, 13 Feb 2023 16:31:11 -0500
X-MC-Unique: 9OzxJiJrMRiX3iRpsa2uVQ-1
Received: by mail-oi1-f197.google.com with SMTP id r22-20020a0568080ab600b0037ae28e49d7so2760719oij.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 13:31:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S8Jx6cSFIcaW45Hs8sr354ULKB9oTW16m++fk2w9xe0=;
        b=XrW2JB+SD7E3188FFAR9e+6bbg41JqaPRMUIZ0KY6x7zl6II5wQMJ+hAMDFGRtLFzY
         AEDiMg3lrZ0e2IC0jJBkPhUhvVjTz27M+6+nncPoddaZWhwXQ7xCSfa0+rQ8WKOwjKiM
         FKqhNDLIdLf446+HKvIts/Gkj7l8a+dNxOTnm5pw8vCWwxRBuKa0QT8XHu8tzcyVmGNZ
         YH4kGE2knRto1RV8X8qhDfs1DVCVOe96+xoHHI424GH1UPiY4/NhuevXuoWi2300ex2O
         O1DlaE8EhqG/V5TICBilssNuRy2Z84sB0km18sFDT6w/VrphdyBC7t6ABWTJP5Kgq/Nd
         fgcg==
X-Gm-Message-State: AO0yUKUDnpEFOwjUrPIb3R92sByVcPWvjjErIAhr10bCqocYRIR4eOSh
        U7Q+Ab9TGx36HXo3rOSzuXNfDX6ipe2AL2lthxluuIMnQzH+cAi3u1dOmQynFWlihosXZKA83zZ
        F4OtYbsi7V1kXBhMlvc/DQwZBIeOfN/AFc2fMakbJux9FHC+eA9jowsvUDIo0LwXh0AwpPnsGlS
        6RmSEUOg==
X-Received: by 2002:a05:6871:54f:b0:163:8b58:ab23 with SMTP id t15-20020a056871054f00b001638b58ab23mr15125913oal.35.1676323870663;
        Mon, 13 Feb 2023 13:31:10 -0800 (PST)
X-Google-Smtp-Source: AK7set8UBE4VIVd2o9PdNKsl3q4pn7Mu5YmJ8E0oL9yKlg3DnN3+1x4FKFROitPge1Hvry3cpiLsIQ==
X-Received: by 2002:a05:6871:54f:b0:163:8b58:ab23 with SMTP id t15-20020a056871054f00b001638b58ab23mr15125883oal.35.1676323870229;
        Mon, 13 Feb 2023 13:31:10 -0800 (PST)
Received: from halaney-x13s.redhat.com ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id xl6-20020a0568709f0600b00163263f84dasm5169880oab.12.2023.02.13.13.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 13:31:09 -0800 (PST)
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
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 1/2] dt-bindings: net: snps,dwmac: Fix snps,reset-delays-us dependency
Date:   Mon, 13 Feb 2023 15:31:03 -0600
Message-Id: <20230213213104.78443-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
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
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
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

