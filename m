Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 014503723C7
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 02:05:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbhEDAGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 20:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbhEDAGu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 20:06:50 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CECEC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 17:05:56 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id v13so3808490ple.9
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 17:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kDzDiZKgkuBIzy2dA89gX09XTeJ0XvlvWikD1ZLB35M=;
        b=BYhlbG9htRgrcm+j6xb+5irs8Y2dtX5BPN5vT5dthFFmdc2wdcqYLSvoBiQPgxhkdY
         HoVp94XBkH6mPX4rCVCDF+zBm45SWZtY8IWGXZNTNrmLvCavxTjNeQzFv8T8TmB9wVA2
         7888+TcYr5UOpB+lvNwW85F0nGc6AYEEZu+ujGZM+YpgLVZBKY1PU0BtwXu1l5bUCYB0
         8OCyyxQfF7OLxOe1pCS9xGID8DbETrBqZofbsGwN2eKv3Nla4gx6WzK7/j5lMFwGete8
         wf2zgsy3Td3kI5HUP+SDTfiY778dus1rTEXM4kkj8qnIr+hrf/cxm5gaBwBiXvasAy/t
         UgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kDzDiZKgkuBIzy2dA89gX09XTeJ0XvlvWikD1ZLB35M=;
        b=Gj18jZkE9TGto4ri63ad7EDNJgRPomXGv/vKSUxfR8DKaiHDXgA1BMhgRc0aGWqvrW
         7ANIZVQzoLgTrTdQMHrBuc+Pv0aRQh+4xKKTy82/VJwk3r3uwbUUII+C7lZ2TZ2Ky60Q
         Ft8J1XEolx5GaFDsfVkHqesohExTBgiQFe6vfRvDV+0Dk/RT2JmQ4a3XqGobXStJE26I
         A7OJNJYIv4+rJOhl4WH6SDX0zMNd+rHbTzuNkkQxI6GS4aTh0qihixDm6XKYXHl8tjGc
         9oCcAZixYuUmpvTSyEB5bQxpFOpkNIw+2v7YfSVl6QtgPL45CXvA9Wn69C5IKd1X6tvn
         OUuw==
X-Gm-Message-State: AOAM533lPFsxc/xu09o6cC5QLqUWVXCNx5EjKzv4mKKP8VRJLnvtCwCD
        KoVE02CkgO8wgfHkoOYMxV7B5A==
X-Google-Smtp-Source: ABdhPJz5KY4WXvst87q3waruwTbClvq21tHkxMG77SNnVmypEkEmefQ2ACx56GjiUXnBm9I1L+fwcg==
X-Received: by 2002:a17:902:b68c:b029:e6:bb9f:7577 with SMTP id c12-20020a170902b68cb02900e6bb9f7577mr23126893pls.0.1620086756012;
        Mon, 03 May 2021 17:05:56 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id gm17sm10499510pjb.11.2021.05.03.17.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 17:05:55 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: vim3: enable hdmi audio loopback
Date:   Mon,  3 May 2021 17:05:52 -0700
Message-Id: <162008674673.40672.13568672227710431914.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429084253.59692-1-jbrunet@baylibre.com>
References: <20210429084253.59692-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 29 Apr 2021 10:42:53 +0200, Jerome Brunet wrote:
> Enable audio capture frontends and a tdm decoder.
> This makes it possible to loopback the audio played on the hdmi codec,
> which is the only output interface at the moment.
> 
> Of course, one TODDR device would be enough to do that but since
> the 3 FRDDRs are enabled on the playback side, let's do the same on the
> capture side.

Applied, thanks!

[1/1] arm64: dts: meson: vim3: enable hdmi audio loopback
      commit: ed678d85ab2ebb75d23b68c1b4af4dd068f14edd

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
