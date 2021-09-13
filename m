Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3852F4089AB
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 12:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239292AbhIMLAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 07:00:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234958AbhIMLAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 07:00:53 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E6CCC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 03:59:38 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d17so5522986plr.12
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 03:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xXGxvZeRy11wrq81EuFsuIuGp1cxXAYLGS+zZfcIkQ8=;
        b=scm3Agzn64NCaeJ9kze2BH9zZPJ3JWjFGBzUENGevvAR7dJi2wq/l26a+oCyFFF2bI
         2WHboZ/qUUw7kM+Zxn2qhxCmHflJVYl5zjDH9GDPh/jP4d8mqTbmeEh4kg4n8lOw/70M
         1KTxonW7v5pb4/y78fljlsE/5BjzmUuiUwOm7go2GU6Fbbpdqx/71zpSwXSjyMEF8bFI
         EE/q0a7nDKkREl/0pGYtbCAsA1kb5Kfdken4I7DrfQy6aSx2xlt1B2LDfyRS68q79akO
         GijexyxDOukcI+XxPpg6bzyRNtcbJA97+0gKaLHdHb0tMK3zPU+wRQUigDvpoRaQjJ7K
         mjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xXGxvZeRy11wrq81EuFsuIuGp1cxXAYLGS+zZfcIkQ8=;
        b=mL5mAYGeA6To3E6JNgajMb1sH6MmL0m7YK8LsHFF2Pb7JFssms5iIW0v53SNzHvaCd
         gAW6XSw5BnwwRALS+mq6gUwTbTeNAcDTxTs3zffsttZsLwz8xy4/eTDDysQ+69LJjkel
         KtV0EVgnhJjjIoOeIcbk9QLwBfE2Bp6bfsc5Y4qZxpJVe0mnStyk2FCoyXzkc+/xE9wx
         zVc9BUMwaVIkufkAqqUNFoDIg5Yk38wZE/ie8HQCbGD+s105JL9sewaOLAwvMrvZqdKu
         0iLRwwiL736ZLhygBdP6tvxKbPSrx1py/84MxqqYKBPJMLQMv1sj/dL3am9tos3C/LKS
         6QmA==
X-Gm-Message-State: AOAM53146q0e0czhkn1y8OUEhSuTKMPlObcwrlyTEpQqsl2hxc6d6DD8
        wjqxkGhiQwm3489lHdEBYFJQ+g==
X-Google-Smtp-Source: ABdhPJz4NPRdoHNetAHXZGIJVMEYtvswwAebbRUWgXm056DPe2NqGkzVMyseA4o2RCUCl1hQpUut8A==
X-Received: by 2002:a17:90b:1957:: with SMTP id nk23mr12405121pjb.180.1631530777637;
        Mon, 13 Sep 2021 03:59:37 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id l22sm8279641pgo.45.2021.09.13.03.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 03:59:37 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [v5 2/5] dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Mon, 13 Sep 2021 18:59:17 +0800
Message-Id: <20210913105920.3719525-3-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913105920.3719525-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210913105920.3719525-1-yangcong5@huaqin.corp-partner.google.com>
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
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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

