Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0A272A8958
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 22:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732568AbgKEV6J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 16:58:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732293AbgKEV6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 16:58:06 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC836C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 13:58:06 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id i7so2298908pgh.6
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 13:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2C9RwNHEEzntRHRC2/FatGdskUP1kHVzkLqXpbiboB8=;
        b=PFT3+0PatJKuPYB1chtX4wnurYFYnsTkZSjFZzbZIlZUrbjWqygKzClUHVVTbI4Jpg
         hgURVUNZM1FYPacsH+a8eCi5tVeuuVapm/G9vqavgnwFwa+R2/vlEu2/Hh1v98Z2fOEu
         fQf9HVXfStgowndj35ZlQthH5zvK98BkXHjNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2C9RwNHEEzntRHRC2/FatGdskUP1kHVzkLqXpbiboB8=;
        b=GgYmy/OQU9w925evfejyfaMkxBlPMXCcDRNad9ouDN18gaR0paVNrBaBjJwzJNhuPO
         eTXUwXqYElf24qwwK/BIQ25+KkBkta1Ve3wBThYc8ktuR+SIPJUiU3s69PSbFk2oTi1x
         5EQHMA8dTiif5atUh0FCdIxeM56fWSRYHvnFwQVlKLK8mV7zfoASpjv+q2P1ZC069EZ4
         CVgCJoR9UJ/I1j+VgD8Yq9/P4SY9W15JaMPX6GRAVj2mqMSbbpgtYdci0lwpuk2AW15e
         5pUNL3bJUiATmtSpsBp6I0BBcyrQFACUwIyNt72tYVwsz19ixIPr1sLOCu6/3gATcOsZ
         PkRw==
X-Gm-Message-State: AOAM531ILNcmLIVIT3a/zmePoOmrz1TKKSlz8Ucg7b7/bdSDp/WxsQsx
        bnqJNWUoAtBSr8S3n7TWDUz+sQ==
X-Google-Smtp-Source: ABdhPJxiXwT2dZs/H6MoJPes3fNW6/NBVLO8bmXlFqmTu9H1Yd0qzp+LtxSQvsnzXXg9NXSdjBi2DQ==
X-Received: by 2002:a63:d252:: with SMTP id t18mr3901954pgi.300.1604613486363;
        Thu, 05 Nov 2020 13:58:06 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id k7sm3572890pfa.184.2020.11.05.13.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 13:58:05 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Herring <robh+dt@kernel.org>, robdclark@chromium.org,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] dt-bindings: dt-bindings: display: simple: Add BOE NV110WTM-N61
Date:   Thu,  5 Nov 2020 13:57:41 -0800
Message-Id: <20201105135639.v3.3.I28d9e32b3cc0aae980ecc39d364263a3f9871298@changeid>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
In-Reply-To: <20201105135639.v3.1.I31c4f8b111dbef1ab658f206764655ae983bc560@changeid>
References: <20201105135639.v3.1.I31c4f8b111dbef1ab658f206764655ae983bc560@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add yet another eDP panel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
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

