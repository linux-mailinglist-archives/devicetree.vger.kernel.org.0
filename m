Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F7F93F2735
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 09:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238709AbhHTHB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 03:01:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238571AbhHTHB5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 03:01:57 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5282DC061756
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 00:01:20 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id n18so8232821pgm.12
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 00:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uizvbGrAGell6LdMB1pzSSzYApXRoXyVsqw6ZRcvWA4=;
        b=BJYUrFZ9DKhzh2jtjSHliM/sUyutwap8kXXatN7VNsHRkqUaEMHI0mgCMg71KIsfIa
         sHRABIlGwPDk9U0wuYM7nD9ZR46XCJioaK4B5M/3w3M2PRk0dfwS2cFFuiRlKqQjW8jY
         tvZDca81USJumwU1FGDACrFZ+43bz8u1lL07+03u9dIifBvSyzwbnCfMQm07mzorr11t
         DKZ+yQZNPVjLx4uPTkwnmb+bTrN7j6PhdX1zZtn2NitTfqZE3ykeUOOd4xGx1vKMKsgQ
         IGRajXCJ7KpvmH0bjca2WfCe2Myw5sbtCIvu7VnhYNcor6UlH+TBB08ZRrgl5tkerJw6
         YpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uizvbGrAGell6LdMB1pzSSzYApXRoXyVsqw6ZRcvWA4=;
        b=bZlLx1auxjo38h+5sk7J8TNkQYM7V+KHOjVjfxoy0zrb/7JDXJZbIUA/0zGObOzpmv
         NnffDFiOdFLZj9Ue5mXjS4qpBEESUK5IX9X9Z3dO6pPck2DS5ma6U/M6Xqpcq2WjVadO
         EppWDVCUuD8Q9Xv7WTbJbd+mfipU3eL2/GO3VIuYF8h8C9ehYsh4MD/+mCtR88H1Xlrt
         4dWgO2LCX+7ccVXaW6UDOPGdX+DG9zJ8M04msZ4aHkBGgknitIj+pVuo9/V2Zwh0b9xl
         b4zTdszwTlpmSlXUrtlXsdVjggPH0gvAtD4HTtCpUoAFa7n6/Z0DtoqcPo9v+gAnPZ5a
         y6Dg==
X-Gm-Message-State: AOAM531BFy4u0YxDJmNUZxzZuvqqeFWswkGDGXy0Tq4+2vUBi/6yesyH
        M1HCYR6yZLllX1sQ5+P2prqPKQ==
X-Google-Smtp-Source: ABdhPJzfJ+DCZPI4sqU98a4xQTh0riCfmuT/fjUp76IHPE4Py5imMiqbWi4NOtRQ499oi0xCi3x/GA==
X-Received: by 2002:a63:5445:: with SMTP id e5mr17406690pgm.100.1629442879762;
        Fri, 20 Aug 2021 00:01:19 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id hd21sm10539997pjb.7.2021.08.20.00.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 00:01:19 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v2 0/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 20 Aug 2021 15:01:11 +0800
Message-Id: <20210820070113.45191-1-yangcong5@huaqin.corp-partner.google.com>
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

