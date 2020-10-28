Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91EAB29D9B1
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:00:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389837AbgJ1XAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389910AbgJ1W6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 18:58:31 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD0E7C0613D1
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:58:30 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id b19so379406pld.0
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VHzSigbV/JOyfbEwYkWBCndr5m2zp1xIjqS7IrkBvzA=;
        b=GpTrl91L3KD7Gr90gj8a7l0rvJe1X2jHQtuCFQLfsw22xq4Agzn7dK/J9hXGR/5w3v
         I/MSIETrvTEM/q209qUCvzj7mNK+4XlEqHQBnZoEmyZKnC2RP9toT2wCw7Z6jT11tYy1
         chNcVb3UKPF4au50BKJ7FiElgJuSMzrSaG6vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VHzSigbV/JOyfbEwYkWBCndr5m2zp1xIjqS7IrkBvzA=;
        b=KnPoy6aMFaSQRZr4rZfxagTgbK90OSRUONNqj8UhhUK8Zr5vJOpeaf96fCJn5t1Q94
         A9StNe5m7oMeHYv1dFLZxNnYojeTnv6EgDTwnGeumjfxynttvJ0YIIEgykWWDBvF9L2t
         WZb6C9CQNR6M46Qav4WJ2e5RKJOw3dbM9j8MjxfbNUnSG/tEucpbaw+WRHXtK45OLvnh
         960diS4Yk0Z0EpAUx+q0ecwzsHHw91nYvVucoB8C/20jOqupTBm/9Eh3RNxcyxhShjUY
         D9nTXzHkuZnAHmtLDC30+B+9Sh01K1ZtVVcpNJmXJaYTm2TQpRXDX5Oaz5HhPz4f/IrL
         8bNA==
X-Gm-Message-State: AOAM5319ILxecbXPz3brNHrj3+H5FcymC6hA8+DVcmz6NC4aO8rs3UpM
        nDFZD5BxwDUT4sDmWl+KFL78bw==
X-Google-Smtp-Source: ABdhPJxbrjrClcGm6KxlSxyjy6eM4uVyOkacCXkN7gEI6nLyjMmuprf+Mw+5/soBo1oXHAou/yYg2Q==
X-Received: by 2002:a17:902:8a97:b029:d4:d3f4:d209 with SMTP id p23-20020a1709028a97b02900d4d3f4d209mr1227225plo.35.1603925910429;
        Wed, 28 Oct 2020 15:58:30 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id b185sm394364pgc.68.2020.10.28.15.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 15:58:30 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
        robdclark@chromium.org, dri-devel@lists.freedesktop.org,
        David Airlie <airlied@linux.ie>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] dt-bindings: dt-bindings: display: simple: Add BOE NV110WTM-N61
Date:   Wed, 28 Oct 2020 15:58:03 -0700
Message-Id: <20201028155617.v2.3.I28d9e32b3cc0aae980ecc39d364263a3f9871298@changeid>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
In-Reply-To: <20201028155617.v2.1.I31c4f8b111dbef1ab658f206764655ae983bc560@changeid>
References: <20201028155617.v2.1.I31c4f8b111dbef1ab658f206764655ae983bc560@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add yet another eDP panel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index edb53ab0d9eb..93e244c67e8a 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -76,6 +76,8 @@ properties:
         # BOE OPTOELECTRONICS TECHNOLOGY 10.1" WXGA TFT LCD panel
       - boe,nv101wxmn51
         # BOE NV133FHM-N61 13.3" FHD (1920x1080) TFT LCD Panel
+      - boe,nv110wtm-n61
+        # BOE NV110WTM-N61 11.0" 2160x1440 TFT LCD Panel
       - boe,nv133fhm-n61
         # BOE NV133FHM-N62 13.3" FHD (1920x1080) TFT LCD Panel
       - boe,nv133fhm-n62
-- 
2.29.1.341.ge80a0c044ae-goog

