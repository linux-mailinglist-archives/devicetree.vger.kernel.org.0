Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B503F95E2B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:15:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728947AbfHTMP6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:15:58 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:34475 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728283AbfHTMP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:15:58 -0400
Received: by mail-wr1-f65.google.com with SMTP id s18so12175558wrn.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hh2kf0s/i1cC//+TV+jY6cSBLC41FA/AKhHkBEYopZg=;
        b=OGWTiqhOkJoervwr8V3fEVbnEyMHxGs/1W6172hYGxd0VIkUGlvHUayJsibEsc8uUb
         qaxVQWgd9XIveUyS1N4JHSk7gGqfexD0evTGcbrwt2kwHdKSTJxtwMCoNtzDSgbH9K4Z
         kMTBnJfSLZ5XyFPQMvMsrecVrfdcaqjdQSxNxq32B0Foe1dD/7hiSIvzsICogq8XezrP
         A/hlRJDjt1RgGIvNwhxjrpzziA9q+tz+2QFhjHUXbFmViDzbjpYVPxE4DyffQDL1TrjP
         vK3MdLqJi+XYnLle/xqEQNhCcIu5xhAL1tKoQ2mHzXWmSZuztgA5/GDVCDX5Awx32or8
         6I1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hh2kf0s/i1cC//+TV+jY6cSBLC41FA/AKhHkBEYopZg=;
        b=Vby8DaiH9WX6sqUhtdFLvRmx9Wb35BYKOjsIZwtwa6XyTJlMN6vGHwxquCPRlU8v4G
         KbpiKi3KZ84y36pHQbcudpmbFfZmbYwoUn6YloXQoMUPoK23yNtkjgHyLxvnFCgr4BYD
         US5UVW5Ylpxv5wf7VI9OCCoVDCUQ0kgj/+/wEninxSY+O7qp/T2sgAizLhb42I8UF0MR
         YNwU3fjhUeuGn0Xvf4tj31BRtG42ayS1FiD0AfxXVuNnyYrQn5CxsaX6qa6OwHkNS5JR
         +uF5NxcYTruv8lVu9TecTb/21ujDJCa6DWU15UvRqUa/wawSoJM2wRoBxwNgpuNNfPFd
         peUw==
X-Gm-Message-State: APjAAAWkVM7meVQt5oASRv7xGR44Bxcqv0/lr1R8mfimpxLQwDuc+mw5
        P3nd0xPK6ks23YDzmAQ0qRl9bg==
X-Google-Smtp-Source: APXvYqz4WW0/7VvjoMxKB9GaX/uDPbDLn33wVUDE24ydFXJT4DLtH+dQEcBjmsyWv2/9zGf8efKpuA==
X-Received: by 2002:adf:f04d:: with SMTP id t13mr33465269wro.133.1566303356447;
        Tue, 20 Aug 2019 05:15:56 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h23sm15300765wml.43.2019.08.20.05.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:15:55 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: g12a: add tdm resets
Date:   Tue, 20 Aug 2019 14:15:49 +0200
Message-Id: <20190820121551.18398-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the dedicated reset of the tdm formatters which
have been added on the g12a SoC family. Using these help with the channel
mapping when the formatter uses more than 1 i2s lane.

Kevin, please note that to build, this patchset depends on the new reset
bindings of the audio clock controller. I've prepared a tag for you [0]

[0]: git://github.com/BayLibre/clk-meson.git - clk-meson-dt-v5.4-2

Jerome Brunet (2):
  arm64: dts: meson: g12a: audio clock controller provides resets
  arm64: dts: meson: g12a: add reset to tdm formatters

 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

-- 
2.21.0

