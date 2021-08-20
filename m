Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0FEB3F26D3
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 08:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232727AbhHTGeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 02:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231998AbhHTGeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 02:34:21 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C6CFC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:44 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id x4so8178011pgh.1
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 23:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uizvbGrAGell6LdMB1pzSSzYApXRoXyVsqw6ZRcvWA4=;
        b=1FzClz4/cP22vIiJuVHlGAzTd7Ib7PAHSg++BBzrNQtZk87GbqGXy33+JHRwf2bG9w
         /V0nlxAvcTWDyoxqzpRitPEur2uuK0JjEeAQn5sVKYYw1vg5x2QJ3nMjtQW1JL0a2xg2
         5nhStFIcR+G5IRnwzRVyz8irwDXqNtlKGnCjjECvPtu7SQneOWh2nyFqxpTN6TunXVuP
         dZcbr0y8GdXgoT/sK3cl+fBc19NSRh+Yt5+JnikFM5omtG/nNKhBi1imRFMJQGPGRP0q
         eBxA0spBPqp0bKuF8yK7T/zHFoDkzxdKTMF/S+cSm6auSGc/Eq1UTY3B1GZXHM+f15SY
         5sTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uizvbGrAGell6LdMB1pzSSzYApXRoXyVsqw6ZRcvWA4=;
        b=k26jxQqWk4ZTWJndnJWsqN2/99TBz5eOhEv0SE5SXsaqN01O2IbHevzq8lQ+bk6q7D
         USkJmqhDwkSdgcRN/BtkulR1gQYJpk6f6hLcf4xe4GZtLs3yWBdSfr8FCfi9xxfaRxZv
         XbpvaXpOdNGR0NP7TTqgmc6WFgEpvqsztCx+OJQ6I9BC9+BBq4wvFrabba+OayY/eaZF
         h1jcOUsqrQm5BmTV5VzAZrT7TBz5xt2FpeE/ur+0WBCBk6noRPBhDkjvOMyS/9O03AJK
         YqehhVPIeByk/9fQYEIfxttFdPissVvi4/GFf4U5vRp0RFftKIzcD5vyXs2aBfRTXM9j
         HNWQ==
X-Gm-Message-State: AOAM532HGLWLZrFGIvLLY++JUjn2+58LcaNmskMu7JzwDmIpzTbYseuv
        hl9f+PLWVcVpI9INngqZTsHCTw==
X-Google-Smtp-Source: ABdhPJz4dCXSZ33XEWhwSZMTETDWB1y7AOtiIjlAEa80L0dWADYvBITxJsFjeraeegigfhEzzLTfUQ==
X-Received: by 2002:a63:1460:: with SMTP id 32mr17343074pgu.323.1629441223783;
        Thu, 19 Aug 2021 23:33:43 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id a10sm5612160pfn.48.2021.08.19.23.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 23:33:43 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v2 0/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 20 Aug 2021 14:33:35 +0800
Message-Id: <20210820063337.44580-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compared to v1, "pp3300-supply" is removed in the required list:
dt-bindings: drm/panel:
   - reg
   - enable-gpios
   - pp1800-supply
-  - pp3300-supply
   - avdd-supply
   - avee-supply

yangcong (2):
  drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail

 .../bindings/display/panel/boe,tv101wum-nl6.yaml      |  3 +++
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c        | 11 +++++++++++
 2 files changed, 14 insertions(+)

-- 
2.25.1

