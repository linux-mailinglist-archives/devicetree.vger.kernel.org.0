Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE84244BFB5
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 12:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231877AbhKJLFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 06:05:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231825AbhKJLE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 06:04:59 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FFDFC079787
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 03:01:23 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id t5-20020a17090a4e4500b001a0a284fcc2so1528610pjl.2
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 03:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rypbS1jQhxD+minj90kbROlU6qvWZNB4H4fxz7GH45w=;
        b=eYRatg+R0Gnpu0ntSnjoAR3UJbJXsaS3FMVNytVmlu4z/lchxwcywHviyow8KILpHZ
         peHxX8DhCILn8gr+YXz0e6gC7m+FDmCIauCHyOrSBsf7XglKRj31iY+ux0u9RoWIdsyn
         TcwLupkN3acv4/WrKCmscLssMK3GUBvsWL9ZCLPEJPgkK+ByZIU5i4lCjzgJj5xLeeLs
         j5WTL7HCPhAZavVsCbwifeSd1yrDCPrBshyMEoLwBgdx8Hf8S+IjszH8SX5pSFtss4qi
         +eLKGhKXkawBFTvIH4M2onW6ta1DOYvgmFadzr7fDk0L/lpmUMBSOgwRr8lUHvXRGqQw
         hgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rypbS1jQhxD+minj90kbROlU6qvWZNB4H4fxz7GH45w=;
        b=o/zcC5RlDPbKj3ybuzDU0Apns6P+Mh1P+QQQNw92s3mrdPPtaEP5x3Oe1ODIJVkZf1
         hn88EUNaiXyDzy6oKidCnrmvVEZ7qXmWVY19G8O/iNB5JvXsXwe2pejOCXiqVyHb5hFC
         QM+8djqmzb+LvbYSV/tcSYdx6lvhJe33vWO4RnN15luMinDUSvrg/nzUpKfRVmEzeVj4
         Qejls/RDplMxqSv8McdnQELGV2Gvp/cH712DSlk9plKuZ4Who99ENu60W0JUxI29+uSB
         6Qb2CPsy+GIG9bPJcf25cfUTtx39l/r17SIoXC4Gje1nCxxg30dsPAFB+vyAzvmh65aS
         HGHA==
X-Gm-Message-State: AOAM53019G61O14FgM6FxCZDQgO2XNGFppKmEJFPYbdQc5TEL41PVTPa
        cyUCi/zg+9SQ5ZwLDfP5rBp7AA==
X-Google-Smtp-Source: ABdhPJwvoWR2oZDeYdoqZr1ekGHBsPNhFe4Jc1GeY9EG7ajne5OayEZpzV5griYK0v7u1FnOV7qDQg==
X-Received: by 2002:a17:90b:1c0b:: with SMTP id oc11mr16073161pjb.237.1636542083180;
        Wed, 10 Nov 2021 03:01:23 -0800 (PST)
Received: from localhost.name ([122.161.52.143])
        by smtp.gmail.com with ESMTPSA id e11sm5585282pjl.20.2021.11.10.03.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 03:01:22 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, stephan@gerhold.net,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v5 20/22] crypto: qce: Add 'sm8150-qce' compatible string check
Date:   Wed, 10 Nov 2021 16:29:20 +0530
Message-Id: <20211110105922.217895-21-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
References: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add 'sm8150-qce' compatible string check in qce crypto
driver as we add support for sm8150 crypto device in the
device-tree in the subsequent patch.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/crypto/qce/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index a7d7d7d5d02f..0a11ffacc2de 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -309,6 +309,7 @@ static const struct of_device_id qce_crypto_of_match[] = {
 	/* Add compatible strings as per updated dt-bindings, here: */
 	{ .compatible = "qcom,ipq6018-qce", },
 	{ .compatible = "qcom,sdm845-qce", },
+	{ .compatible = "qcom,sm8150-qce", },
 	{ .compatible = "qcom,sm8250-qce", },
 	{}
 };
-- 
2.31.1

