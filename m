Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FCC141924D
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 12:38:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233813AbhI0KkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 06:40:00 -0400
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237]:41102 "EHLO
        egress-ip33b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233787AbhI0KkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 06:40:00 -0400
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound23-74.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 27 Sep 2021 10:38:19 +0000
Received: by mail-pf1-f199.google.com with SMTP id a188-20020a627fc5000000b004446be17615so11348391pfd.7
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 03:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p76vO38lP42vKSvVTlZjl6ogRnpGJnVTAURe7DbLNkY=;
        b=J9t1M0Y3lar2Zm0toksTFZlqMFRNIYO+HUJ/JJNwyImt1r4B64TWR8Pz5IQzZW4m0L
         VcqU1jCTWxdjlzLiQq+9O8ItLkayX+mB+trs3PetHBUZdTq2WRsRXqGcetO3vkxMAf+i
         eR0FoEst0NY0+To6v3t0lVfhb8x9vKXtpU01Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p76vO38lP42vKSvVTlZjl6ogRnpGJnVTAURe7DbLNkY=;
        b=EO2D2dFhOKU5EUqmqJgiZcUi8fwg2ZhwZDFP+0MU1iEwZPINbeBnb+KDFW0hhewDI6
         d66qIDOMFrtuLDWjbgcyvqMahVwRxC9O/v2YHaxq3ALuu1XCLcemXYahBL1m30RmajXc
         qj6mNB8S0DZSG5eWJkibaEquX2C25XCU8AuKdpndwKj1DagHUifZOe8cYTq0k0BKgejo
         Pa7VYP+D78AwjTpo/J2I814nL1IRffGBsZbQP1rEyBLVDOFxXKdOrY/uGn05DoveiohK
         6mgMz5sO79Scw29TmvGhAVqPpHXNejdHmuiHJirlVO7j1e7/4pykcjDgexexMREagXtb
         1GYw==
X-Gm-Message-State: AOAM531+j/i1861Dsa/+wsXvu7GixkNG3403SJywb8DSzw7d2qmI+Sdy
        j9h5e74oXBwsNdm8WRxsAXZZQqjKjTAMkuujd9o6jd/Jok5HTWji4LpIiwvzznknVwCJlT4VcRL
        gjjUsKcuTy7vaR8jiYpcMKlbl9r2diwKyyqzLUtanPPpWpa1/kvPy68kd7Q==
X-Received: by 2002:a63:4464:: with SMTP id t36mr15950962pgk.4.1632739098417;
        Mon, 27 Sep 2021 03:38:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPvl9zDSO8xOMaDvu7fZO/wrBNF6HH9FdoyajHTFW7U9Lihp4AqMlhBOHiinSjGPKUQ8/LRg==
X-Received: by 2002:a63:4464:: with SMTP id t36mr15950947pgk.4.1632739098139;
        Mon, 27 Sep 2021 03:38:18 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id t68sm18030894pgc.59.2021.09.27.03.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 03:38:17 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org, Nishanth Menon <nm@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V4 0/2] dt-bindings: remoteproc: k3-r5f|dsp: Remove
Date:   Mon, 27 Sep 2021 16:08:09 +0530
Message-Id: <20210927103811.11222-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632739098-305962-5442-832-1
X-BESS-VER: 2019.1_20210921.2035
X-BESS-Apparent-Source-IP: 209.85.210.199
X-BESS-Outbound-Spam-Score: 0.20
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234758 [from 
        cloudscan12-45.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.20 PR0N_SUBJECT           META: Subject has letters around special characters (pr0n) 
X-BESS-Outbound-Spam-Status: SCORE=0.20 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, PR0N_SUBJECT
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Hi All,
The series of patches are meant to help make the rproc bindings for K3
r5f and dsp support independent of board/platform involved.

Changes in V4:
Addressed review comments:
- Removed Fixes tags from the commit descriptions.
- Updated subject and commit description to emphasis on cleaning up of the 
  example to address the dt_binding_check warnings.


V3: https://lore.kernel.org/all/20210917095426.19277-1-sinthu.raja@ti.com/
V2: https://lore.kernel.org/all/20210818074030.1877-1-sinthu.raja@ti.com/
V1: https://lore.kernel.org/all/20210817152005.21575-1-sinthu.raja@ti.com/

Sinthu Raja (2):
  dt-bindings: remoteproc: k3-r5f: Cleanup SoC compatible from DT
    example
  dt-bindings: remoteproc: k3-dsp: Cleanup SoC compatible from DT
    example

 .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml       | 4 +---
 .../devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

-- 
2.31.1

