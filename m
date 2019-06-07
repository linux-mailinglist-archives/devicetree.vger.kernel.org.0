Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCBFC386A2
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727693AbfFGI5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:12 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:40411 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727633AbfFGI5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:11 -0400
Received: by mail-wr1-f66.google.com with SMTP id p11so1315141wre.7
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aNrOP9bVL8WzVy3bzvsSNv+Sb0/Lb3pHrKp7Bekeixc=;
        b=cjb6qcY3L1FVfrYmUwzIy0VkpN6BDjsbZZMFOM7FoHLonsrmUhjkR5K67jGdT/lkWQ
         m1EsLAPt0M+2H+zVDZs/xmAU8F+ou6qSKR8SqbxW4h23LzXi4lEyYVM07mXgOTJtlu/D
         mtnJ/5Zrb/7IafTDfAz5E0MsS4lZEia1z/C44kbsJUJS/I6a3EcWI/UE/zvBlAwyvOHH
         /4DeqmVy215xmQj5xX8S+T8mGEnIWgSOVsW2umlRlxMnzNk7tsl74HO4/yR7eNnHVtHa
         IH+l6o/tsfoZ+cR30bMAHIZ6uKQ7O5uF7pDeUVJhIXM+TZUs6oVPoLds/5jRUorn91Ts
         RuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aNrOP9bVL8WzVy3bzvsSNv+Sb0/Lb3pHrKp7Bekeixc=;
        b=YcDGRlB7kpDhwEY90I09oJG6BucaRgPBeLCdqjJ99W2Kw4QR6JwNAeuYhsZx3l2qKS
         VdxnN0Y6+tv/fKT3FWw9MmN3xy1wWgIL+UzQyxr4uExp3S35OobrNDhIx2UiZo04YCfM
         6pOfhxQS4JvoAN4mltB6i+C3AdVVm68LCEu4TzZKStbx33uiRDoPMlaAZcUbyE9uJLm4
         hXRvf78GOF/efbMHu9kZnekRy5pj9k/slYUn8NedysLechubk2uat3DmNWHwVBDl9wul
         M4pE2/pNMf7EKsZQa1b11GXjZcHpb8oGqf5bmqgayfB/rjGb/JHC9V4va7aO6PKr9RRr
         OEsQ==
X-Gm-Message-State: APjAAAWQm79VuOAvlW/xJnZTZ4wS0Q3nv2GWkarKAdNrI71x8q5Zy2/s
        0VoIuRkg75a/pEGKra0fzn0/2A==
X-Google-Smtp-Source: APXvYqxbkSa2FvpzRrFhR3bjFZae70/IKTrI88s7YHzN1zi7y0jrxItssV8DEdhia6tZLf+gx9z9OA==
X-Received: by 2002:adf:dcc2:: with SMTP id x2mr18944862wrm.55.1559897830398;
        Fri, 07 Jun 2019 01:57:10 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:09 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 3/6] soundwire: core: define SDW_MAX_PORT
Date:   Fri,  7 Jun 2019 09:56:40 +0100
Message-Id: <20190607085643.932-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds SDW_MAX_PORT so that other driver can use it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 include/linux/soundwire/sdw.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index aac68e879fae..80ca997e4e5d 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -36,6 +36,7 @@ struct sdw_slave;
 #define SDW_FRAME_CTRL_BITS		48
 #define SDW_MAX_DEVICES			11
 
+#define SDW_MAX_PORTS	14
 #define SDW_VALID_PORT_RANGE(n)		((n) <= 14 && (n) >= 1)
 
 #define SDW_DAI_ID_RANGE_START		100
-- 
2.21.0

