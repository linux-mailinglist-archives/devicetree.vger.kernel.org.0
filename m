Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C77FE3E4C56
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 20:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235424AbhHISrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 14:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbhHISrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 14:47:53 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 473FDC0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 11:47:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id x9so23086605ljj.2
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 11:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xUec3r5h0Yf1GVOfo79Nmw5vtoHWTeLeIGZ7Wbs+czs=;
        b=ytMzuEMLdq+4fO/i3YjOzv6wtmp4E4UdwKWpqBmwvNCEJSdvX0SqbeP8zK5p8BF9cP
         LyW0/WZEjKl5r94GPEGezJK8tmi0RVc4d/OtgEWbsKqkptbqRCNa6dMlgOHr3VCnBNGh
         cNYZ92TS/157tp9zzrPDAjbWNlBkwHwc3/Snt4x18L8yZe/fyYDtT2MZPcdWATMSSS7M
         Gfs1gKigSbsy0rJrB6DUxC2wvXxzaKzTTxq4NVI/aNnOVIBRVk6gZcI9P5I7WF7aG/Lb
         aRQPquhQRw9CQvh+Gqx6O9foRYPuVApF1M++AESTf81uHk5PJ40xCR6mpImpjrm8w2N3
         InTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xUec3r5h0Yf1GVOfo79Nmw5vtoHWTeLeIGZ7Wbs+czs=;
        b=JUMjc1rX62sJEXUlQEArbPSDxG+uXGq/NtoWCQi6v/by9N1sOAp4sq1VVMo37D2EV0
         Bbyw6bdFsicpcAgFMJipreNMfigKOlFAkgMoQlGrA4LnKtPNnYfU6KTo7YvHU2CBbwYK
         BCa09SvpsUvsFwqOAPVayMIWZoeVr1seooe/EzgEGg1+BSt1wCHBEeceQj9gZ4OZokj/
         AcEtHBgdE9U6pEjKokoopUre+yv/JYQLfS/vycaX41Uj2EDMBVUblHTFhEiOvzE1bonn
         8qn9caNvwWtE4eQ6c4+KFpiScyHIZb7iGBxSA1Jx/nudA+fXOJ5qWScvXk7wYaQUSnEi
         oWCA==
X-Gm-Message-State: AOAM531xCVDu3CKe0PEwyvpf4mhxeA3/Zun2Fl2M+tTGD1HyQrgc1C87
        JXjXGdOUfX7ZrcIW8TpOLbgdYA==
X-Google-Smtp-Source: ABdhPJzBx3kclUH4ijbuYY+bcSZYOZzCsOcVxnsmQPiqZjnK7kw8JzhXnikmPLBMjXWcr9MmjSkt4A==
X-Received: by 2002:a2e:b0cd:: with SMTP id g13mr655984ljl.270.1628534850704;
        Mon, 09 Aug 2021 11:47:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u22sm1216128lff.270.2021.08.09.11.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 11:47:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] Add support for Sharp LS060T1SX01 panel
Date:   Mon,  9 Aug 2021 21:47:10 +0300
Message-Id: <20210809184712.203791-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver to support Sharp LS06T1SX01 6.0" FullHD panel found e.g. in
the kwaek.ca Dragonboard Display Adapter Bundle.

Changes since v1:
 - Fix the id in the schema file

----------------------------------------------------------------
Dmitry Baryshkov (2):
      dt-bindings: add bindings for the Sharp LS060T1SX01 panel
      drm/panel: Add support for Sharp LS060T1SX01 panel

 .../bindings/display/panel/sharp,ls060t1sx01.yaml  |  51 ++++
 drivers/gpu/drm/panel/Kconfig                      |  10 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c    | 274 +++++++++++++++++++++
 4 files changed, 336 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c


