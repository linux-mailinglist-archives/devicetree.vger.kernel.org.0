Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37E633F26DB
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 08:34:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238257AbhHTGeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 02:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238552AbhHTGec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 02:34:32 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A3BC061764
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:55 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id h1so838067pjs.2
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l5UjOdchXs6TvxgAlQ1PtdmA7+D4r3Icdkw2qZVkuTU=;
        b=bTuZUZG2L023gJdqS/6c2NsYteGNsl9DpgJy9cEKZSgBK3ciqceHtp+TCGQzXnqHha
         TQCCoYEdT3V3+Gr1ejZU8RfAoNXn6ijo2UmUBzbv27O8EJ5wVN2J9aY44SL6QvhNFwjn
         cNXQ7caJT172iQ/JDpoq4NZFyZ0ZCgYq3qYnbw/GaGmiu3I19DRqak9yfrW9kaPiSH1Z
         1sFA7WRfJvQmIhzGiV1aUm9NuV1aTAX4+HEXQ+meK4fRmBM8ddVpK4toJsecpCUQR3vF
         RTL9ildAL8RHP6iIMY3cmFTTKh1Wae5w6iz4pPQggstfL6z9KPJtJBdKUUgPgzaxi8rS
         R4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l5UjOdchXs6TvxgAlQ1PtdmA7+D4r3Icdkw2qZVkuTU=;
        b=dHA5MtvCqWdck/H7U1e5TvVBuwxg7HlHLhJw/yg7hUxaNRXeLuHJMh7o83WETNfyeV
         XEa0RQbtDM3pbneraF65lzfQ3SNJe6JuD+VG02TPdUMWU86TKyUP2c+he0lLh9SE2f6B
         5oeCv/4DUtZgzlyMFgd3oUIIWztGc36SovZVKHn2FO6+UwndO8LkCxd7siAJj+mm1+1N
         J5S8zUV0n2fUmu6tFr9+svSQfnsv2Ukg7OJpxXlbVSQGqq+CpFgb/knVGb8wBhRPpq9b
         oGF16qRHHqY8yKPhmPkhlPdRCIE+lJp809lvmvD1z/e35bIDo6jiPK6TaqLV/6Ju9cga
         di3A==
X-Gm-Message-State: AOAM532oB00UuF+26xNGD4I+ShY3WzMdF9bUc2msPhI2GaPaWgJIci0S
        HFqiTKANn/UxSrgWfZg3sq1xAw==
X-Google-Smtp-Source: ABdhPJxcfJeJTAnFweCv0/oxrTDnDiLD/9R6V2Ea7CuYTrnttJqAItOzfFKmmq6j+RJkk0hAGkXpVQ==
X-Received: by 2002:a17:90a:ee91:: with SMTP id i17mr3018612pjz.67.1629441234921;
        Thu, 19 Aug 2021 23:33:54 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id a10sm5612160pfn.48.2021.08.19.23.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 23:33:54 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v2 2/2] dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 20 Aug 2021 14:33:37 +0800
Message-Id: <20210820063337.44580-3-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210820063337.44580-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
 <20210820063337.44580-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The auo,b101uan08.3 panel (already supported by this driver) has
a 3.3V rail that needs to be turned on. For previous users of
this panel this voltage was directly output by pmic. On a new
user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
to turn the 3.3V rail on.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 38bc1d1b511e..a7091ae0f791 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -36,6 +36,9 @@ properties:
   pp1800-supply:
     description: core voltage supply
 
+  pp3300-supply:
+    description: core voltage supply
+
   avdd-supply:
     description: phandle of the regulator that provides positive voltage
 
-- 
2.25.1

