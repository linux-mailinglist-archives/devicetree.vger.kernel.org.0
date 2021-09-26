Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89D79418785
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 10:45:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbhIZIrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Sep 2021 04:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbhIZIrd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Sep 2021 04:47:33 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D7B8C061604
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 01:45:57 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id t1so14735692pgv.3
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 01:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ixyywPIV+6DgQgfwZcIjPL8CPcYQ0h4CiC/Eg8U6OBY=;
        b=qvnS8pJrMesReK/0WbnpWCOzMI1DNOHZo9ogd00NHpLisWWmCpesAzSbUk86C3ue6V
         tzNboRcENaOoSHUPM6zlpxJAsVCAA4XNBa3RZeaxm+T7pJJ63NmqOfz4cw1FjUoXJnei
         YSCSo+X6KZKvjkZB7f/36sWqi9jTsP8bgMJ9uibuupjjn15gR8NE6GUpyONAC18HJO+2
         9yRWomftLulBu5Fa2ASGdd959WJpXwfyuJ7TpDcaKWOb6rigGFfnp0pWHM9rk4lagClO
         3bToe6KnfO+aKEjHzVY3Y4t6oYjLRRhRs/gt7y/P6ANkQqQEibrBd06krY6FCRwoSN9P
         83+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ixyywPIV+6DgQgfwZcIjPL8CPcYQ0h4CiC/Eg8U6OBY=;
        b=6WZze+BN8XJMrhCouuaZTapu5EzOR5gVPb0Govdf+pKkVemMP0erYEHd9hinMHfH65
         eNeqMkM9Laa1if0IzaROM8QY4B+TGuOEq2MvfDJP4FweMCucII4CnhuT2SRLtb1R7qdy
         P8Vnzy3ZxYWwII+Ctj5t9LVDRToBKDSuThzP1OXw0F7C0u4KBgzfOC9KeKtrMgufO0F3
         5tCEFC1N2VWapXMx99l2xB1E28jwHdw/97eJPEcOc+mKbl7hNI1+IwYRMugb4G8eqoTE
         ow/7Kzg0vx9l26oYFT93mBOO9rpgIbJmfJVg3W2FD54qvCvmsNHq5suJTlTN9olBuTTn
         Agqg==
X-Gm-Message-State: AOAM5336dfPpB0df+tNIDJO2Nr6mqjhzxt5Qudamrzy8nh98naxX3xoh
        CRFc9Aebmu2Ll4ratM05y02q2A==
X-Google-Smtp-Source: ABdhPJwqjEj0iNDPPyoZeOaSvKoByGRgIuZxkPWmOqsAc4GCZu9Cx+5Q42ztZcBaqN85LlbjiDBmlw==
X-Received: by 2002:a62:19d4:0:b0:43d:1bb7:13ae with SMTP id 203-20020a6219d4000000b0043d1bb713aemr17778982pfz.63.1632645956699;
        Sun, 26 Sep 2021 01:45:56 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c7sm8940402pfc.104.2021.09.26.01.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Sep 2021 01:45:56 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add PM2250 qcom_smd regulators 
Date:   Sun, 26 Sep 2021 16:45:47 +0800
Message-Id: <20210926084549.29880-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds Qualcomm PM2250 smd-rpm regulators support.

Shawn Guo (2):
  dt-bindings: regulator: Document PM2250 smd-rpm regulators
  regulator: qcom_smd: Add PM2250 regulators

 .../regulator/qcom,smd-rpm-regulator.yaml     |  4 ++
 drivers/regulator/qcom_smd-regulator.c        | 49 +++++++++++++++++++
 2 files changed, 53 insertions(+)

-- 
2.17.1

