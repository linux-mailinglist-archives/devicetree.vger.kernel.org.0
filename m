Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D3362412E6
	for <lists+devicetree@lfdr.de>; Tue, 11 Aug 2020 00:18:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726827AbgHJWSE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Aug 2020 18:18:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726615AbgHJWSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Aug 2020 18:18:03 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FCCC06174A
        for <devicetree@vger.kernel.org>; Mon, 10 Aug 2020 15:18:03 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id k18so6499055pfp.7
        for <devicetree@vger.kernel.org>; Mon, 10 Aug 2020 15:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JTpNTLZEF1YuYGMjvco22c5p9oj/9YQ3/7+kfvmutjo=;
        b=gpgI9nME6ebeu07iGuAbt98CnW9J3B4iRK7Mj6+5t3/n4TRwduP2BFOEfbdabewJrv
         vFBtqSEG773dbf0Im8KIRLjn6bFhIfdRl4kJ1bC9rY4hXRNtMZ8Qmg2/zDkoJ2RloT0q
         WnuqhWpQDC66pBsO/t9ub9tZKMDxZHCfepGlgybh7SePt1dPo/W5qGny9DAfblLjQF3N
         8htKX3/bP4ITeARNNi1SLNkujUvPMwVl631hDidyijKdWZ/INg/Ziks+zb+skyeZKRtT
         5U4FS0vb3o0T0ofCRgQABAxOPKXhLud3HhuBnyYVVFnkfqx+UJmX0Y+mk6cSbV22wcy6
         guGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JTpNTLZEF1YuYGMjvco22c5p9oj/9YQ3/7+kfvmutjo=;
        b=SBOd6UzyWC1kAWBsDC0NkcXUZ8TTRpiAGBZVNub/z+EQJ11zk/juW4Is6ro+6usrdy
         S8OXPJNSQpmsojjxwUCUBlFcX8y2O9K7NU9BQ8h18a0OA3MggOHGqpz/pJ0+MWoYT9Fr
         XqGHTHioCIyuC7mRdQa8TTVf2SUHt4Sb/91x83Ogmw0Pg6HFpC5YpPX3f/AG1q6xAdA1
         4/6zkJuWuaHU7kOa5IdVO3N/f5rEdvTX1qxf8RM6ytxbLXmVdopopHLIUrgRJ97tD06D
         DfW+Y5An1D3+OypsLpX1uyuKTupRMtArtCEMIyyqsZBd53oB6A0V/kb/9wh/5amUzybb
         LIkQ==
X-Gm-Message-State: AOAM530ewkLSXnWLsn3jS7YKizH52wFU25rHix39TvTIA7OeWHiW17dH
        Y1i+EHO088eRdd61WgpqZrK+tgyUmf0=
X-Google-Smtp-Source: ABdhPJxBm7Zw256hy2vVGlHoSSzO0FkytWwFgr+sWfiGGyL+LjW9MEiZs0vZqABHDrIEDhVlZO9Jcg==
X-Received: by 2002:a63:485f:: with SMTP id x31mr23694566pgk.49.1597097882636;
        Mon, 10 Aug 2020 15:18:02 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id l63sm19147230pgl.24.2020.08.10.15.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2020 15:18:02 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: meson: vim3: correct led polarity
Date:   Mon, 10 Aug 2020 15:17:59 -0700
Message-Id: <159709786936.10576.18026946638295707275.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200803141850.172704-1-jbrunet@baylibre.com>
References: <20200803141850.172704-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 3 Aug 2020 16:18:50 +0200, Jerome Brunet wrote:
> The LEDs on the vim3 are active when the gpio is high, not low.

Applied, thanks!

[1/1] arm64: dts: meson: vim3: correct led polarity
      (no commit info)

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
