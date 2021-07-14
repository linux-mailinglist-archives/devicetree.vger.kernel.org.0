Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9494A3C9313
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 23:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235744AbhGNVaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 17:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235463AbhGNVaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 17:30:10 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B76F5C06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 14:27:17 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id q16so6069708lfa.5
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 14:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=phystech-edu.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YRJ7o0mlWw/xRyIDlZj63kLihIyRP8arTxcwBPV6M+U=;
        b=j8mcdryO+1SyFilZ+FG/FAq5kAO+QkUfj8WRTqfc/eNRgoN5UR976iFyr+eVbqpXaa
         uV1ZpR8S2RqTIBTP6yh8hXowvMAnauzKxijs/jtVaHK2r4/bIP/2zCk+8g5PB6ZqtAC9
         eHxGdidSENetSYBgM4qhjAcUAa9rnbd8oPLH+N3iFCJH67fuxjvdbOmJhrIbhFIe43CW
         eupWhOvG3Ukd8QUk8LwKzdgcOoY3yOPhjvTVw9q7so9FH5+qOvn40uepilzpKZM9MBqe
         1QzWtqPbZQK29SszHunhc+I5gDxUih0HiNBU9OrOSq72dZGIsWobFV0A4OozlsNHUHZ6
         TL5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YRJ7o0mlWw/xRyIDlZj63kLihIyRP8arTxcwBPV6M+U=;
        b=U4STSItEvxy5SIV3URGAFoxrMxgRLIuAioOlxNasM2VzMc/sVtaWLCIu1bgV0D/pi1
         ZAJhAXSxWiWWI1HvFB7dzsMQu4LlqENf0EiT9eJUTLZLo875acBcfwUFRk8yx7YM0Fjq
         yzwspRn67B+YDrnGuZt5+JT984qbd843phmPi6NSgU8Z4aKpsLiOFsKg57pDZniisdKZ
         s7vzntHk6SADdAVOs1Q1D7QIjiN41CrzQT4IbhINvIsIyPsr68dGbMgPz2Z/i281JwTE
         rWFzP7I5N2EuGjRxBgR6moCRV5Cx5Ecw+jZNocIJqa7/uLDcT9hNbH1WjfPIVie5PNZG
         G+fA==
X-Gm-Message-State: AOAM5315OrTZyeo8m0zaLooR0swtTKjilNKrvCdDwKNF0ngvSvNTf1O/
        eBXOLjp81rptrhyc6vPC8HeiLw==
X-Google-Smtp-Source: ABdhPJwTodWJWpvnqxhn7bn8LTbuklkoZr0z0YR/nuJWVJnzpCfHQCP/2rK6t3ge41My9ZZ2Uhvseg==
X-Received: by 2002:a05:6512:33c4:: with SMTP id d4mr179570lfg.536.1626298036021;
        Wed, 14 Jul 2021 14:27:16 -0700 (PDT)
Received: from 192.168.1.3 ([2a00:1370:810e:abfe:9c62:44e3:b0ab:76fd])
        by smtp.gmail.com with ESMTPSA id f1sm252156lfs.211.2021.07.14.14.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 14:27:15 -0700 (PDT)
From:   Viktor Prutyanov <viktor.prutyanov@phystech.edu>
To:     sean@mess.org, mchehab@kernel.org, robh+dt@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, rockosov@gmail.com,
        Viktor Prutyanov <viktor.prutyanov@phystech.edu>
Subject: [PATCH v5 0/2] media: rc: add support for Amlogic Meson IR blaster
Date:   Thu, 15 Jul 2021 00:27:04 +0300
Message-Id: <20210714212706.24945-1-viktor.prutyanov@phystech.edu>
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
  media: rc: meson-ir-tx: document device tree bindings
  media: rc: introduce Meson IR TX driver

 .../bindings/media/amlogic,meson-ir-tx.yaml   |  67 +++
 drivers/media/rc/Kconfig                      |  10 +
 drivers/media/rc/Makefile                     |   1 +
 drivers/media/rc/meson-ir-tx.c                | 410 ++++++++++++++++++
 4 files changed, 488 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
 create mode 100644 drivers/media/rc/meson-ir-tx.c

-- 
2.21.0

