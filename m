Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85DEE4576E9
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 20:15:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231322AbhKSTSO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 14:18:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbhKSTSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 14:18:13 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B2CC061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:11 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id k37so47923969lfv.3
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fqxb394vIKMSYz+aT45wHm3mEL5MPXqOdma49Y8VwaY=;
        b=iJwB34nqy9HG3nya5j2s0nxBhaPCZreKD+ipuWoSvcocEoMrzp7J3medTjaLSIUKy1
         EM6aG7L3/0L0zF3nDSdkJBN2FZYJVjblPE6YIRA2BBM0tPT1XNRK2Xg/wGqClE+F69Dr
         FmzGu0ZjgiIVEdFs0Bcbo1YZk2D2HzYuhB1JcLqpDdEMMSgq/ZdN11MU58vrg6rlAJR9
         CkPLg6rVLTwBUwgAIeZg9HrByDmz63E5gg/ZFYbb7FwfY8ARQk7HJdVbAoxaupYQjeXK
         5nTHsMq9NGVxNtXyWaMSgPQkcSnT7FGriSPJ0EY8fYNDtQxCNghqESSIOinJPBZ255/a
         W1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fqxb394vIKMSYz+aT45wHm3mEL5MPXqOdma49Y8VwaY=;
        b=KAhzNXavt+Gd2vwzPBQmO3/Xsu3NS37uIKAILmGSRpAiVb7RXp+WOYw04XV5fCM7ml
         FxlpQ3N/DNI6rZ5n5pfg0gbPoFUtPelPhDsQL710F8danXKkXeDGwVqPVBhn/igMQfMD
         SgQD9FplbhOv1AAtSrPn+aipMUycbnUzs2eJ7BvBn/jA+DdzpuVnjkVlZ9RtAg5ilFnX
         oXmc7wMpoy2W+GR2XROtM6UI4oOZ0DHRwl1nynS2N2l4RFvLtdB57Zt/tDDKqlPpARQF
         GboVEdM2WZjCIoepX4GS+O5ZImlCn1ZMGoehpgiLQ4PRgP+nKR4uWzwKnnuEDZfH5/I0
         r2QQ==
X-Gm-Message-State: AOAM530CQr6L/bFfFK/3R9uufwdpNHjSyQHowzhbhsE8fbzBDTMCNzpc
        OKCF+gg814sq7ZrrCpXLHpg+xA==
X-Google-Smtp-Source: ABdhPJxnPfmlGPFS7PZT7SrKD0sk9fMrMtpuLsj88vaOYKm8D4yhTPMhA8hmZgGgsI5hfat0icJE0Q==
X-Received: by 2002:ac2:55a5:: with SMTP id y5mr34563844lfg.468.1637349310045;
        Fri, 19 Nov 2021 11:15:10 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id d4sm67676lfg.153.2021.11.19.11.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 11:15:09 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Maxime Ripard <mripard@kernel.org>
Cc:     Evgeny Boger <boger@wirenboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Enable RTP (GPADC) controller on Allwinner R40
Date:   Fri, 19 Nov 2021 22:14:53 +0300
Message-Id: <20211119191456.510435-1-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


R40 SoC has touchscreen controller also serving as general-purpose ADC.
The hardware is very similar to A31, except that R40 has separate
calibrated thermal sensor IP, so temperature sensing channel in RTP is
not documented and is not to be used.


Evgeny Boger (3):
  iio: adc: sun4i-gpadc-iio: no temp sensor on R40
  dt-bindings: iio: adc: new compatible for Allwinner R40 RTP controller
  ARM: dts: sun8i: r40: add rtp node

 .../bindings/mfd/allwinner,sun4i-a10-ts.yaml  |  1 +
 arch/arm/boot/dts/sun8i-r40.dtsi              |  8 +++++
 drivers/iio/adc/sun4i-gpadc-iio.c             | 32 ++++++++++++++-----
 drivers/mfd/sun4i-gpadc.c                     | 17 ++++++++++
 4 files changed, 50 insertions(+), 8 deletions(-)

-- 
2.25.1

