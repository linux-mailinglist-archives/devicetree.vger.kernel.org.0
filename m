Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D56A540A460
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239037AbhINDYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 23:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239019AbhINDYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 23:24:44 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656F4C0613EF
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:23:25 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id w8so11367742pgf.5
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3PU6rpzmAIF3MmTwuCR+v+KeUhrwSAWjubDLHIrtCxY=;
        b=wJQGT8RAjHG5DIUGjAhUK1TX7rW2wxQFdBzVd3921pRl8YzicvOtRBHVwshLYTwCec
         bVHXEhJvWK5ugGTUuU84mqOOi3iEvT9cktDvycj/YVHo8VpxC+MgjjovfuHaAjaJWckg
         oj4ad3sy1tkStkQOAPZN7SN6I3SXqSdSBFN7no0LFLFJNj06cS0ejfNTUbnVUxf0r/ln
         fg0ij5s63EXaeCgIr7B0fJwk94bxBNkNwbuTnCODvdD1FbHyPOGHe5UXzJNdSWz7OEtW
         EX76gpwpPq9ZdE6pq4MZJuqDJkOY1ZU1Oov8c8fTG3CqsJZemHhMGmm82VV8uUkrv18a
         QTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3PU6rpzmAIF3MmTwuCR+v+KeUhrwSAWjubDLHIrtCxY=;
        b=ZG5gZXDWLf7jTa+AxMY9E7m/Er0JmKaz0UaL6NcudSCaMLouWJABBNM1QQjhnwlQFY
         QFmH9l5CJLYANABtZwifiFNArZq5TbAkAhzGACGni9v13GrE4gjSOpZAXO5Hcik7+krq
         5oMPP/1E65oDr8iYwxPJ6XyodniSWZEGhEufYKTQplec34LhgbEz+e/msPzcsD8qMihU
         SlJdkuDi2qUhiXWcTQkVslzZ2JnG0x7ziCAxpYgXdUKT/NX2aJtIhclwwxOllJnf5rLi
         tgRTwdBbvy89yk3nrLAb73dmPmnbrN83QXwY7mMIkjDB+P4O+6t7xn/w19tFfhpUrh0x
         XCCA==
X-Gm-Message-State: AOAM531UhB1ajTVBlLUlMtBg3UXAHxz18EqxZNQxjZDr5FMZExup3wmE
        D5/pNqo5OCN+s2kK/2vMDyqbBA==
X-Google-Smtp-Source: ABdhPJyVQDJrNV7MinubH+RyBfDVNPkJneyQGBSgzJBc7N1wfYKan9qqxLoqqYx6l1M4/ugaPPWWqA==
X-Received: by 2002:a65:6398:: with SMTP id h24mr13594046pgv.367.1631589804965;
        Mon, 13 Sep 2021 20:23:24 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id x15sm9354101pgt.34.2021.09.13.20.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 20:23:24 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [v6 4/4] dt-bindings: boe, tv101wum-n16: Add compatible for boe tv110c9m-ll3 and inx hj110iz-01a
Date:   Tue, 14 Sep 2021 11:22:52 +0800
Message-Id: <20210914032252.3770756-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914032252.3770756-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210914032252.3770756-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings documentation for boe tv110c9m-ll3, inx hj110iz-01a panel.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index a7091ae0f791..45bd82931805 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -26,6 +26,10 @@ properties:
       - auo,b101uan08.3
         # BOE TV105WUM-NW0 10.5" WUXGA TFT LCD panel
       - boe,tv105wum-nw0
+        # BOE TV110C9M-LL3 10.95" WUXGA TFT LCD panel
+      - boe,tv110c9m-ll3
+        # INX HJ110IZ-01A 10.95" WUXGA TFT LCD panel
+      - inx,hj110iz-01a
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1

