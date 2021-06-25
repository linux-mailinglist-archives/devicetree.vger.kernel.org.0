Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 104153B4B00
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 01:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbhFYXnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 19:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbhFYXnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 19:43:50 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CB3EC061766
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 16:41:28 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id g19-20020a9d12930000b0290457fde18ad0so11129495otg.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 16:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GB43Qv83etCrKhaYAdgawkvJOs7wqZSQJ+UfnnZLdPo=;
        b=uTO1yVoVNcktt7bgfLq0f+fRrm7sjF5n+hXSrMw/aT70/s4AaNhnhKiPoLhm9SaY1I
         ANsEIMab0nXCdUSPO/gNrGGv6CMao1JENpcVUdvKCOsTn0oWl2qav9uwSmWL+4QMn9kE
         UWOoycv6aYo9rA6nqHLuY2WeEAKRJKS4XBm+kbGfEHT/sRJgnqEXbm6WT9+fQy3xQkf4
         LymvMjcFMyObIs3EOOv0ZhjEcZuDO0BSXBJrmK5MNkk/VKBOIapnn/Cd4Nw3IX1VAsF+
         Lax473IhB97hZtclnCtNYW5cPHQtedJo5oV48vF8TR+oOU2hI92zB7YtZVKZmsBgoxd7
         +chg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GB43Qv83etCrKhaYAdgawkvJOs7wqZSQJ+UfnnZLdPo=;
        b=l6PDa7A/ppVZXlKbsMrdfTBgoKFSZpVkw9PHLD83w8iU3heCnisIAOMGhQ9kzYS0Ga
         EEdo5sxNRYucTDpsbYEkdwGloTPjFcLnZSQ2zZ2X8uZaaqmE2hGn6q2ycSY99XP851oz
         457etPwUF0y3PdZbVPX+2Xb1TCw5BwrzsPwMcriJdWxe79hN8QcGRDFc8XOi6yYrhVGo
         dFaPMH4G7YG7C2gsrQlCTx/gSathyTgQ+6PTHhKK6PnJTPY3J20pvVGhO4muK/PXy600
         I4/tY2OdmL10p6vFaCS26qylAYsNo012OaW/tgf06Mlt+D6mHq0cZqm4+BuO5oAswSj/
         pt1A==
X-Gm-Message-State: AOAM5301cyDYMTnDU7+YDgpQ0JXXTVGuc19dj4b781LGPqrFdCVROZye
        hN7UUX+IIpVaI9oKcOLNE/m8jw==
X-Google-Smtp-Source: ABdhPJxPKnfqmBkQi88yaGWabFD8gHr8dDzEuEX8c+aWyEZg2lACabJ27XMX5YJZJChV8zgKjkbH0A==
X-Received: by 2002:a9d:6642:: with SMTP id q2mr12012175otm.256.1624664487436;
        Fri, 25 Jun 2021 16:41:27 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u10sm1844267otj.75.2021.06.25.16.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 16:41:27 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Sibi S <sibis@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] dt-bindings: soc: qcom: aoss: Support sc8180x and convert to YAML
Date:   Fri, 25 Jun 2021 16:40:15 -0700
Message-Id: <20210625234018.1324681-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce generic and sc8180x specific compatible for the aoss QMP binding and
add the generic to the implementation. Then convert the binding to YAML.

Bjorn Andersson (3):
  dt-bindings: soc: qcom: aoss: Add SC8180X compatible
  dt-bindings: soc: qcom: aoss: Convert to YAML
  soc: qcom: aoss: Add generic compatible

 .../bindings/soc/qcom/qcom,aoss-qmp.txt       |  87 -------------
 .../bindings/soc/qcom/qcom,aoss-qmp.yaml      | 115 ++++++++++++++++++
 drivers/soc/qcom/qcom_aoss.c                  |   1 +
 3 files changed, 116 insertions(+), 87 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml

-- 
2.29.2

