Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D30BF284C7
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 19:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731296AbfEWRUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 13:20:19 -0400
Received: from mail-pl1-f173.google.com ([209.85.214.173]:46584 "EHLO
        mail-pl1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731106AbfEWRUT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 13:20:19 -0400
Received: by mail-pl1-f173.google.com with SMTP id r18so3001349pls.13
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 10:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=E4wCoZelzPeF40n6KWK0Y8InfWhm/K7CvH4QAAtzBuY=;
        b=RtwNPyQOVHmIh1T5LywtaHaQv0gUQC2wSVqDRCMdf6v5fEN0lOB7Wy4mhpAVvcOnji
         X2f8edBEstoW6OLuJBViDx8eELKUghmBrEYuHgKjP8msuxfePYaE30lChQWcpGmJrDqW
         tyHeHXuN95G++JbqxJJ0/oLUc0lOdHb6D2/8mJrKvLool1D5uLHHU/AJezZLkKR6Aa0e
         aLu9WSCHJXzY+nleeVo/T7nyXg4IMCH59oitG2uOqTWdr7M15tV9GX77wKgOZUg7DhcR
         HeBXRtSGiG1bMulx+/NJnBqzLYUBnURuoiWCwbqLG5mFPNPpIExSaMQSWafXcBG1hYm5
         nTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=E4wCoZelzPeF40n6KWK0Y8InfWhm/K7CvH4QAAtzBuY=;
        b=DXShMmyQvxuuANqBweyXxmphgMxqhwb45KvcshH+ZJ508Ln4TipYSgt24DOrkO3rEn
         mTUxaSUS7ul0M2i0xcdTavGnfihe2i94En/4hdfNMouzT55hGZrbvptDpzJ3bqYxMpwt
         rIFF1aWLvTMgAd0F4yFTyHkerVRabnmKMUQH+aRCGdKwiZWVQxDoOAunpJvBhl5x783M
         AhI+sbhoUKMB1viqD5trgOQRQ2EhDXZCw2HqcHXD/Y4RGG629kwzc5CqcI5yNStwPd0N
         A9Ycm61fV2j/dRKtMfjpo1BNUzMcwkGj1Da/pu07SO0g6q11gYkn0+ocN9yGifcZU0c5
         YiAg==
X-Gm-Message-State: APjAAAXThTh1m1YJ6urvIRdH01okEZ3YfZSuYNK5Eghv1Uv8/OFm1s8x
        pMwhjCUoJsITaJleZnxPxH9Fgg==
X-Google-Smtp-Source: APXvYqzRWzAaALeaMqNcd2ribS2Qvh8R8/MueP7qkpKKvwUsbI6KltgJMx0zYzvqQbThLYsJ61MOKw==
X-Received: by 2002:a17:902:100a:: with SMTP id b10mr96916175pla.239.1558632018359;
        Thu, 23 May 2019 10:20:18 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
        by smtp.googlemail.com with ESMTPSA id k3sm20805pfa.36.2019.05.23.10.20.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 10:20:17 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/5] arm64: dts: meson: g12a: add ethernet support
In-Reply-To: <20190520131401.11804-1-jbrunet@baylibre.com>
References: <20190520131401.11804-1-jbrunet@baylibre.com>
Date:   Thu, 23 May 2019 10:20:17 -0700
Message-ID: <7hzhnd2ilq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Add network support to the g12a SoC family
>
> This is series is based on 5.2-rc1 and the patches I already sent last
> week. If this is not convient for you, please let me know, I'll rebase.

Queued for v5.3.

> Also, you will need to get the clk tag "clk-meson-5.3-1-fixes" (to get
> the update MPLL50M id) from clk-meson [0].

I merged this tag in to v5.3/dt64 before applying this series.  Thanks
for explaining the dependencies.

Kevin
