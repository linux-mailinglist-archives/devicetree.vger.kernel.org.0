Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CEE9351DDB
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:52:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234928AbhDAScZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236256AbhDASWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:22:43 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65292C0613AE
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 10:41:24 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so1297352wmj.2
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 10:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CayjI+ZaxBb7IanGhDGf8oqmhhOv5Y1z8vyrQ6G3bP8=;
        b=MCVPtRcKJoJ+pAVgk1hRwNOSRJ0I9twTt4M5/eOLZeR1a2TRHIg+bDM7smm3JmKGng
         QuE7012Xm26zASXFmkJt0ZUMXAIZbQAKYE0X0jQOkQe/woZNRpuYUDhLzaecOheNhmpL
         8X7ydrIMOZa0RvGZjE4YAeGZFqn3/RNPzIQTZLuyIY2T3tI1QafeQbEOp198+cXYPwkQ
         fFykFt7IPhSskehBBWpKq+HSxL2hNyQ1hI2w2iaDoywf+fAD3vNVw+nf2htX7arZjSHn
         4Ii/W6MPFPmXqMo52v0GJdz83S1cXFiBWLzutvL5XJDVr30zzHGjYO2JNjs9KmqI9e18
         a6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CayjI+ZaxBb7IanGhDGf8oqmhhOv5Y1z8vyrQ6G3bP8=;
        b=GukWd3aUegjaejFCPefsZkkMd1lAimtchJbovLcnnJu6boP/OoCbA7eKjtci39Pc9w
         /6m5D96FREyXOoMKBaQQBiUfVP6DhblftfC+IQFjxwAxKS0RCAdusFsKXLFImMB40JxE
         w2goi1DFMZ/Nwx8c70d9m1MCdSW2hp4TT0yLS6RXFhkBvAxSqgqCXTyNooZ1na3Zbnzs
         DwYqzb5xYNsQ0DK2MZzIMC6uyokdd3X5ymTYgyprxs8mE6GEPo7+Nj84vcLlcYWrvU2F
         g/9fLrxH/OVhr5/jg2p0JiHDx8C25xe95ic2qEWegEp5Svmk1cllSxbmhZop+bAo+xpj
         GQlQ==
X-Gm-Message-State: AOAM533tYcGDubSrpXNj9tU1bbpTI7g1J+BB3QecftTvOgC1tFh5OLl+
        sAAISjuTPyFmxll9kaXoLMK9hw==
X-Google-Smtp-Source: ABdhPJwGZLId2P1JjUoqybfTseZLQ2z+C0bju3PELh8e13IWbbsx/liN682yKgj9bR5s2H7KGtRRpg==
X-Received: by 2002:a05:600c:2f08:: with SMTP id r8mr9172254wmn.95.1617298883159;
        Thu, 01 Apr 2021 10:41:23 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o8sm9070242wmr.28.2021.04.01.10.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 10:41:22 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org, jonathan@marek.ca,
        dikshita@codeaurora.org, dmitry.baryshkov@linaro.org
Subject: [PATCH v3 0/2] dts: qcom: sm8250: Enable venus related DT nodes 
Date:   Thu,  1 Apr 2021 18:42:54 +0100
Message-Id: <20210401174256.1810044-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V3:
- Applies cleanly on top of robh/for-next relevant binding applied
- Add Dmitry's Tested-by as indicated

V2:

I noticed this series doesn't apply/build against device-tree/dt/next

- Adds dependency patch from Dmitry
- Adds "#include <dt-bindings/interconnect/qcom,sm8250.h>"

Depends on dt-binding:
https://www.spinics.net/lists/devicetree/msg406892.html

V1:
Adds
- videocc
  The clock controller for the Venus core and codec blocks

- venus
  The SoC DT description for the core, encoder, decoder + associated

The second patch is contingent on application of this pending patch
https://www.spinics.net/lists/linux-arm-msm/msg80960.html

Bryan O'Donoghue (1):
  arm64: dts: qcom: sm8250: Add venus DT node

Jonathan Marek (1):
  arm64: dts: qcom: sm8250: Add videocc DT node

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 73 ++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

-- 
2.30.1

