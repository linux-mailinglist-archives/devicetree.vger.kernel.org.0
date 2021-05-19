Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6E2B389184
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:40:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354502AbhESOlS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:41:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354484AbhESOlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:41:03 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21723C0612FD
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:06 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id i6so2311263plt.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GuVgCqdDVbpVqTxpQsc56DvhHyMstWv4OtUHtXIMiUo=;
        b=KMuY5RNLdpiEhbr2tQeG5s6v3pPiLIlI1eHS7+xBwnBDl4QKs/qJkehAf/jhLtG9Ka
         SIMGaIbNYqABeb8L6/tNJJplCjRSBVzCW/91ym1uWcj4oIftLXssT1qc1fFe7CBBo63I
         FzGdRLgD3Pui+VDruj4QV+i8iAdPOYyfQCtyMdpEp+y94hmEG/3uioaphf7Too+y87U7
         Gvmcr6KoudOm9eLo8Nj4ZCZQ09SIqlBLVmTdNVPGjOso6Bsmmq5Qf29Zwj1vGLXMilAy
         DTGU6Tb4sfRlAdr5Uu05Su9CUhbunrNfACptzwkqPBYyBBsIYnA8EcDXchIHgO7aXyIU
         wrtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GuVgCqdDVbpVqTxpQsc56DvhHyMstWv4OtUHtXIMiUo=;
        b=TbEOp/1Zope/Lj/UPmLX4jPHVJQs/vGF6FAdZGd9oANgEq7S7JBqAFgu8N6qMXkfh9
         eUBIUMC3tnd2Z9MtARKzP+4Ocze+dvA1oENjj3MR1uvFrkUCZARbx+Xf7BldTJpdyEDq
         3XhrqSvH7fovfzmE3DOWJynjJX3vVMdtBXawzmPoUEOuLfi/bRGZ1VAdBtFM4B/icm7b
         eKXTMVUdgiqEhDfG/SRSVS4E5shceg4z1+A07S8EuHeLJ0+GCzSzyvdGWoUG88wXYFv1
         u7I0Lr4UgGOKbRogZ9NG2xvGenDyBamjJFxwZp2HwIEPinBeOH/j8NJGPHfzGTvHtyoJ
         zXdA==
X-Gm-Message-State: AOAM531ga8QmBsaf8vIuQJKkD7C2n6vRm4VhVVgLTBIkWTuFsG0/VmjX
        j/tC5l/vbuhnm7kFgIqL7skSRw==
X-Google-Smtp-Source: ABdhPJx6hdlVq88LAcpGG7h74r7c6fsEv4sgmH5s5r4MC6EmcaFYn3potNLrbADj38Bf6Dwiy0Ztrw==
X-Received: by 2002:a17:902:f545:b029:f5:4b82:9cc9 with SMTP id h5-20020a170902f545b02900f54b829cc9mr593285plf.68.1621435145578;
        Wed, 19 May 2021 07:39:05 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.135.250])
        by smtp.gmail.com with ESMTPSA id o24sm9239515pgl.55.2021.05.19.07.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:39:05 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH v3 15/17] crypto: qce: Convert the device found dev_dbg() to dev_info()
Date:   Wed, 19 May 2021 20:06:58 +0530
Message-Id: <20210519143700.27392-16-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
References: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QCE crypto driver is right now too silent even if the probe() is ok
and a valid crypto IP version is found.

Convert the dev_dbg() message to a dev_info() instead.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/crypto/qce/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index aecb2cdd79e5..8b3e2b4580c2 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -179,7 +179,7 @@ static int qce_check_version(struct qce_device *qce)
 	 */
 	qce->pipe_pair_id = qce->dma.rxchan->chan_id >> 1;
 
-	dev_dbg(qce->dev, "Crypto device found, version %d.%d.%d\n",
+	dev_info(qce->dev, "Crypto device found, version %d.%d.%d\n",
 		major, minor, step);
 
 	return 0;
-- 
2.31.1

