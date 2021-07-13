Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9832F3C6EF9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 12:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235716AbhGMKxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 06:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235813AbhGMKxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jul 2021 06:53:48 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3244C0613EF
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 03:50:58 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id me13-20020a17090b17cdb0290173bac8b9c9so1162418pjb.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 03:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jpLLVifshAbN8p9woBgv2ZTKXWPkKhiksBb+TTgeAU0=;
        b=xPiyCCSNVpUMFrtC2LlEfZacKYLM5pphD5lCNG/nuXs3LaUM5dOdfAlFOW8nZwkqhu
         KkEF7hs6FWetfVpeyk/kj3vIOQp4c6kMkbj6KB3alHAs2XmY8I3JJLGZsAfy8sG9X+dY
         MlDtHTK4uyqX6888rCNx/o5Z7cT6DVqqrP4t3QalqFpSyc4jzUya9kWF44FBWSom0UvP
         k2s8/NkxjOW2mRNP0ZkIt0ONSWCgLwQWrPScrazAgHeRnZd+2gznoA9yhDKk8YDfK2w+
         yGYMNjQG8zE+vM4M3R7yjJNtvjpVzhwmWwlT3+wIeF14JFd7vkYNAXazbJKODKH7zP7X
         H+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jpLLVifshAbN8p9woBgv2ZTKXWPkKhiksBb+TTgeAU0=;
        b=oFw8If3XXFs92CyPopo5cN8YwOCAd46MD1/+x2gBUYg73C13zebNHYQVQ6kFJwL1Rp
         xnALwBmK5Eq/4dJQe/p0kBZTlJ3EWDX1pSbEtgzyQiULIenrPwdsjp1MPnlcF3Bms5LT
         Y1xILQ8QGn7MEvz3OaJu4jkcQjdnO1tae5vGcKMj4aeCPNo8jtbqhLb6jOyu4vOzaZEF
         0IK9HJKZsyMCBoz7D1/cHPq1ALa0sKSTq4pnufCdEXK1Ww+5bzpJALTHWKkoehQahmoQ
         /LhvTNF6572UgeJI2ajl4qq3t5+I713VCeF7EEHoDc45ZkyLgx9OYJHqTDexqKNR5o5G
         jETQ==
X-Gm-Message-State: AOAM532in1AngOYcaCm5A3mbuOtZ1ervAHqLga/jtOhQKwTxFNHS6sma
        h2O+qIvta3HUYV5/dD1q/9rS3Q==
X-Google-Smtp-Source: ABdhPJyA0h7pGPn9Q2oO94AvZyMMvb0OAUTS7pkEtEgXnaYJk7eDeP5GAW7/sEilxZeKxmzO7loJrw==
X-Received: by 2002:a17:902:9b87:b029:11e:7c15:a597 with SMTP id y7-20020a1709029b87b029011e7c15a597mr3091660plp.6.1626173458228;
        Tue, 13 Jul 2021 03:50:58 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id m13sm18415675pfc.119.2021.07.13.03.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 03:50:57 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org
Subject: [PATCH 4/5] i2c: virtio: Update i2c-adapter's of_node
Date:   Tue, 13 Jul 2021 16:20:33 +0530
Message-Id: <5465df68b2e18d510fa47e691907287fe655fe8b.1626173013.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1626173013.git.viresh.kumar@linaro.org>
References: <cover.1626173013.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set of_node of the adapter from the virtio device to enable automatic
parsing the of the I2C devices present in DT.

Cc: Wolfram Sang <wsa@kernel.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
Depends on:

https://lore.kernel.org/linux-i2c/984ebecaf697058eb73389ed14ead9dd6d38fb53.1625796246.git.jie.deng@intel.com/
---
 drivers/i2c/busses/i2c-virtio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-virtio.c b/drivers/i2c/busses/i2c-virtio.c
index 0139cdc33cae..cb8cfae2748f 100644
--- a/drivers/i2c/busses/i2c-virtio.c
+++ b/drivers/i2c/busses/i2c-virtio.c
@@ -223,6 +223,7 @@ static int virtio_i2c_probe(struct virtio_device *vdev)
 		 "i2c_virtio at virtio bus %d", vdev->index);
 	vi->adap.algo = &virtio_algorithm;
 	vi->adap.dev.parent = &vdev->dev;
+	vi->adap.dev.of_node = vdev->dev.of_node;
 	i2c_set_adapdata(&vi->adap, vi);
 
 	/*
-- 
2.31.1.272.g89b43f80a514

