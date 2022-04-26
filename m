Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13CE3510906
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 21:32:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236153AbiDZTfk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 15:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354204AbiDZTfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 15:35:33 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B849FC535
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 12:31:55 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id s137so16880871pgs.5
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 12:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z5yl8aZ0M21k3OX6E6i0ap2BT16TnvETTY9p274e2lg=;
        b=2WIxS6PxWiyeu2ndcbEl2EZtCRzBqwNIHGYQPaHu0lc2BcacDxsRHe0I9OZwAnG5Pg
         3M7StS8yFDyGon93aRKGYC4VF+l7sg/+6JII5dT4p5/ZS27vH+lcmroHrjmN+h3egD/p
         cq5Bpwp6993z5OPwrn2E+VuZwWbULHedvXRoZ6NdWKo4fnWYL4jstQ97I4bDLs1Pd4Sj
         FvgRX/wwTG37SSZD3oN9OQx/qKt2U5EuOb0REC14B4eCNRk/zr0WTkRCOsBFr1ZGnEPw
         cGvYPdPk7CTBcqo+Us07XxVafQFapGWCbU0DRPbKRfjZp0X7NN8mHE04kZFfTVIgbOGO
         yLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z5yl8aZ0M21k3OX6E6i0ap2BT16TnvETTY9p274e2lg=;
        b=7Ppxa62IdaQVkFIMvjUflUd5VjsVlqfA4PEaycVxKpqudx/aWaJXhsz66U48VSD6Sk
         cXJHEz3TPf7h+IMT/uoab5ew7AdThfxFgrvLZ2c64uHthATWH6dp5rXaSWYqzAOCHbfK
         n+SVa/J3ZI7376PnLbBsmKwK2SqG+IITjeOAW5lXl9w8Q14Cz7CW+WoPEBF3NVXBAqMJ
         RQFI2Yooygglqlusl1IkJpigLVbdO9wUUsesU+3hXIxyWSjmCL1g1nx3QhyMy1VQ2X9f
         pesPyGRN4xbVpGamHdrqDqV79iKtXjX2ugMCen5jlKg6lolQxCEeUeh7yZ5Z/ueo66i2
         G7vw==
X-Gm-Message-State: AOAM5311wWOp0yvc/akMEHdF0QX1G7liCeMg90ue326x0ZDk6Xrk8BDU
        yNpt1Vilihe+BT6VRoEvJ9bwcB3Fn3vJRA==
X-Google-Smtp-Source: ABdhPJwLkJCJ1P2NlcoH4pCc864NDETu5F7CS4lPytVpToX+pcL9DrEgjITjDRQu6xT1Iy4WQGWXew==
X-Received: by 2002:a65:4108:0:b0:399:1f0e:50da with SMTP id w8-20020a654108000000b003991f0e50damr21435148pgp.2.1651001514833;
        Tue, 26 Apr 2022 12:31:54 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:9bcd:e060:b370:70d8])
        by smtp.gmail.com with ESMTPSA id v16-20020a62a510000000b0050759c9a891sm15793410pfm.6.2022.04.26.12.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 12:31:54 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 0/2] soc: ti: wkup_m3_ipc: support i2c voltage scaling
Date:   Tue, 26 Apr 2022 12:32:51 -0700
Message-Id: <20220426193253.663582-1-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow loading of a binary file containing i2c scaling sequences to be
provided to the Cortex-M3 firmware in order to properly scale voltage
rails on the PMIC during low power modes like DeepSleep0.

The 'firmware-name' property which contains the name of a binary file.
    
A prerequisite for this series is:
[PATCH v3 0/2] soc: ti: wkup_m3_ipc: Add support for IO Isolation
https://lore.kernel.org/linux-devicetree/20220414192722.2978837-1-dfustini@baylibre.com/

Changes from v1:
- change 'ti,scale-data-fw' to 'firmware-name'
- add 'firmware-name' property to the examples

Dave Gerlach (2):
  dt-bindings: wkup-m3-ipc: Add ti,scale-data-fw property
  soc: ti: wkup_m3_ipc: Add support for i2c voltage scaling

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 12 +++
 drivers/soc/ti/wkup_m3_ipc.c                  | 93 ++++++++++++++++++-
 include/linux/wkup_m3_ipc.h                   |  9 ++
 3 files changed, 113 insertions(+), 1 deletion(-)

-- 
2.32.0

