Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66C45618982
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 21:25:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231253AbiKCUZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 16:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiKCUZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 16:25:54 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B991B9DE
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 13:25:52 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k8so4449536wrh.1
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 13:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d1bEBzcRWoI26X/qvJpx/qMpsq5d/WkULcD5I2HLn7o=;
        b=GUE8I1TvIoagFhNDNun6i1lMpTM60js2faIOx6vaoySW0Avq/2gZAdkDRBYR+wz8Ed
         zSrSl6FVLYYhdAfcZkeonmKSHPSIK3zLSYs4ywQja/nHLEQ8aS/bIvjfWxOnsSFA4bpX
         nJZKBkozMiz/lO4W+EMood3wHPsv+JuIVIdK1xJ9RZfGRq5NTqLa95XuW4Tk2oUaGBrr
         Y7wp5TTwUnNOyI4swjbLyphvZHLjG/yE236J6krk5k8y8YUHuAQhBx6waMVbDbql0haw
         Mftxv4tVhGaHWrdLkEsJLv1SwCPdIIzJxnna+H/tEaK0jOecDfFyXVj+kNnNiTviCx/s
         TvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d1bEBzcRWoI26X/qvJpx/qMpsq5d/WkULcD5I2HLn7o=;
        b=PngmM5wWj3rJCN+OpNSc+72B9d2ZXMhNUGzMONpUVRFA1DmKuFsfymV+ExTG+kX1sT
         T4t2k2U8T9UPH2388cPAflLYbPuQ0vERkLOyysMIpJWwCgS2BcTTE8Py7q1HIxCN/u81
         kMgLUREsxWog6rIawA4JvYLJAQI01LCW1sX3/N3CiZFOy8Ti1YIzUh7CRk+NWeCwP3QM
         BNabA513iSOyKVo1G0jC6h0BNw30Rs2E1/UYChW1XVLY1UqXvihhrrSE+LybpAaiStvX
         mW5qLMf/LOWCXHi+s/iyMLxYf2RzxUoEbf+iTVhuUozfEeU6iKEprwvVDQ70A761bXW4
         UU1w==
X-Gm-Message-State: ACrzQf0M5j89STSBv2qR5SKlXz3eR2Me5Vay99+pljYaUiWhEvY750AS
        9Hbj9yj1NFMLgkZ006aMJM9q4ccV3c6fYQq+
X-Google-Smtp-Source: AMsMyM6pEgL8Oz3D3/iosdkl1scK8FWIQuo2NnDAjTyhG9aX4zm52NE1UjdEA3rO/nMCsgHBbMALDA==
X-Received: by 2002:adf:ea04:0:b0:236:c7a0:5925 with SMTP id q4-20020adfea04000000b00236c7a05925mr16205036wrm.624.1667507151341;
        Thu, 03 Nov 2022 13:25:51 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c4ecc00b003b4fe03c881sm787946wmq.48.2022.11.03.13.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 13:25:50 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v7 0/2] mfd: max597x: Add support for max597x
Date:   Thu,  3 Nov 2022 21:25:46 +0100
Message-Id: <20221103202548.1921397-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
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

max597x is multifunction device with hot swap controller, fault
protection & upto four indication leds.

max5978 has single hot swap controller whereas max5970 has two hot swap
controllers.

Change in V7:
- Update id
- Remove empty line
Changes in V6:
- Update missing vendor prefix
- Update indentation in example
Changes in V5:
- Fix dt schema error
Changes in V4:
- Add NULL entry for of_device_id
- Memory allocation check
Changes in V3:
- Address code review comment
Changes in V2:
- Update depends in Kconfig.

Marcello Sylvester Bauer (1):
  dt-bindings: mfd: Add bindings for MAX5970 and MAX5978

Patrick Rudolph (1):
  mfd: max597x: Add support for MAX5970 and MAX5978

 .../bindings/mfd/maxim,max5970.yaml           | 163 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  12 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/max597x.c                         |  92 ++++++++++
 include/linux/mfd/max597x.h                   | 103 +++++++++++
 5 files changed, 371 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
 create mode 100644 drivers/mfd/max597x.c
 create mode 100644 include/linux/mfd/max597x.h


base-commit: 6b780408be034213edfb5946889882cb29f8f159
-- 
2.37.3

