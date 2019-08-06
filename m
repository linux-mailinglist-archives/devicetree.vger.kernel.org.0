Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DADB082DA9
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 10:25:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731789AbfHFIZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 04:25:24 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36613 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730068AbfHFIZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 04:25:24 -0400
Received: by mail-wm1-f67.google.com with SMTP id g67so71414343wme.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 01:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=dT2e75Ue1aWRtiwNDM0T+ofIOUOl1O1/yE9yhFmIPbw=;
        b=rWKS3KxOQXyGozcmFeuIT/HZgK+Isl8zvhcK+tQok47HDXZ5gQjJAsQ/Ena2gzB+mY
         RYNd2boWxJfdE2lHJc1ytXEKm2Y5Zg7J0DBBvYlTrQNIK3uWXs8ndch47RYKtHebS95b
         eqRuxTzTXBUDDato1/ErdymIUyCSuEukLcA6OFbpWwpSs06RbbXYOErSAHvOjeU2zmgz
         g1L7zbIVg2+ri7uxNOW6G7WoV4xXIHl0WJfTA/zsvmEl8aAj+l0wLS/5ZTClMOPPplNq
         uO7I+J95K9VPrCZEdzpPNZ8VFvFgcK5Pksi8KHXoO3m843T/V6Dww+CzNzuWr2LdJfe/
         ZA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=dT2e75Ue1aWRtiwNDM0T+ofIOUOl1O1/yE9yhFmIPbw=;
        b=e1Dut78UucK4FiMUrB9yZhaH3/yp/Tbh604q1InMnm980Znui24mSdAUxo6nB9xdZz
         N/lweFMBfPxapv782KjVhjUZqeUGtBjW7bOVBDzq7s5fT2kGtYy1CuPCzs8jtn88zX8n
         C8NwKhWxDxjvvx//bAN1sqQd8khwv2Ie39eLNDrigbSV5PmjP++p5xnESppJjjC10cse
         7xUdkqWaK5bxT8/y4nMfdbhobIw1WHhNFAZ/pKHCGVyc5tanw1id00Zl5OaZHMJwYUR/
         uq9HKkAQQbUBETBqsMkmis6RksXuJWekBypv8i6dPFFG6LUMJPSZB+sO3LdHHCns7n0J
         s0SA==
X-Gm-Message-State: APjAAAWJgRADNvVEpdqVYR6kB0vcQaa6K+HBqyPPqwzwwtq05h2TVIrB
        PEzDU8b/IqNjdRDjmlOPyy5UwA==
X-Google-Smtp-Source: APXvYqyrWFu2i3U14X+W2YblMAUDlAsk7e1ee2lDtYocuarEsW/XUFLLyWaz2c4klNGKe+DAkUmmrw==
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr3157185wma.36.1565079921916;
        Tue, 06 Aug 2019 01:25:21 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id g19sm106126504wmg.10.2019.08.06.01.25.21
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 01:25:21 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor phandle
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com> <20190731082339.20163-3-ccaione@baylibre.com>
Date:   Tue, 06 Aug 2019 10:25:20 +0200
Message-ID: <1j8ss6wvin.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 31 Jul 2019 at 09:23, Carlo Caione <ccaione@baylibre.com> wrote:

> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
