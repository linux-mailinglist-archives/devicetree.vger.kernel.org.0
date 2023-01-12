Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC0A667897
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 16:07:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbjALPHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 10:07:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240315AbjALPGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 10:06:47 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E823C7F
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so15266032wms.4
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hshBgHMAbsj8P7ZG9SJ1XlZXn0deMwOcwI0cVFQUWUA=;
        b=GvFzbbOmsqenKzZlLKqqRLe8IvHGcinjLwT+6ORe7S0N5KqDyun3Rl2bz89Mcq2v6T
         HR9hkSIPszIUHj4iE4JSIrsAVZahUuT3VddBeaPduxj7ze8qfvDAGJInbqa9L7FpOavk
         7PO1WWEISo5m0YJhVbl221HLGxE5JXnQwwmRdCnuVjT6YFvT5pfv27E7PHmFytLs4nRs
         KMBNIFEJi3aBxHEqY8nJU4/HoAQ+gkbBMlcYYBbQZ3ESUGRkStOVuuoRUJt1oNh/wTp0
         gFUpSM6sejzS3N6CLrD5VQS61DMNGhQ1WQ6IUKId4WX7cQGf/83BvTPvQ4+nBGBxawIt
         d3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hshBgHMAbsj8P7ZG9SJ1XlZXn0deMwOcwI0cVFQUWUA=;
        b=6MQt90CnOZHxCCK70u8/8CXQZQYW130npSPdMyr7x3hvLXrLe4OvV2qwiHZ8NDnYpd
         pJYDXUSOqosf+FmNsvdDuCmSOTrEOOCE1ovmSRPd1yxE05yYPlCq2ceF4JUh75wa1by9
         NCBOn7qbG62MqPq175rNvGC4601KlPBslbcLMx3baA7ZRgk8bZ3DOLhIzhy+nBx/6+wn
         zv1MeaCElwnw5P00558xqDiQhkNO/nXZPHIL6OcdjECJ7YI0WfYiJ1WFU/skiqWEdqDA
         91V+7SnUsDto1sJeV3MtwV6ZP6XJpxdi2X4FTp0jwmjIMdPutD9GIWAMQPH33LdWi2cZ
         WwzA==
X-Gm-Message-State: AFqh2koSOZmDYW5TFdPzHmevKWXggXZHs4LfS515/ecMlw2/si4yJxbf
        s3A+QPeRaDzv/GQwJ1E7IlWmVg==
X-Google-Smtp-Source: AMrXdXs4S3F7YierYyTVdOOb8TCQPLIjRNNZr7jBHYWEnhvXPtyGu2cgetDeGfNgCn/GWw0osVCGMA==
X-Received: by 2002:a05:600c:154b:b0:3cf:674a:aefe with SMTP id f11-20020a05600c154b00b003cf674aaefemr55646987wmg.22.1673535336869;
        Thu, 12 Jan 2023 06:55:36 -0800 (PST)
Received: from lmecxl1178.lme.st.com ([80.215.38.209])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm16599779wrp.55.2023.01.12.06.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 06:55:36 -0800 (PST)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     Jens Wiklander <jens.wiklander@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Etienne Carriere <etienne.carriere@linaro.org>
Subject: [PATCH 0/3] optee: async notif with PPI + interrupt provider
Date:   Thu, 12 Jan 2023 15:54:21 +0100
Message-Id: <20230112145424.3791276-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear all,

This small series aggregates 2 change proposals related to OP-TEE async notif.
I've made a single series since the 2 patches hit the same portions of optee
driver source file and I think this will help the review. If you prefer having
independent post and deal with the conflicts afterward, please tell me.

Patch "optee: add per cpu asynchronous notification" aims at allowing optee
to use a per-cpu interrupt (PPI on Arm CPUs) for async notif instead of a
shared peripheral interrupt.

The 2 next patches implement a new feature in OP-TEE, based on optee async
notif. The allow optee driver to behave as an interrupt controller, for
when a secure OP-TEE event is to be delivered to the Linux kernel as a
interrupt event.

Regards,
Etienne

Etienne Carriere (3):
  optee: add per cpu asynchronous notification
  dt-bindings: arm: optee: add interrupt controller properties
  optee core: add irq chip using optee async notification

 .../arm/firmware/linaro,optee-tz.yaml         |  19 +-
 drivers/tee/optee/optee_private.h             |  24 ++
 drivers/tee/optee/optee_smc.h                 |  78 +++++-
 drivers/tee/optee/smc_abi.c                   | 249 +++++++++++++++++-
 4 files changed, 358 insertions(+), 12 deletions(-)

-- 
2.25.1

