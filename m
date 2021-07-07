Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 915863BE97B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 16:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231787AbhGGOQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 10:16:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231756AbhGGOQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 10:16:22 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC6FC061760
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 07:13:41 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id e20so2871022ljn.8
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 07:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=phystech-edu.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g5y2U6uok/0so0eFkpqI39QSbZF7lC9EfSeNA/R2eiU=;
        b=b69y5epbfVrMskok7SBd1fb6b+hS2UNHIjBQpCvisPd9gFak1ZIcM1t+CCpoHXjx48
         AYqnzcVvvaYeOw5tbYaLmdMEmNJ9epDabUQTTJxMY6CkFbF4Af3SXV3nQ3XQ3QuPuOLx
         wjW0pncMm8r57xkk0W14y2f/V4kfTptIqomWgvad66QefRyb5ZFIjfyCcgxnaP4tX4Jn
         5oLRPogaJswJY0tBQ8mLfaxN4Tw4R00hZibCFs5IAd/Z4NrRVsc8I5Z5lxpYWMP+duiJ
         qbDG0vkhPcmo8sl3NI2eEZx9L4H7bxYsVcCg6dLHzkGliujExF0U2bdlgRjhx/EKi+wc
         Nc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g5y2U6uok/0so0eFkpqI39QSbZF7lC9EfSeNA/R2eiU=;
        b=i1zqAjzOGLAZxCD7nLWr62KvnpkqYV0mj5OwX5cH5IFWgOqTX+G9ZhkJ7Oe41ONh8H
         3CoefYj7Dow7fIjPhkIR2GINYr9SpE27nJrAo6eXlx+5QIX5j18dzNmL3wRzgZiPwHLv
         I7OdolFQy0rki019W0//A0Pju+z8DdNlLAdropDg28Qnuveh66YRwOFVOZjS/3Qcaisv
         tnMmo9HqPFG/oGcg2O1OjKRprbqiI4f9dReiZop+0ZoBoBX70yo0sTxduBoO4WXJI+LY
         +4yUtbRghzMvjIWg7m2BkCBVnLkZu5xJ2XUoxYWcBTgANY1ZkAlkSIy5hKs+QWYWk0hZ
         pACg==
X-Gm-Message-State: AOAM533TihT3b1MRRwLe8X3Go4IPBz+NwyOoxII3kHRelskAJBaQOctS
        tH6/nX5eUNO1J5M2C4GprzWNyw==
X-Google-Smtp-Source: ABdhPJwFZTZe2iloQ3VAroTCsguHeU1FjVUp8cYQVAbXI7WPISb1E0nxwT/5jQC8Z9Ebykwsatgwgw==
X-Received: by 2002:a2e:6c10:: with SMTP id h16mr19473010ljc.234.1625667218555;
        Wed, 07 Jul 2021 07:13:38 -0700 (PDT)
Received: from 192.168.1.3 ([2a00:1370:810e:abfe:9c62:44e3:b0ab:76fd])
        by smtp.gmail.com with ESMTPSA id a26sm205077ljq.120.2021.07.07.07.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 07:13:37 -0700 (PDT)
From:   Viktor Prutyanov <viktor.prutyanov@phystech.edu>
To:     sean@mess.org, mchehab@kernel.org, robh+dt@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, rockosov@gmail.com,
        Viktor Prutyanov <viktor.prutyanov@phystech.edu>
Subject: [PATCH v2 0/2] media: rc: add support for Amlogic Meson IR blaster
Date:   Wed,  7 Jul 2021 17:13:21 +0300
Message-Id: <20210707141323.20757-1-viktor.prutyanov@phystech.edu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this is a driver for the IR transmitter (also called IR blaster)
available in some Amlogic Meson SoCs.

Viktor Prutyanov (2):
  media: rc: meson-irblaster: document device tree bindings
  media: rc: introduce Meson IR blaster driver

 .../media/amlogic,meson-irblaster.yaml        |  62 +++
 drivers/media/rc/Kconfig                      |  10 +
 drivers/media/rc/Makefile                     |   1 +
 drivers/media/rc/meson-irblaster.c            | 433 ++++++++++++++++++
 4 files changed, 506 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,meson-irblaster.yaml
 create mode 100644 drivers/media/rc/meson-irblaster.c

-- 
2.21.0

