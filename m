Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D681A3F5587
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 03:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233573AbhHXBmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 21:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbhHXBmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 21:42:12 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4808FC061757
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 18:41:29 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id w68so16933951pfd.0
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 18:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r45wkiYyF8/1VbTkxokZIQKR4JTP9pwQ0FkD+cQcN5Y=;
        b=VlMloLwXKazHvYh00p8ygCg4WckEC7kxtg4QGGQNK6Lb9YQiAI4VrFVeyfhXlIaMiX
         w5j9cl3IpA6D5lJLvJ7SdpCESpAnEPelAjfqfxKNRoo6gM877OPhGj1oITP7ESQ14MH2
         +bx7FH81EgKqLR1SQeQupAW8mKX7nrtP5QDtwPAJgsHCMi+dnaagM6v7mKrir8DRDxWw
         i9/N/ggMMbmS1mEBTXXS0wdy3VqkOA7YIDPGDQM4H2/NVcdxNjdx/As6z2njwKyQShOH
         aYjbeBOuAaXqCWsZy/CqHG3vVtD1ye1YlqVove76ZGQOELm4r+NEAfhiUX1vr4yL4/G3
         G/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r45wkiYyF8/1VbTkxokZIQKR4JTP9pwQ0FkD+cQcN5Y=;
        b=tDkhsCRJaoao7fiy5HwHpkuGcXmZBG4Q39zdjflwiv5E1UlYQ8zvBGi97Hn221mrLx
         F3uFaWYCIXwwN1RK26cCUSGEmWfvXxbnX5QXihW0bmmXx+4OjSjr0E2KSzMAUipdfRLi
         T3KWLDB1U5wxcg3JKmRlB/rFbT4pHPt3Nr8tyJb22nh2Cs5DQ/YrQryYBV3sAAZtTS4t
         lGzkNSrtnoeIfeQi6gGtP6dfoYM7A9mVmutRzhI0PM7k1IVlpprzaAbgu290LIbs4uL8
         mlDS/677BDkFv/ekEbBI0XvSg2TD/q2TWDZtAYzq8dak13zkTHuDlt1Dtvs5CkrioT/R
         7qHQ==
X-Gm-Message-State: AOAM533mtGdt6hkW85dJnzJPqRzKM8+kBWHZ51D7Kdl0dhwi60P55u7Y
        +COXCl32c7MI+jrgjAazeGfHLw==
X-Google-Smtp-Source: ABdhPJyrSRULA0ot4zGJ13mvsrw2Rp1qlYatCGISkmx89QcR50tlecrk0ZIOj4XzlSHRrf5ipnzU/A==
X-Received: by 2002:a05:6a00:24ca:b0:3e1:14fc:e34c with SMTP id d10-20020a056a0024ca00b003e114fce34cmr35700393pfv.76.1629769288759;
        Mon, 23 Aug 2021 18:41:28 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id p3sm457377pjt.0.2021.08.23.18.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 18:41:28 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     sam@ravnborg.org
Cc:     airlied@linux.ie, daniel@ffwll.ch, devicetree@vger.kernel.org,
        dianders@google.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
        yangcong5@huaqin.corp-partner.google.com
Subject: Re: [v2 0/2] Add driver for BOE tv110c9m-ll3 panel
Date:   Tue, 24 Aug 2021 09:41:24 +0800
Message-Id: <20210824014124.1080798-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <YSPAseE6WD8dDRuz@ravnborg.org>
References: <YSPAseE6WD8dDRuz@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,
  This driver support boe tv1110c9m-ll3 and inx hj110iz-01a panel.The IC chip is used NT36523, which is a new IC.
 
1: panel-boe-tv101wum-nl6.c driver cannot meet the timing requirements of the current two panel.

2: The screen cannot be work in HS mode, panel-boe-tv101wum-nl6.c will switch to HS mode when boe_panel_enter_sleep_mode.

static int boe_panel_enter_sleep_mode(struct boe_panel *boe)
{
	struct mipi_dsi_device *dsi = boe->dsi;
	int ret;

	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
	...
	...
}

thanks.
