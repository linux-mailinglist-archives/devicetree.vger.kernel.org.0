Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 942D53865D9
	for <lists+devicetree@lfdr.de>; Mon, 17 May 2021 22:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237624AbhEQULH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 16:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236950AbhEQULG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 16:11:06 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84DC7C06175F
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 13:09:49 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id k5so4293674pjj.1
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 13:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+urYn/auWJUjc3W4sdmPucnZoewzDoUKh0jwgsir+nQ=;
        b=RJIYA2O4giqjYO66q0SQpXcr1odgBXvF0aQ7MZWxCqHVao92mTCpdHiAQvvuOvnWb0
         VZxZOmXubCqnouWsB4I/kkQdT1Im1eoL3aSwrMtqJyVTC9wk2bixTA8YpNXujs3ebJNq
         UgdlMPwUrXlBTiOUWlGJKj96af58fxXxVUckM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+urYn/auWJUjc3W4sdmPucnZoewzDoUKh0jwgsir+nQ=;
        b=IiylLOtUvO85SJKz0swSsjorlV7FKDeNFnvPOBUp4JcnS4C30JMEiFIgDZnju2VIbz
         WZZGFC1qvUU7iDv13fye+BPQ3JKNElUI3KbaVCYj0DJhSGaK8emj61le2o71XT69Ffxj
         pdZ8sAif8nmu4SuoB7ni8enPNtAa2HanhBlnOKLbXVe5QutC3C5QTStH9FWReCPivudI
         Ji8yVCpp6GKGq6c4u5ix1M1UGZlRvLm/i+Qjc6c1m59ib1RhrGC/9vplYvP5lJJ2qEaD
         PtHDMH1GTchYTJbad/bSsI2CDKAkpsTDcYsgvOir3EPsNt9phTZ+eRFQHiFZI7tEcUDs
         8msQ==
X-Gm-Message-State: AOAM533uYbioFVLHULazWr8gW9yourFmFZoFzVAMTDiBtHQE3IMsXQ9M
        eG4Q4k+0kHarUJBPqVXBrd2LjQ==
X-Google-Smtp-Source: ABdhPJzqYY2WqAKQmfMbYwBASkiXd/jkLCuXy99v9JmQQ8Cmyq311d8LnPThMxqgk98rM3Md4cOG2w==
X-Received: by 2002:a17:90b:188f:: with SMTP id mn15mr1153919pjb.219.1621282189154;
        Mon, 17 May 2021 13:09:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:bc91:c597:ded0:7930])
        by smtp.gmail.com with ESMTPSA id x19sm9078941pgj.66.2021.05.17.13.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 13:09:48 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Lyude Paul <lyude@redhat.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Linus W <linus.walleij@linaro.org>,
        dri-devel@lists.freedesktop.org, robdclark@chromium.org,
        Steev Klimaszewski <steev@kali.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 02/10] dt-bindings: display: simple: List hpd properties in panel-simple
Date:   Mon, 17 May 2021 13:08:59 -0700
Message-Id: <20210517130450.v7.2.Ieb731d23680db4700cc41fe51ccc73ba0b785fb7@changeid>
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
In-Reply-To: <20210517200907.1459182-1-dianders@chromium.org>
References: <20210517200907.1459182-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These are described in panel-common.yaml but if I don't list them in
panel-simple then I get yells when running 'dt_binding_check' in a
future patch. List them along with other properties that seem to be
listed in panel-simple for similar reasons.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
I didn't spend tons of time digging to see if there was supposed to be
a better way of doing this. If there is, feel free to yell.

Changes in v7:
- List hpd properties bindings patch new for v7.

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index b3797ba2698b..4a0a5e1ee252 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -298,6 +298,8 @@ properties:
   enable-gpios: true
   port: true
   power-supply: true
+  no-hpd: true
+  hpd-gpios: true
 
 additionalProperties: false
 
-- 
2.31.1.751.gd2f1c929bd-goog

