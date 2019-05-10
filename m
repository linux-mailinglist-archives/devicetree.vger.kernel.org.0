Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CC2E1A4BD
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 23:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728404AbfEJVqv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 17:46:51 -0400
Received: from mail-pg1-f176.google.com ([209.85.215.176]:38254 "EHLO
        mail-pg1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728213AbfEJVqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 17:46:50 -0400
Received: by mail-pg1-f176.google.com with SMTP id j26so3607277pgl.5
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 14:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=Zc0GHzZNo+25JcRNut2Uq1tt6Pzoax4+5TEhbqXwV8o=;
        b=AE+GfRAlBDdQ6pq/jCuAIl+qbEmIGqBjK9ZUuOAI75sqs2d0/H8sgwHsEAUke4hmDO
         lpwGG9ImoARcAFcypbD1cb5/W/RsRtFmT2q2xJ1XJucVjxQnoshIp+50GN5koDhOwJIK
         JdQ1QY3qYEUhzqvrM6Ix8ywt/TLtuvL0z3e614kpoQd3dfb7dj22AucZWPF0nOoAbw5/
         EWSRNdnxj4QNLvZiQKV1BtNuMueh/fzvG7lzAsAaQx6JabadU+jD5HZcTRimL0DuKykN
         UT1vwc+7pgzZwITrrx4gzM1d3o6pLGSU9BEoTY70jBs3UUCvedruijtTrNpGTb6JWjY2
         ERCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=Zc0GHzZNo+25JcRNut2Uq1tt6Pzoax4+5TEhbqXwV8o=;
        b=jrHbEB4kDb9t873WMF6Baez6+KuyfYrKnusobfpu6GLs9yrBDhUPzvX3kY0feRtdY/
         4ZyKf1QU0KJlW5EcBcz89eynZFepQ/994NgdxM7xQQAYaozPtsSzpZPo3o1ATVKwt5EA
         MsqaqLx5zw9S7MDdFwN9IhRBzZNv3WhYCDnaK/9SHyf7TXuXfq+0ca0iAHU0zUoMBCqo
         x+c6tX9E3TtFmzauYCJ9EHtxxF6pln/T2ppqfdyNmpdc5XTXAsWt61ZUYn0tl/3D75O8
         XwltFZ9eYQXl50Hf2Hk+NoRw36CVgUjgBDmzUA47y3pDRjhV+qUVwCiMro0Fy2ulXp5N
         C+DA==
X-Gm-Message-State: APjAAAW2Mtw//HTKZFcMtVzcOzcKkswTjEj91yRTCBjOsXDWMlmNovFW
        ZAVVUfn44QkmFxV2aC194Peg6w==
X-Google-Smtp-Source: APXvYqx7Qz8727ToqlQwkGqzMKdKVJ/pToX52WT+rAo5AwoXgddhjxhaLVG5/tc8WSszoJoW7FsVRA==
X-Received: by 2002:a63:b00e:: with SMTP id h14mr12554111pgf.321.1557524809196;
        Fri, 10 May 2019 14:46:49 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id w6sm2968084pge.30.2019.05.10.14.46.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 14:46:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: g12a board node order
In-Reply-To: <20190510155327.5759-1-jbrunet@baylibre.com>
References: <20190510155327.5759-1-jbrunet@baylibre.com>
Date:   Fri, 10 May 2019 14:46:47 -0700
Message-ID: <7hzhnuc794.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> The order of the nodes in the u200 and sei510 is bit fancy.
> Order nodes by address, then node name, then aliases.
>
> This makes rebasing is little less painful

Fully agree.  Thanks for the cleanup.

Queued for v5.3 (branch: v5.3/dt64)

Kevin

