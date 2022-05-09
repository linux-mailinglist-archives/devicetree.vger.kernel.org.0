Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CFDB51F61A
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233832AbiEIH4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 03:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236546AbiEIHxD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:53:03 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E99201B3
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:49:10 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 1-20020a05600c248100b00393fbf11a05so10237456wms.3
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qMrSL3AMHGC+RTK3h8kNDAa260PauJUqXlYjnxZrCPw=;
        b=j8P/nWstf2G5gLaKTxZaAiqLCVOFotDTnu2DFmPNl9kH9oH5DoETD+nmuufHH5yH/V
         MC+xp3DhGDu9f5UrP8EFmn74sOiYY1T7vcCv4vYfDQWbMgAmftI6FWb5fOsi88qZu6/b
         3oTkMitgehUqVRveNC7/2GmBk26P7cOxsFmePBDbL3QdMvKA8dfoEHcjYCzjUVeXVZAR
         DXNSbu/WBCnAIdw7L4+TTJR6C9W+hQ+Uzz/HjZPGhF4nRLpxYtUe3Cp/yAHLTZWJ990K
         FJlFuUkfsYpaOKpdlmX2Llth5Zk1NsSF/pMzV8UlhdJTkwZ7h9eZ7vFSqxxXIL5O29iD
         KA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qMrSL3AMHGC+RTK3h8kNDAa260PauJUqXlYjnxZrCPw=;
        b=mG+3UoxdHcBwGh+ibmUA78o2JmIUGyJhB8fGnxIFuTYJEKDu1ACYTBGHZZX+wOrj5K
         qQsJYYiq+tFh2ZFUXXx4EBVKWtaqPMfnOdfDSeC7yzOPmsh7w/DTIOsTqcu0VmOG9REc
         fHPGM4wPGAG3J1S2G8qEEttC1vCltMTaeVqaEMTnK4D3PbtRMpZ7H3tJ25nS/q01ogqc
         38dVr0USCJvbPn5QfQ5hVBOAWhJYQMtXzApWhvXiZKyDwLrvp34XCDPQ5PbLbllUqZOq
         tAOxe97/MpsPxw9HD2meIIK6Jyeg/qrBmd5+/Wya14p+UGRXJlI69OVsU56TCQsykWFI
         IlJA==
X-Gm-Message-State: AOAM5337WOy/f8hd4juQOGiL1MgBAzJDM1fhKIMoWpoVLuY7VyvFtC/w
        nzKaXg9LeyNh/e6FyPPfCozUpQ==
X-Google-Smtp-Source: ABdhPJyH3fd92bgA2uhnaxAe8vtAphLXWX8wAKMdKQ1ZnKM4LCqbUKVDjIMxph/XhaUGywElhXsEBQ==
X-Received: by 2002:a05:600c:20e:b0:394:2985:6d0c with SMTP id 14-20020a05600c020e00b0039429856d0cmr21057310wmi.106.1652082548836;
        Mon, 09 May 2022 00:49:08 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id bw22-20020a0560001f9600b0020c5253d8d8sm11784768wrb.36.2022.05.09.00.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 00:49:08 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     alexandre.torgue@foss.st.com, andrew@lunn.ch, broonie@kernel.org,
        calvin.johnson@oss.nxp.com, davem@davemloft.net,
        edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, joabreu@synopsys.com,
        krzysztof.kozlowski+dt@linaro.org, kuba@kernel.org,
        lgirdwood@gmail.com, linux@armlinux.org.uk, pabeni@redhat.com,
        peppe.cavallaro@st.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 3/6] dt-bindings: net: Add documentation for phy-supply
Date:   Mon,  9 May 2022 07:48:54 +0000
Message-Id: <20220509074857.195302-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509074857.195302-1-clabbe@baylibre.com>
References: <20220509074857.195302-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entries for the 2 new phy-supply and phy-io-supply.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/net/ethernet-phy.yaml          | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index ed1415a4381f..2a6b45ddf010 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -153,6 +153,16 @@ properties:
       used. The absence of this property indicates the muxers
       should be configured so that the external PHY is used.
 
+  phy-supply:
+    description:
+      Phandle to a regulator that provides power to the PHY. This
+      regulator will be managed during the PHY power on/off sequence.
+
+  phy-io-supply:
+    description:
+      Phandle to a regulator that provides power to the PHY. This
+      regulator will be managed during the PHY power on/off sequence.
+
   resets:
     maxItems: 1
 
-- 
2.35.1

