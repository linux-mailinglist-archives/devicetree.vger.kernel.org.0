Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 801D9BAF04
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 10:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406725AbfIWINz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 04:13:55 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:44384 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405519AbfIWINy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 04:13:54 -0400
Received: by mail-lf1-f66.google.com with SMTP id q11so9357292lfc.11
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 01:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YP0Dty02K/PU7snWf9QCmnq9+d/+lpZCzmP6b7jH6B4=;
        b=BJ5LbRkdAmmWPoS4xoIHkGfseBJtqsTjDT8/SzOvXN4s2EcGhdbg44m+jOXBELIcM7
         4ANJ7E6jTSF9ZV6PoV9s6M/UvcK5qxO/EEGJRfM6MxvXh4CH8RQ83T9QQeE2spGj3wZG
         z1XbDZZvAk5dflfZlTdavY3SuAp8xmzsLydtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YP0Dty02K/PU7snWf9QCmnq9+d/+lpZCzmP6b7jH6B4=;
        b=hDa3L0rQ+wYwLX0W9fhvL1eqoAFFjtDnLckcpIhaxaANunCQhAa5kCxw2IPpZHgzb9
         ECIqJ8r7a2789gTcbhkLLf2Ug/cMhmLweNupkkIKE9s08lc/8+cwcTkrRuD2prYEp2ta
         PXZKQdRyMR5x3plDqOSMJI1cuFYkT9I97Y6frD2VPKc2FAjVtK9GJDfvCDpPxDmtAnJK
         vSf7q1H7okxOj6P5PrM6kbjBn8MoCu9Zw2Jx29xIoqtZbtP7AtvdPBVejNoSaGHK1p7I
         mbPfBa7sROXqYmoxCllnDcLlZHvKotlT/wKBCC8m32X7a403mTsTMuDL8fuX3RRM+/Vb
         AGWA==
X-Gm-Message-State: APjAAAVeO2YItz7rI4oHQ6lG/U8rr4e2ZjJsU50DW+sziWV1fYfkoaVW
        /oMIcAeGtUvp/Max6FUzKCDaMA==
X-Google-Smtp-Source: APXvYqz1aK8MYGtYecVVxc/h+5tNAbQ8QHxsPIQq+G8SCQClVwWdZ7aqolsB4dTq+uFnHjerMW4hNQ==
X-Received: by 2002:a05:6512:4dd:: with SMTP id w29mr15905123lfq.2.1569226431814;
        Mon, 23 Sep 2019 01:13:51 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2019 01:13:51 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 0/4] pwm: mxs: add support for setting polarity via DT
Date:   Mon, 23 Sep 2019 10:13:44 +0200
Message-Id: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support for setting the polarity via DT to the
pwm-mxs driver.

The DT binding is updated, but I'm not touching the existing .dts or
.dtsi files - it seems that the same was done for bcm2835 in commits
46421d9d8e802e570dfa4d793a4938d2642ec7a7 and
8a88b2a2017d1e7e80db53080baff591fd454722, while
arch/arm/boot/dts/bcm283x.dtsi still has #pwm-cells = <2>.

Rasmus Villemoes (4):
  pwm: mxs: implement ->apply
  pwm: mxs: remove legacy methods
  pwm: mxs: add support for inverse polarity
  dt-bindings: pwm: mxs-pwm: Increase #pwm-cells

 .../devicetree/bindings/pwm/mxs-pwm.txt       |  4 +-
 drivers/pwm/pwm-mxs.c                         | 73 ++++++++-----------
 2 files changed, 34 insertions(+), 43 deletions(-)

-- 
2.20.1

