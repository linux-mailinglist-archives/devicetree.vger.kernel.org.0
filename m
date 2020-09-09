Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9DC26327E
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 18:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730777AbgIIQoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 12:44:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730987AbgIIQMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 12:12:48 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1243C0612FE
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 07:43:01 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id k25so3859622ljg.9
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 07:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fbds+t1ZnFoCEkxj1/mr3T/pqQY9+u5UlZ3GW4t2en8=;
        b=RBf9ImIktNqjjf5ULDVjein3dUP72WGKbx2K4R3px5gjd66lkRDZ7e+cm216qNwpD2
         NR1adn/mhVy5KRWZTXd6hgxEHWg2crI7A960lb1OuSOMJzYmyMIrNOPnhoLsq7PhsMA0
         Au4GhwaA8Frwo6+2s3+EutWFXO80ToppvOUcHIZcp8X7H67n6WBvsQjm8nIh4X0UcdQ5
         u1cdP2hOIIRoL7v01N5dwEoTTxL+d3pBn5U069iUBIzdRZTKDhiAVKv/cK0m6e8bEgu0
         /j30Ri36tgig3c9rq4PtNANF3r9SeN6ZokikcG7Zr/41LHWdjYqjtoWF5oQg++f6ZF19
         JkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fbds+t1ZnFoCEkxj1/mr3T/pqQY9+u5UlZ3GW4t2en8=;
        b=L7fn5Yfx7KkaYOOM5XNCW1zsHZgLtLWLUOMp04Hoi5XjtkvlYI/kY8Kb9KEgckSUD2
         LZN5MdeC4YvqxN2TspxRy/SQTzQAeI/l3i0FRmEFC7wDx1tJu2A1mCG8yTsuOmTxW4+O
         sAx/gEKXS1dli6uMQYdmzNwXRvPYnrbaMPGJ+eEMp/J2mV7KC3fKVSoIexM6LtS5Vi1h
         OxcBYHUtFUJHNhD7bO6dYmmNGRC0ieEMAyz8nSJ9ZDyo8LJWoOeIvQyJmNQgmCQgM0qj
         0N4fENipn/gBZvkcr88g2PmusbmEQUmqwbuf25P9RMDjd5J/FxfYel2DMnQYWtK8YXHG
         jmWQ==
X-Gm-Message-State: AOAM532hWNI3DsjtHil1KcYtbiHwFn1zyFf2E+WCsm9muBaaOtF+eqUt
        FXDhMppYFLL2qutaFPJcL0ZYgg==
X-Google-Smtp-Source: ABdhPJz5kb+Of6IhjilhV2MUlOJG0rCvdvpOh34KeNE6rObp9QcKkuLMCHewb8SEcOtQ3aBSy9hybw==
X-Received: by 2002:a2e:920f:: with SMTP id k15mr2147380ljg.353.1599662578123;
        Wed, 09 Sep 2020 07:42:58 -0700 (PDT)
Received: from eriador.lan ([188.162.64.155])
        by smtp.gmail.com with ESMTPSA id t12sm621665lfk.26.2020.09.09.07.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 07:42:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 01/10] iio: adc: qcom-spmi-adc5: fix driver name
Date:   Wed,  9 Sep 2020 17:42:39 +0300
Message-Id: <20200909144248.54327-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
References: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove superfluous '.c' from qcom-spmi-adc5 device driver name.

Fixes: e13d757279 ("iio: adc: Add QCOM SPMI PMIC5 ADC driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/iio/adc/qcom-spmi-adc5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/qcom-spmi-adc5.c b/drivers/iio/adc/qcom-spmi-adc5.c
index b4b73c9920b4..c10aa28be70a 100644
--- a/drivers/iio/adc/qcom-spmi-adc5.c
+++ b/drivers/iio/adc/qcom-spmi-adc5.c
@@ -982,7 +982,7 @@ static int adc5_probe(struct platform_device *pdev)
 
 static struct platform_driver adc5_driver = {
 	.driver = {
-		.name = "qcom-spmi-adc5.c",
+		.name = "qcom-spmi-adc5",
 		.of_match_table = adc5_match_table,
 	},
 	.probe = adc5_probe,
-- 
2.28.0

