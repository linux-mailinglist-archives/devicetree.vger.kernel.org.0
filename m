Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EA0178E25E
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 00:35:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343830AbjH3Wf3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 18:35:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237283AbjH3WfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 18:35:25 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 501D71A3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 15:35:06 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99df431d4bfso14618466b.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 15:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693434904; x=1694039704; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lUJsE/IbwViG0qWxyMqWmvpU5f67FtToTgIAN58/gnQ=;
        b=faifw6qS1JY+TC3xJRF1uAkRxOqg+2Us4+O2j6Wl35MTvPLCvx1HNg3EGlN8g4giGI
         GjeZ+f0g6SlcBIWhonw9deuKKQKYjGTCE2xsGa4RTVDv/kqq3hG0zAncZ/kdc754zYPj
         4FpCpgewLF0QdT7n/yBAU7HiwPfziUe0artqWdnK6+PeSkb4ou6bsPDgJoFdhW1JLDUk
         sCEHJHtTqFhOaeLeb3MWCR1NzkiDxipRlKm+3QS0AWOkhmxqGMDs1CatBW00hbJ4nT4p
         QNKYiKIubASLh5PCVpQlvFtOuPfczjQMc8EPVWFnUu+A3tmgQNDE3yONvZRufzukvida
         8MZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693434904; x=1694039704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lUJsE/IbwViG0qWxyMqWmvpU5f67FtToTgIAN58/gnQ=;
        b=gzqnPqY0T0bjw3UIzXJzuqvJUcwG5yTjtWuAKETNiMa9EAiXBpJdJXN943U4h7zaZI
         yZDcJHnv0nEq3BsxZyl+dijjGVFiV8oQP31tO9JQHjm2K4+uAC6mxx3+7lns69uGjBRl
         D0YyX73uuSepv/V5vZFpuoJm+33oQ65/9h8jCSXDsMEQrEZkA/Nx2of72odj4HLY6rbC
         eUC5fk2l4im6UR5cbRKGddksyis2uZ2Bk8EbmoC4WCsSashr53MTW3ncmZpT58h768UQ
         seM5TPXmx182+7gEU5LoaYPzvOh0cLmo86xE9ZCnJTz9Nye0k0DVTKvj1mkTm+4+EYn3
         tDNw==
X-Gm-Message-State: AOJu0YwXcBSnV6VZfNPq48K2Ah6NeRqvkjo6GJIropERpTCXBX12gujc
        rJ7EELKQgMusxNCf7nJIqzx3rN0N3T2IhwjtSTeZ5A==
X-Google-Smtp-Source: AGHT+IFuvtSZyC/ZyAVYMYRqzuHbaGDwuwbCQZ6x1uKvm1iYzoVAGQXN7HtASDV8xE7fWPnZS3n/IA==
X-Received: by 2002:a19:e04a:0:b0:500:8f66:5941 with SMTP id g10-20020a19e04a000000b005008f665941mr2475516lfj.50.1693430036872;
        Wed, 30 Aug 2023 14:13:56 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25623000000b004f37bd02a89sm2516351lff.287.2023.08.30.14.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 14:13:56 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 30 Aug 2023 23:13:52 +0200
Subject: [PATCH 2/2] phy: qcom-snps-femto-v2: Add REFGEN supply
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-topic-refgenphy-v1-2-892db196a1c0@linaro.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
In-Reply-To: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693430032; l=869;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=rkGvm/uP3o+BPrXZ9OASaeUpr1X+J5fisqT1wJhd350=;
 b=nSuP6yC0wDbMiE97URjPi35b+qJ0KBMSeb/782bW8hUoixfduLz+NGIGXGWm0pI28AQBW/tWH
 CKJTBw7V3RlBkF1jGQOQXgGAKe5MgezRkaYRhIKsZrClHrTorwABIaa
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HSPHY is (or at least can be) one of the users of the reference
voltage generating regulator.

Add it to the regulator bulk data.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..2bc9aeef26f9 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -79,7 +79,7 @@
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
 static const char * const qcom_snps_hsphy_vreg_names[] = {
-	"vdda-pll", "vdda33", "vdda18",
+	"vdda-pll", "vdda33", "vdda18", "refgen",
 };
 
 #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)

-- 
2.42.0

