Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2ECA01A56F
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 00:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728085AbfEJWpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 18:45:19 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:41531 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726986AbfEJWpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 18:45:19 -0400
Received: by mail-pf1-f195.google.com with SMTP id l132so3934930pfc.8
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 15:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=d97YmyA/3LiD+Mv8la+sVqazB0Wi/v83PJRamaL8IZA=;
        b=UEfBh7LHUprotWgJPz47HT61WOt99NIYruH7UVlYWzGp4leqNw7BqhT7vDvqv9kY05
         FKyz/tgBrTPfjkcCh+21RVlmTBikMUeRlhdmfQi2wjrPwKMwMcKuqBtLEZeGcfxg905Q
         kUq7k+hsUcLNGqIkhh0wrUlGl7hetNo3FVVXHaKarX2zcWMGTqkRnOvAKXvkvW4ZFFKV
         WBPXBZAr93pQ3oHpHnxaTB2Dg0sPKef+ipSQ4xkc9mMH5hymm66nUugkVooCXyVjAtFl
         WXsorAy2Z+x+GyF+wCZ8MmIxQvXHD4VC84TEeCHm9ezcB3cYMYi3E58GHtX/yygFUdaJ
         5mVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=d97YmyA/3LiD+Mv8la+sVqazB0Wi/v83PJRamaL8IZA=;
        b=Y0UH7HUl6xvpsRIBRExk0G0WGom2Tu/UXnXLZvJqlgMHkeX5iAvgiPKe+Ypj2/P3aW
         8+KMr7FHtH0INZHvGnOqFnlfxbX9m0QtcRb4t2qmy3ut6vFQv/OB79cLV+lAMa56RFQw
         LpB7feGfkqq8ZQ52QZY+xrlgvkWrpGr4HD9GlTt/RRsChI7NY+WtKPkaBad0KykUkq7N
         ah2Zy1iiKGxjf0Uf7YBNDzjgZpG1I92VO3hQGxwxeSx185kHS9TegCZRbOzQJSvRvodc
         55IhDDcP5dN0EIw8oCJh6DSDwd0HHTQmQutA1osjK8Bek972zBUvSRSivmPTY10MbFTA
         MWCw==
X-Gm-Message-State: APjAAAVsfBM95OQ+y1l74/E3YhF8+cqZ9H2sdIdXFZHdNH0queh8ZZKK
        hzXqYP1lCQqu8nVsRrY/18JzISoxzKYggQ==
X-Google-Smtp-Source: APXvYqxp0q0ql6/xwfvXB+jKs9bE8hhgTE2r8MIvm/sZG0/ChzNNxXC/9dZEpANHwGlx3k2JIC4I9Q==
X-Received: by 2002:a62:56d9:: with SMTP id h86mr18128439pfj.195.1557528318502;
        Fri, 10 May 2019 15:45:18 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id i3sm8675360pfa.90.2019.05.10.15.45.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 15:45:17 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: meson: sei510: add network support
In-Reply-To: <20190510164940.13496-6-jbrunet@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com> <20190510164940.13496-6-jbrunet@baylibre.com>
Date:   Fri, 10 May 2019 15:45:16 -0700
Message-ID: <7ho94ac4jn.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Enable the network interface of the SEI510 which use the internal PHY.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

I tried testing this series on SEI510, but I must still be missing some
defconfig options, as the default defconfig doesn't lead to a working
interface.


I tried adding this kconfig fragment[1], and the dwmac probes/inits but
I must still be missing something, as the dwmac is still failing to find
a PHY.  Boot log: https://termbin.com/ivf3

I have the same result testing on the u200.

Kevin

[1] amlogic network kconfig fragment
CONFIG_STMMAC_ETH=y

# following are needed, but automatically enabled if above is set
#CONFIG_STMMAC_PLATFORM=m
#CONFIG_DWMAC_MESON=m

CONFIG_PHYLIB=y
CONFIG_MICREL_PHY=y
CONFIG_REALTEK_PHY=y

CONFIG_MDIO_BUS_MUX_MESON_G12A=y
CONFIG_MESON_GXL_PHY=y
