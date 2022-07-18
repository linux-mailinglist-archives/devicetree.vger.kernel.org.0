Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A05F57822C
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 14:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233550AbiGRMXh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 08:23:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233150AbiGRMXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 08:23:37 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 612EA255B1
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:35 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z12so16789867wrq.7
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=whB+R1B8QafDf9eG2ayVTdqGJfyJYCxsBA+QrIx7dMM=;
        b=a80borOEoxHP3aDI2P59CkF/PW8pQxSASOhL+rtWYUrmW+IQGmd2a2dXycyxKO885J
         7nRSv4wK7WCvuD2W51yU0+VXmE8sBd0eIvojRVuxpVt+K8OzGZ0SdeB9gkTXU9yk4sfG
         ToA1N59GxXjTFXOCRGv9zMdt5+IAqIy7ucb7wwc4yleu1U2Xt9QO8igu1y1C0qAxacmC
         TTWgxUJhahNaXm/NcEnwTlJr9EvQCx5y1nGf6OtVXvY4tbjUbUGqsxiS6m1z9sfSxctM
         w6hWam8KdhtsyHrMEe3nII3ShwGg/ageWs92zDgOao9FFYsrEPj4MxDcM/U/ePtW5M+e
         VH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=whB+R1B8QafDf9eG2ayVTdqGJfyJYCxsBA+QrIx7dMM=;
        b=ONkt9Y7Cc1/Y9SFKeLWUJTWSBC51Lgjd+Df/hGkvlkD/f9qtH54bzeUN/SNRMT5AHn
         Xaet3Eq/Ap1mTbmWT3kuUOvJQICvSFCoTuYkii6gpugcNBSoqF3D6ZYbsMzVqZku107O
         /1fmS4OhdazUB3wEEQn4dMDZDqz7h6NPQfPUvYMLqRgnJ5JYWItko54WNJt+jpe0Mh6F
         GIO9hT++CPWbKq3J3OmeLMi/jdMwT5PpIQ9uL37It8GY1hq6tBBIwcH9K2uz5Oj1r6Th
         tvQFGy1ewY7a6KIfmyKk7zECXSx+z7VLPM0IiaZUg74wCDSySZpukZywbSlxbhEapM80
         whHg==
X-Gm-Message-State: AJIora/oXpVk1l5/LA3q7pfufNEI0rJsuzWefODe0a2b4obvSoz5pONG
        zPDysMqHmOjC3ZUwS0uNdLT6xA==
X-Google-Smtp-Source: AGRyM1uscIPsHKxFRlolCJhAvJqnrTm+eE8GLeEL2JidyB0lqf5wzzBaJrltl2KVuqKaD+wTIBjBTg==
X-Received: by 2002:a05:6000:904:b0:21a:3dca:4297 with SMTP id bz4-20020a056000090400b0021a3dca4297mr22848867wrb.487.1658147014004;
        Mon, 18 Jul 2022 05:23:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:77d:8cd7:da25:e091:44c6:f87f])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d5189000000b0021dd8e1309asm8184929wrv.75.2022.07.18.05.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 05:23:33 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Julien Panis <jpanis@baylibre.com>
Subject: [PATCH v1 0/2] AM62x watchdog support
Date:   Mon, 18 Jul 2022 14:23:26 +0200
Message-Id: <20220718122328.251602-1-jpanis@baylibre.com>
X-Mailer: git-send-email 2.25.1
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

This patch series adds support for AM62x watchdog.

Changes since v0:
	- Mark MCU & WKUP watchdogs as reserved

Julien Panis (2):
  arm64: dts: ti: k3-am62: add watchdog nodes
  arm64: dts: ti: k3-am625-sk: mark MCU and WKUP watchdogs as reserved

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi   | 45 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi    |  9 +++++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi |  9 +++++
 arch/arm64/boot/dts/ti/k3-am625-sk.dts     | 10 +++++
 4 files changed, 73 insertions(+)

-- 
2.25.1

