Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78A4422E6D0
	for <lists+devicetree@lfdr.de>; Mon, 27 Jul 2020 09:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726853AbgG0Hn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jul 2020 03:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726116AbgG0Hn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jul 2020 03:43:59 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2290BC0619D2
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 00:43:59 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id z188so767032pfc.6
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 00:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yz4TcW9rTup6J1JHf4cL+vgG/kmFz0aHv9ruePdNsKs=;
        b=aFXOkM+Be+7mBtbE26DlXdCZ1eQ7pGgqRGMDv7uP587bt+zwmfsY4EiU1e0wTOgTy3
         Yw3ZlK7Y0MBV7i48If//5OPi/xfuJ7myy+YbKQ1g0MwO+4U+9eTWWoe8SzCgaZJ+dUEg
         wOytugbcFSL9vY8q9xzzyKmeiWm+gq9jldEOniIwHuJnAzv+oWs4lo6i3X7j181HUNOl
         0KY3hNz8ipRo93vT3i38xhYHmOosCK2Te7HhO1rdUrFxHyJBhMXzppT3SpiC7mbZp1jd
         8txo/0j375SmCHvYFEEyagYwGcCTmwlqbqkY86RUt5BW3L3F47+v5SuVM5jnf3PrGnct
         QBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yz4TcW9rTup6J1JHf4cL+vgG/kmFz0aHv9ruePdNsKs=;
        b=UmST3+2lhyNR9LE3NtScZlMElgid4fdHLUaT99K+GDDD1B7NB9hlR712SQu8kR2b5x
         H5WoT1SW9BTLLtNtQZ87+HpwWPCOU/0RcGwzuvJKg3RbUMCgq6dP/grvWC77O3aOeKD1
         Don2p2AtjnxAe6yAo/XCN7NYDn/HbZX+Jfk0MasU7BQNJ/idEAr503GdFG777ZLcUIS2
         nuIauIWZkynJa5wum3H2vaygR3YTxgOlYvoJSiHLbLrQc1t4Ptk7uLcIlnzAVI9QYHBB
         VlpOCY0SGAh7aOttM86R5nYIvjvQnyEJlgyfKUEoO4C+1g6M5sjyujC9ogiaiyNonIqZ
         kz1w==
X-Gm-Message-State: AOAM5318T9HNGTL7ReV7Km4DoaLEwwOiVczw5/96ePFix0+3nNRU0DSi
        R15FBdKuRym0TNKIvJ4/rFT5yw==
X-Google-Smtp-Source: ABdhPJzNAhwoobYuzfypI6jZj3vQId16bxmejaBmJhjHNhj5jBPLz54zUVzlg6Vppj/NNfSRoK5DIw==
X-Received: by 2002:a63:6c49:: with SMTP id h70mr18571850pgc.150.1595835838525;
        Mon, 27 Jul 2020 00:43:58 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
        by smtp.gmail.com with ESMTPSA id n22sm13062152pjq.25.2020.07.27.00.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 00:43:57 -0700 (PDT)
From:   Sumit Semwal <sumit.semwal@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH v3 0/2] Add support for Tianma nt36672a video mode panel
Date:   Mon, 27 Jul 2020 13:13:46 +0530
Message-Id: <20200727074348.26116-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Poco F1 phones from Xiaomi have an nt36672a video mode panel; add support
for the same.
Most of the panel data is taken from downstream panel dts, and is converted to
drm-panel based driver by me.
It has been validated with v5.8-rc5 on Poco F1 phone; my tree with other
dependent patches is here [1]

[1]: https://git.linaro.org/people/sumit.semwal/linux-dev.git/log/?h=dev/poco-panel-upstreaming

---
v2: In dt-binding, removed ports node, making port@0 directly under panel@0 node.
    Also updated the panel_on delay to a safer 200ms as needed for latest Android.
v3: Replaced port@0 with just port in panel@0 node.

[1]: 

Sumit Semwal (2):
  dt-bindings: display: panel: Add bindings for Tianma nt36672a panel
  drm: panel: Add tianma nt36672a panel driver

 .../display/panel/tianma,nt36672a.yaml        |  95 ++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-tianma-nt36672a.c | 859 ++++++++++++++++++
 5 files changed, 973 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/tianma,nt36672a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-tianma-nt36672a.c

-- 
2.27.0

