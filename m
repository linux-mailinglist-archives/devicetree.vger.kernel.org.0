Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F26F568789
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 13:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233392AbiGFL7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 07:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233385AbiGFL7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 07:59:00 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED7B2621
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 04:58:59 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id t17-20020a1c7711000000b003a0434b0af7so8875463wmi.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 04:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=r5e85sIDBJI7YXT5D/WX+l6/QOhdlM05RUkGmn33l1s=;
        b=mTXDEMvpARtn0YnlpwbSF3uK4BfzHvu97xz1ZKFLGv0hfodas+zoZfaxxHUOJul6Qw
         V1e1E2CeoOrEqPaukQUB2ROlWfOUn5GGegcfbigYfLzAueiJ6V8qe9ti+6xKm0vS8piB
         pc1ia/ch70GV5nwattoOlcfxQxa9oWcgsDNcGCR1NlTXGPBSeToKRynF1co5mSY9zD88
         /X52GUfaH1RqD4OBV3dD5xYC1V/P97AD3WmNTmKje/6xMb2VLTSj7l1BDRMdNowVHWwq
         +EZMMFYHD5iNW9J/omsC85rbOjmY7IsdZnRMSTxNMU3c/cUzjdVcOIGAljLmsnSJ9rO8
         Nl1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=r5e85sIDBJI7YXT5D/WX+l6/QOhdlM05RUkGmn33l1s=;
        b=ETBnhpLzR1c6gy5sn6qjf73EW36yF2UKmH1TyGhu+hefeXDgFtrF4kmAWa+hHjkzqx
         JPf+dDqXp3nWoOfzuOMH1QDmmeKTXHFTiZglAFnc+VnI0jJ1lUarhcTvRFkExHT/TwAQ
         9OQbXwq1GslCYCG/WvCI1QITI5l1QA7dHgFUOVXBd/XqiJrQWD6da+vd83i0ft4ghreI
         XaJkqKA42XUQH6oNyl+l63lx3JUfwKYEk8OBKWhPbE1yr5vDWtubC2VvZr/3ZXzkwQ6b
         3I6f6/PBi3nNAflmzqjL4xV0DNkyx0XmsCfBcZCxK3xUgS9MoZp/zeyrIjMOzwElAjbo
         Wgyg==
X-Gm-Message-State: AJIora+6oNGevcus1nEjc8fUtUku1Zv2uAyKYnGGCgOZNEhzV0LaHPP0
        8+M0tj+gxbl8SjFO9nPuZ5YFmw==
X-Google-Smtp-Source: AGRyM1txqfesMRKTtIjjhYgnWFndJiMTn3aSMB1YYdcpzxp7Vt+v1V2b8p2ohWq668+jP8bOdbkV5w==
X-Received: by 2002:a05:600c:3ca2:b0:3a0:1825:2e6b with SMTP id bg34-20020a05600c3ca200b003a018252e6bmr43263156wmb.132.1657108737793;
        Wed, 06 Jul 2022 04:58:57 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id q20-20020a7bce94000000b0039c4b518df4sm31370345wmj.5.2022.07.06.04.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 04:58:57 -0700 (PDT)
Date:   Wed, 6 Jul 2022 12:58:55 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Immutable branch between MFD and SoC due for the v5.20
 merge window
Message-ID: <YsV4/2ShlUNgqcdx@google.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enjoy!

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-soc-bcm-v5.20

for you to fetch changes up to 9e95c67efa8aa26f03b08147a552eb71e83e1a77:

  soc: bcm: bcm2835-power: Bypass power_on/off() calls (2022-07-04 11:59:55 +0100)

----------------------------------------------------------------
Immutable branch between MFD and SoC due for the v5.20 merge window

----------------------------------------------------------------
Nicolas Saenz Julienne (2):
      mfd: bcm2835-pm: Use 'reg-names' to get resources
      soc: bcm: bcm2835-power: Bypass power_on/off() calls

Stefan Wahren (4):
      mfd: bcm2835-pm: Add support for BCM2711
      soc: bcm: bcm2835-power: Refactor ASB control
      soc: bcm: bcm2835-power: Resolve ASB register macros
      soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB

 drivers/mfd/bcm2835-pm.c        | 74 ++++++++++++++++++++++++++++++-----------
 drivers/soc/bcm/bcm2835-power.c | 72 ++++++++++++++++++++++++++-------------
 include/linux/mfd/bcm2835-pm.h  |  1 +
 3 files changed, 103 insertions(+), 44 deletions(-)

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
