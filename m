Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71A6BBE80C
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 00:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727842AbfIYWEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 18:04:15 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:41923 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727836AbfIYWEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 18:04:15 -0400
Received: by mail-pf1-f196.google.com with SMTP id q7so326328pfh.8
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 15:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=YeAl8mUR5ysBqtVRjeF0K3lTpX9dLqo1DLUgKRVNBCs=;
        b=kAVODz2SbNFA24N12lzrYsnEjoiYTW3A/X9GWMAh7zTc/1Ob81Oe4TIe5eKAasPbUh
         Gcj8UMKYeOZvrglDEs7YXZaghdGe5VaUL/57m7dcHuvxDDQn+T+RrA7OjJwFVWNKMWkx
         Of9C1jOw2N+/hiP/r2wCEA/4oker4WI2s5mabRiTe7+2jhNSZl7rcLAjHE52L8GidDll
         puzBzXPLuLLtvTV+K4oo4UBV/wiOmwrGJglJendCO5lcfCZUoqB/8ZnIrdDN6C5Ac6M6
         gertYQ5e0Qh2hZr4n+3kJDBVd8dsGcxbQpNEWuh4R2A/UqiES232s2FufTAuq24CN+lv
         xEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=YeAl8mUR5ysBqtVRjeF0K3lTpX9dLqo1DLUgKRVNBCs=;
        b=Sr3wFj93fI50PkeIS8/DWBL37fEmdNWbntvq+YrvGNVZWEgp5tUMk61u1k+TZMx/ak
         tQVEppxkAgUpr+HuOqlul1vOS88uvfwCJsfSILuG2FqCbuL57JqVxIN7O23+7sDaUjTR
         BIdUeDMdwj4nvfXaF6sjOEuO2qRy6ZaCCSvRE7pLySpQuit4OghnOJsEKUIjRhXFxMPm
         VgejdEztJz/I2XjQzGQEdgANYH/5LBsKgqNTIxLh4Eb+BPXer3Cwvu6ld5MQaxBwvotb
         iyUh3k6YKCD0EzLtz+nfA01faQdszk6BfCDMe9bRaeaFH1FPAQK9N605NN06fVC2HGyr
         ALWg==
X-Gm-Message-State: APjAAAUr0fip+bvt34brPS/dM5t5/BxHtehLeb0EfCb7eCjTjWXMOYU/
        D6p0LgWqojqKM2pwyRg1z9BGIg==
X-Google-Smtp-Source: APXvYqxUwa/wf6Ah6xwPK6rJPAIvd99PeWHWaExNxLuo5zzuQAq8iypBAr7+D2+VjDRrb42Q/pp6Hw==
X-Received: by 2002:a17:90a:f0d7:: with SMTP id fa23mr8733337pjb.120.1569449054656;
        Wed, 25 Sep 2019 15:04:14 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id y80sm18688pfc.30.2019.09.25.15.04.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Sep 2019 15:04:14 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Anand Moon <linux.amoon@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv4-next 0/3] Odroid c2 usb fixs rebase on linux-next
In-Reply-To: <20190902054935.4899-1-linux.amoon@gmail.com>
References: <20190902054935.4899-1-linux.amoon@gmail.com>
Date:   Wed, 25 Sep 2019 15:04:13 -0700
Message-ID: <7ha7asuj6q.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Anand Moon <linux.amoon@gmail.com> writes:

> Some time ago I had tired to enable usb bus 1 for Odroid C2/C1
> but it's look like some more work is needed to u-boot and
> usb_phy driver to initialize this port.
>
> Below patches tries to address the issue regarding usb bus 2 (4 port)
> while disable the usb bus 1 on this board.
>
> Previous patch
> [0] https://lkml.org/lkml/2019/1/29/325
>
> Re send below series based re based on linux-next-20190830.
> For review and testing.
>
> [1] https://patchwork.kernel.org/cover/11113091/
>
> Small changes from previous series.
> Fix the commit message for patch 1

Queued for v5.5.

I fixed up the typo in patch 2/3 when applying as suggested by Martin.

Kevin
