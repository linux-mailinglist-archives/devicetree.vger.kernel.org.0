Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9649A17A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 22:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392291AbfHVUwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 16:52:22 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:34957 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392253AbfHVUwW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 16:52:22 -0400
Received: by mail-pg1-f195.google.com with SMTP id n4so4381169pgv.2
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 13:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=3HAkNaLKaKugwacngOASUf+k6kAzcSQJHy2ytCwReZ8=;
        b=TfQcqPfStJ1Rc3oSQUxvkEqRBWDG9HKn7JCy2rHB5DN0PuVo/2rm7AkYB8v9zhwt32
         7WxgzDMUPZj8OrdgQWjlr/FftrFxJen5gmu+Bnh1qhCqZZVzGkKbP8Yb9Jf+9qS2t7tC
         etwh9sY2nf6bNxA8LercsqvFOB2Ad8OcLTPuJ6TCW8HwE0shfXidPqYTYTNXsF/SPjsv
         ztsUptGKPjzuyXnfDzqkJPe+44MPYZ/QK6vHYuqrF8n/3K4ZB09hfECawcU/T7Uv/QR9
         tBa7DNzGDRl5CnwWKSufuPdoyH9M7XxrnEbNzA6ruBUBpHFR1r0/HJBQavqLY75s9EMn
         6hNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=3HAkNaLKaKugwacngOASUf+k6kAzcSQJHy2ytCwReZ8=;
        b=h9vup8/4NDD/ED1MxIfWpb1xqpBN40Tu+134NH2AImAiVS1CAo7okpPkAzQ+ZPAJdP
         im53zt7WMLEatKlL1GdZFT4cSdtuz5NHJx7hZYxE1rGatEth43yA55PqG1tPNcvURIjG
         /5wS+jAjdAG24oYSCiSLhAofRKL9BsEdlT66c85nKJ04IDJTSoXNcveDogk7+1/RrgkQ
         x/onRRoEft4Xn+nxS032ExGB7DzWAPP+K0nc8/GWES7Ai622irPQXAvxzMqK4OKNFOpo
         +p0MJpXRa/sidjDcxpMNsyVWPKL6CKjvve7TJBJKZcKodYxv30B2sPl6WDMxllh9msk0
         YfDA==
X-Gm-Message-State: APjAAAWwotF1I6hDzgcVFR6xCAoV3g4kswOIvj/O1RTnT4RkplwJ7kWx
        iz6I9nrmCtX6yAFCl6MdASW1aA==
X-Google-Smtp-Source: APXvYqzbl0kNpLZ+an5214np92JENAgAW5dpKMeExC3ZhPt55rlZOMPNBuMztgy7PcT8TrcTTerpjQ==
X-Received: by 2002:a62:4ed1:: with SMTP id c200mr1221517pfb.218.1566507141310;
        Thu, 22 Aug 2019 13:52:21 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
        by smtp.gmail.com with ESMTPSA id e24sm174155pgk.21.2019.08.22.13.52.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 22 Aug 2019 13:52:20 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Kevin Hilman <khilman@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-rtc@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] rtc: add new Amlogic Virtual Wake RTC
In-Reply-To: <20190812232850.8016-1-khilman@kernel.org>
References: <20190812232850.8016-1-khilman@kernel.org>
Date:   Thu, 22 Aug 2019 13:52:20 -0700
Message-ID: <7hmug03ou3.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kevin Hilman <khilman@kernel.org> writes:

> From: Kevin Hilman <khilman@baylibre.com>
>
> Add a new driver for the virtual wake RTC on Amlogic SoCs.
>
> The RTC is virtual from the Linux side because it's a hardware timer
> managed by firmware on the secure co-processor (SCP.)  The interface
> is 1 register where a wakeup time (in seconds) is written.  The SCP then
> uses this value to program an always-on timer.

Just FYI... this was originally tested on G12A and G12B SoCs, but has
now also been tested to work unmodified on the new SM1 SoC as well.

Kevin
