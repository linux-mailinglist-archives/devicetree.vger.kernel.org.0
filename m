Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6973501604
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 17:47:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240213AbiDNOqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 10:46:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349427AbiDNOUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 10:20:08 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A159A27CB
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:11:13 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id b19so7070577wrh.11
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=pyYP5jTZGe1iIdHDva19cy+FXngavEB3nCuwJeLMONWVdDmXn0E8RKrg+0rOq0u3tW
         d0JxgTsu84DPkeNL91wMOiRqMerMqGQqqJqb52XEIxh7FQ0PhWL5UZwNnNnVUWZ3V4EA
         1JsqvSS5rGl+OBMZulolrTIV1s+Dj98XZpaKtntpE3dFyRfv7QHIUPs+ZOy+fYhRuXFC
         QYoA+42MaRKLVc/Ou/CVFzuwLCWyGleWt/t4ubPVFMYYdB2kWYC9PaEYDiqSQkSiXHX0
         xnm1IBIjDzR10x03a7FraNHA+10hzWX+h5BuC6scYa+iLx/PoraVGtC2EvuT2KMcFNBM
         XWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k3gcIDeCZ4FNN7UJi4DooXXT3wAgGZnORf6hg3bDQ7g=;
        b=rt7GQOaSo4FhqLEeNo/sdaTlzQawTYp+8Ot4KCd/vrcou8JJO8eCxYeYZAFxOvWHQQ
         6ti3qKAOyCf/T7Xjg+HHs6Uka0eSisMV9GMUsRdeHZP1l3rU7gqx6d3R39fyIT/oVeYC
         3S3YKeMx7k+CRysWXew3Fm2R1bcKY5BNEmRpongTzCESF5DGxYSXWa0dxgou6uNUuC8h
         QHk2JU+r3G2OZ5S/KnTNaR6X0Rw02ndBjKSrlE2bizV2wvdLMrNFwtZt0x/G9fxc/Ybg
         EhKle+6ppfDc0s78Gwa6TUKCXo5I+bCKp7I/lD01grcNTvmhfNIobwbBkAb39ZmWA9T0
         w0FA==
X-Gm-Message-State: AOAM532/h3f74vC8Zn3Dlau9DTT9+DAFK+2Ie8sc1jDNjLl3I/raDaB+
        ZZrzYPvX3W9oxiwD9UY5fKXnRw==
X-Google-Smtp-Source: ABdhPJzd87u4VitFe0hrj8sBPdroXixiqIUTNvmbFlySF6f6F5CRIzf/Iv3BIk/sb2XQY5K0qxBF3A==
X-Received: by 2002:adf:f98e:0:b0:207:9eed:60d8 with SMTP id f14-20020adff98e000000b002079eed60d8mr2304802wrr.566.1649945471907;
        Thu, 14 Apr 2022 07:11:11 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 61-20020adf8043000000b00205e1d92a41sm1934551wrk.74.2022.04.14.07.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 07:11:11 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] media: dt-bindings: imx412: Add regulator descriptions
Date:   Thu, 14 Apr 2022 15:11:06 +0100
Message-Id: <20220414141108.1365476-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414141108.1365476-1-bryan.odonoghue@linaro.org>
References: <20220414141108.1365476-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The imx412 like many I2C camera sensors has three voltage rails which
depending on platform may be necessary to switch power onto directly.

Add in as optional rails so as not to break anything for existing users.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/media/i2c/sony,imx412.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index afcf70947f7e..26d1807d0bb6 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -32,6 +32,15 @@ properties:
     description: Clock frequency 6MHz, 12MHz, 18MHz, 24MHz or 27MHz
     maxItems: 1
 
+  dovdd-supply:
+    description: Interface power supply.
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
   reset-gpios:
     description: Reference to the GPIO connected to the XCLR pin, if any.
     maxItems: 1
-- 
2.35.1

