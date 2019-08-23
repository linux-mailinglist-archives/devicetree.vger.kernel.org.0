Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D45B69B3BF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 17:46:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387748AbfHWPoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 11:44:54 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:44149 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405929AbfHWPoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 11:44:38 -0400
Received: by mail-wr1-f66.google.com with SMTP id p17so9032281wrf.11
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 08:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=94WrC/BBgFJ3B1KulaFSwiNtZR1yN0jFyWLE8Zon3I0=;
        b=PG4XOJ29ZJXkv/aI115bn6+yjvx6Pazp64dPnO+Zc60xH8oYL9GNUGM2NUSEslY8KR
         4zNar2bwmtBWE4T7J3eukHuW7BvmFFpjsFocpkP9oPdgFr+W0bnVIgNN6fQR7ZiNSmK7
         5x8qOo+Buv6mV+ibVqQ+y9Z0TVh0iV90pKp5eJZrBbHs5ugAkYi8QTYAGX0OtMV0ugjw
         cvCLTVzbsy724GH6e6BzoPyM5zU1CkDKhxqGVfZ+Lzk05XiY1bqJK25kvUoFtSuxspDl
         Hu6QfAgJB/FlSyoOYtSqaEGhMY6vHF//rr5FP0yCR6bbByNXcyjIMbg/tiEkcdz3sdgh
         FPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=94WrC/BBgFJ3B1KulaFSwiNtZR1yN0jFyWLE8Zon3I0=;
        b=Ldx+xFz/eHrG3TyhFmaXHi4kpZcCPELnjgWKEsZUtX9C5/rvyo6cjg6YdZkMvnOP+y
         kr3tNErAPapwZCKlqNUs9E2LJ2LDu2NDxtxuQPzjEixtlVSSNrk78e76DsRzqwF7k17i
         905Qajs3cPpbA3QURN/h/gl8OHVBuz+dTfDFvXxfjveE2z27DoC4v1dkp+qecXHu11rD
         QFQcqW9qcaek8dkRsSyiKPP4xMBdUgRo2dZ4rzZL6d1gM9UCiakl3CyWaXIWAOOszUh2
         XNLuxlMXQ1CgM0hM9D6EjVQCncsgTQ0IGAJUHiWoaMdA83pmHPWVxt88kQPRyTYfz41e
         dzyA==
X-Gm-Message-State: APjAAAUtYPheVCecaAQK0iwfWawR9rs9Jsg69BcolDKEiyHIqAbUQlpA
        9LtvWJ3vuWJvz8P2kE6i9Y2o8g==
X-Google-Smtp-Source: APXvYqwezDRfZb6B8c8Y1CQApWZ9F//On7ooLCRo4hwkX0NwPYIUHhbrpO8M8TY2AesSZdBr3W4hLQ==
X-Received: by 2002:adf:dbcd:: with SMTP id e13mr5804786wrj.314.1566575075858;
        Fri, 23 Aug 2019 08:44:35 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v7sm3567342wrn.41.2019.08.23.08.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 08:44:35 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] ASoC: meson: axg-tdm-formatter: add g12a reset
Date:   Fri, 23 Aug 2019 17:44:30 +0200
Message-Id: <20190823154432.16268-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset add the possibility to provide a reset to the tdm formatter.
Such reset is available on the g12a SoC family and helps solve a random
channel output shift when using more than one output lane.

Changes since v1 [0]:
- Rebased on kevin's tree

[0]: https://lkml.kernel.org/r/20190820121551.18398-1-jbrunet@baylibre.com

Jerome Brunet (2):
  arm64: dts: meson: g12a: audio clock controller provides resets
  arm64: dts: meson: g12a: add reset to tdm formatters

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

-- 
2.21.0

