Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37EF348158D
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 18:04:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240978AbhL2REc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 12:04:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240850AbhL2REb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 12:04:31 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 675F4C06173E
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 09:04:31 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id o6so88563831edc.4
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 09:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ieMbS+0D70pohooVgVjI3yQAHsrI5Yv9aY0un0BvWo=;
        b=xhe6pIARJ6nLxgaxAop08bsGSZx7Kd1UHcvKv5ZPM0idYz9aF0B/bEfVlj/jBvPEtv
         EL+qyUCy17ZT5uW1wjT7/JjXHAAC22rkvHyo8Q2cuyrY5hEzFKU2LMuuPt/bEIBXMBcZ
         tsfJiiDsS97+WiMnMJrXiLSA/kDkYo4uhIiyzdEA4TAXXm+x7BPiFOBCbj5/VlAqsAvE
         2Mltoe9ZvCTgvetpz3GsLVq+0zFxvjuXZA2zLJaeFXQ4D/LPhmRyDvt4ZbQ8WqyNT3Lo
         IxkocrOxDq6U1n3AjNJu8e61H14NFTitTuJYG3isHVjxir78T+h2tld3qMIe4PnoIXv3
         MtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ieMbS+0D70pohooVgVjI3yQAHsrI5Yv9aY0un0BvWo=;
        b=l2a3MMsyt6Nzz+/Aevnn03dOd06YwcbU9+GjCj94DjUFH92kjpdavSgq6Pp0soXMWA
         qzfCISVikX8GMC13O17DDvyFrySt0uo2T92h6dA5APWmPsF2NCiigXrd6P4O/fugWfMq
         gB8wWoi5Iwh+Uwxc8T2UVjLvR9KPcIClH+qX2HwxFC8zSaEzlRmmC1Og34wMkxUjv2m1
         rWANlETAouTu6QaPoyavWvNlgEQz+biQLpY5VR+nm6kOBc8sW3GkDEgXOKRRkYoDwCx7
         uMMRJKBy3cIuNpGx1u6chaLQja8zgQBYDKssFUgWgvfu5awlVbzMdLgH4rTHo8EwguRw
         pG+Q==
X-Gm-Message-State: AOAM531+t8a/Ie2qmdl2/7xKIUMDN9cecnJGgtj3bYZfD9F2vhnh4pz5
        9YG3cMmjex1TcRzLfWnAw/S7Ew==
X-Google-Smtp-Source: ABdhPJxEun8C2Rz5QYSsXiRo78geOqzPnu/l72Y9HBWwUVyyAPVjgqYpYhJYTw9hG0hiFAmsYo+q8Q==
X-Received: by 2002:aa7:c5ca:: with SMTP id h10mr25978582eds.401.1640797469905;
        Wed, 29 Dec 2021 09:04:29 -0800 (PST)
Received: from localhost.localdomain ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id w11sm8546153edv.65.2021.12.29.09.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 09:04:29 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Kiran Gunda <kgunda@codeaurora.org>,
        linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org
Subject: [PATCH 0/4] Enable display backlight on Fairphone 4
Date:   Wed, 29 Dec 2021 18:03:54 +0100
Message-Id: <20211229170358.2457006-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add and enable PM6150L wled which is used for controlling the display
backlight on Fairphone 4.

This series depends on the recent wled series by Marijn Suijten,
currently applied in the for-backlight-next branch of
kernel/git/lee/backlight.git (or linux-next).

Luca Weiss (4):
  dt-bindings: backlight: qcom-wled: Add PM6150L compatible
  backlight: qcom-wled: Add PM6150L compatible
  arm64: dts: qcom: pm6150l: Add wled node
  arm64: dts: qcom: sm7225-fairphone-fp4: Configure WLED

 .../devicetree/bindings/leds/backlight/qcom-wled.yaml  |  1 +
 arch/arm64/boot/dts/qcom/pm6150l.dtsi                  | 10 ++++++++++
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts      |  9 +++++++++
 drivers/video/backlight/qcom-wled.c                    |  1 +
 4 files changed, 21 insertions(+)

-- 
2.34.1

