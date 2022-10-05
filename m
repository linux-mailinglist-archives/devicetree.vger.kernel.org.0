Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABE7B5F5757
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 17:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbiJEPVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 11:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbiJEPVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 11:21:10 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C44F53B717
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 08:21:05 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a3so14177115wrt.0
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=SfgzY/BP4PSsu2Uhv7Tc4/eJk058BZUDiucl4CyVtgk=;
        b=fqHEQhw+Q41ldM5x3c7ESxDzOSDyOaK7gr9Bscc7cHYwnPbNMK184VU6ADT2kATXay
         yP/ikH1YwQ9KXqC14VXvnKVV+yXz43kVLWRsWYKwWgnJOWO+r5w5lqiTLG46xErwNGOa
         kcS+f2azE/CzKtxeX9P/NpuBMerMRHkZDFkuVZmnVwr9FhzdbbKIrN860Q26H/ZXHF/B
         HbvURO7bYH0hQv4mIXbc9nIshgcmyQTYr57PxKBBdS/NG5Mogl8Wq0y3vtYEZ1ScMqEC
         vKUa3Tcev2jnIpgx3/QNF0NSrNIMXh7yLm4jNF20DuYpTAyOs+XuvcH/oTMyfhMQ6Ar4
         /KQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=SfgzY/BP4PSsu2Uhv7Tc4/eJk058BZUDiucl4CyVtgk=;
        b=QiTbD2e+lGA4C5sIjIugKu1fs+aSWNLCnCNg/KIO2KonbuyfC9Ah4ZcZWTB3YOa8HO
         f9J4PuygRr8oesiQC+W1ZPyQTADMyCDKA6jnx2EzQ1OXRu+ZoTDQnuW8w6zIHcDB/YXM
         rCfZHQH0pF6zvx2AjFd1cfvvIaZA4P2aAg17q6OvQW8UH4A+GJdSMCQUt3KSoIVcKO30
         k0TH8eLU6V4Pfho+p3KerG34M4jsOCj8VOTIi4Rw7c/0Do4odAIByM/xMotKD0DdESQU
         /d5H0ThAhF52ojOOUBPhI/TZpbqVixQ1IAXq1rwdgQ6C7AXzK3bcxVqIuSN1qK+ggm58
         FMJg==
X-Gm-Message-State: ACrzQf1iSdvz6Xqzx7R+jD6SXRf/uH/U8QJZ5BPpvMxcbHWvZr96oIbH
        Nnrx4k7WMoz6+tyAEQhVi65XEA==
X-Google-Smtp-Source: AMsMyM7/Mv5E3xzla32EKAPtkpMkizLDEqPYvKx12c5/Ir6itnkEDgIyTCKZp0C9LCIbf8CNr7xlrw==
X-Received: by 2002:a5d:4209:0:b0:22c:d5fd:1a06 with SMTP id n9-20020a5d4209000000b0022cd5fd1a06mr173819wrq.508.1664983264409;
        Wed, 05 Oct 2022 08:21:04 -0700 (PDT)
Received: from dave-Ubuntu2204.pitowers.org ([93.93.133.154])
        by smtp.googlemail.com with ESMTPSA id p2-20020a05600c1d8200b003b4764442f0sm2306854wms.11.2022.10.05.08.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 08:21:03 -0700 (PDT)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        linux-media@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 0/2] media: Add regulator support to ov9282
Date:   Wed,  5 Oct 2022 16:20:16 +0100
Message-Id: <20221005152018.3783890-1-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
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

The sensor takes 3 voltage supply rails, so add the relevant
configuration to the device tree bindings and driver.

Dave Stevenson (2):
  dt-bindings: media: ovti,ov9282: Add optional regulators
  media: i2c: ov9282: Add support for regulators.

 .../bindings/media/i2c/ovti,ov9282.yaml       |  9 +++++
 drivers/media/i2c/ov9282.c                    | 38 +++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.34.1

