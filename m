Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64E5A11D04D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 15:59:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729122AbfLLO73 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 09:59:29 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35785 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728932AbfLLO73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 09:59:29 -0500
Received: by mail-wm1-f66.google.com with SMTP id p17so2868220wmb.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 06:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=Q8cDD1h6Kbt+wm67+7ymZTLscWfxx20xc71x85bi1V8=;
        b=swMATU3v8KmM1+9GIdXKQR6jSiOWRMCOPd5Xl01rpFArfJ3XAfwd8XMvQ1jGf7EYvH
         S7MyPMiaWUjl2NpRaTx0B/o0QlP/ReDBkqJZ494uKUJZM04o8MM4jHdRMtaA9rGbcxH5
         md7ZfDoyr0+K5+Ds4FRCXnDr05l58y/YgLN/xVSuCdUTQ6J3M0y9atPTykJGq013MPKy
         taPvYnxGEb/o4PfaH6zsEyDl7nndMkomGvzcJKRL7jDZPI79kpFik1saoJHdGqJNgh+u
         lyqOOG8mSXuI/iktQ2xEuGxTypgZB83oAz+GqolP2EGv77BXqSSbpi/2IpH756bGcB87
         2MtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q8cDD1h6Kbt+wm67+7ymZTLscWfxx20xc71x85bi1V8=;
        b=XkOG88dfBf2li3Q1y0Hmc2hiTScmA9BH+XqaQsuj6H1le8MJ15rLVZHCUf7BulyFfe
         NpPhJT6i93VbmW4Uh6LYGfzbcC83q9ty4ULQ3ySqgY6B9WxGFdAOz22aaHXAiawWNfVn
         H9n77lgJExLQdn+KXkQbLNGFzCrU8iDVeTSE/Z8jJkUkUZ/Jo6Hac7SqFLn3iWE64pkH
         BUQCEHW6j+aClliqzD3iKgNPQWRKqeuB05Rb2Fe6dTS4Og5UMkkqsambuyyaTLWCitXM
         RClJo3vukRQBVqgyV3S+cPqcQ75rG3ML9+7poIgvhxcRlE/g+jpjdbgSY/uF2rHfmjWn
         u7Gw==
X-Gm-Message-State: APjAAAUWMLO14axFvI+tynTlbG7EKGrqxf4FKtDoPfMPNKcrUk+G40Id
        9cen8rUqTetROtP7vbbCZ1W8tQ==
X-Google-Smtp-Source: APXvYqxQvIfo9ValD2pZteRv78WUJy9Ja4QFpldqUrLBkg8LV7Tf3HWrTT9klIIijQsPl9BRZGoXrA==
X-Received: by 2002:a1c:1987:: with SMTP id 129mr6978284wmz.112.1576162767185;
        Thu, 12 Dec 2019 06:59:27 -0800 (PST)
Received: from glaroque-ThinkPad-T480.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h8sm6670292wrx.63.2019.12.12.06.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 06:59:26 -0800 (PST)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     narmstrong@baylibre.com, mchehab@kernel.org,
        hverkuil-cisco@xs4all.nl, khilman@baylibre.com,
        devicetree@vger.kernel.org
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add support of CEC wakeup on Amlogic G12 and SM1 SoCs
Date:   Thu, 12 Dec 2019 15:59:22 +0100
Message-Id: <20191212145925.32123-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

this patchset add support of CEC wakeup.
We need to set logical address and activate some options in registers before going in suspend.
Registers address and options values come from amlogic driver.

Guillaume La Roque (3):
  media: dt-bindings: media: meson-ao-cec: Add support of ao-sysctrl
    syscon
  arm64: dts: meson-g12g12: add syscon phandle in cec node
  media: platform: meson-ao-cec-g12a: add wakeup support

 .../media/amlogic,meson-gx-ao-cec.yaml        |  4 +++
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  1 +
 drivers/media/platform/meson/ao-cec-g12a.c    | 33 +++++++++++++++++++
 3 files changed, 38 insertions(+)

-- 
2.17.1

