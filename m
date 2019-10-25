Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C61DE54BA
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 21:58:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726620AbfJYT60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 15:58:26 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40710 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726482AbfJYT60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 15:58:26 -0400
Received: by mail-ot1-f67.google.com with SMTP id d8so2869381otc.7
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 12:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=d2OsTbKFKCeMTMNwxNy1n33lnkHVDqluXV6Ie7j05xw=;
        b=ArFLHgK5RDQD/dFmII1kzsS/Rh6J8jGX4ZWh9BZLUYad/E+wkJsJ12/p41fHnuC9yi
         9U0ZCV5xhsgXUVGPK5Iuqo6mAJPuAqP8wJX9hbTX92uHByHzMtbCePOhAuJmZQbT75xo
         W1UNUk8Hd2YJXpbpIg5ZvVvhvokB7Al/JjqUQCJhh3uQt+W26Mr1piIKGUG2gGyopIQC
         Pr48aSN/zsgSnJKzbmvuTK/sDELxF6YVS5dGU2kkn9iLXEuIzBjZXISXrNmY7+kRU76M
         tGJfuSV94jTuu0x981KhB12+mTdnIE8WioHbuFJDpEUVxHtdlIcNUG57Ws9zsJ19ELcX
         oO4A==
X-Gm-Message-State: APjAAAVdOUY4RAPQogiNqPjVLUCbK42NR5bB/bHlQAlFIoOOqK9Lu+cg
        PnIIv3TaKlbY1sZh39BArA==
X-Google-Smtp-Source: APXvYqz2/zebuhop1abxkGx0qiGWyLzTDbYNwdobWl7IUSM3Pf+Ke/WEC2wEXubQeqtStaz7uTVjXw==
X-Received: by 2002:a9d:7d92:: with SMTP id j18mr4348790otn.37.1572033504276;
        Fri, 25 Oct 2019 12:58:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r3sm1024476otk.31.2019.10.25.12.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 12:58:23 -0700 (PDT)
Date:   Fri, 25 Oct 2019 14:58:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Boris Brezillon <boris.brezillon@collabora.com>
Cc:     dri-devel@lists.freedesktop.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robdclark@gmail.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 20/21] dt-bindings: display: panel: Add the
 LTA089AC29000 variant
Message-ID: <20191025195822.GA10635@bogus>
References: <20191023154512.9762-1-boris.brezillon@collabora.com>
 <20191023154512.9762-21-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191023154512.9762-21-boris.brezillon@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Oct 2019 17:45:11 +0200, Boris Brezillon wrote:
> The LTA089AC29000 and LT089AC29000 are not exactly the same. Let's add
> a new compatible for the LTA variant.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  .../bindings/display/panel/toshiba,lt089ac29000.txt          | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
