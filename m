Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C14F2429B
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 23:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726330AbfETVSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 17:18:37 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:41491 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725978AbfETVSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 17:18:37 -0400
Received: by mail-pf1-f194.google.com with SMTP id q17so7831242pfq.8
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 14:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=KwAzvLOrsGrLdW37rNbsYgX7kOv9ZoeLzS/6hKC6W6g=;
        b=avfP3RQdwhppd/vstRNn/zdW5SsXvba3ffCdxGlgjEJ1y6rQJXDbRpyDlYvvwGXY98
         bJj0wY65p9eLbsYplwq5bLdQryZ/HRWp4gPRCsLmiQIkmnZkf2Y3wDlXMhktx9hMKHUo
         i7XrrouEq2/wvpTqBya5HHdVLVGid1h0UVlwEZtP9McnxzbBZzRUuiQdHPYHNKqANb/L
         /aZCjVMDIf9vegrCIhgarS6AUHfdKAjkb3IAsP/CdlxCVymAoX63nc02FRwDDFs0SZxB
         t8HuXTOw65xD1U1yggoT7YqcVQRONJ1JXbeiGKtRgL/FPs6iD9qU0FTcx0lAMcY3g/Yt
         1uQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=KwAzvLOrsGrLdW37rNbsYgX7kOv9ZoeLzS/6hKC6W6g=;
        b=p/u3ZfaC0Ias3ubv0ot8C6gFMndhG6vx1s6jeIJJG4D+oJhB0f35CWqoZZcpaNlzz/
         AszjiqWimLpUrKNIm0ba12VJRJsp+LRYu/mn365zHWY/S5ECVYK3kPaWFWCN7lEUGf38
         6J70PvzzOxn4P0H9dAwAnGUIRmjHYYI5GjBAgSVsMhUGYDmiZYL5hsKwvGHIGGFxF9Ul
         KPBLsHOzN4cLzgTvNVvARtKGyjv4siNfEIxHHyjGQnzA7Cn5c8CWTkODjmq6axyMCLkz
         TPa5e3KYHqR5dgyNHyx4iXCFo9Y9FXdgNTOo+FRYPqb1Suewnr2X5sG6aSpcfvq/2O0m
         YYSw==
X-Gm-Message-State: APjAAAVxflHrKC2eimGNrNrM6Q28zkuLSQpq80UcAflXxk8ktYr/IA9S
        mPrXactawnTfUwkKqqDXzH4KeQ==
X-Google-Smtp-Source: APXvYqzSIOWReUBiSn5i9wiYls/tM3XVkbWOxHp5XkIIqOVylQGiSjT/FlLpBfs58MuEO6WmTc0QOw==
X-Received: by 2002:a62:fb10:: with SMTP id x16mr18663984pfm.112.1558387116318;
        Mon, 20 May 2019 14:18:36 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
        by smtp.googlemail.com with ESMTPSA id c15sm22024029pfi.172.2019.05.20.14.18.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 14:18:35 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: g12a: add tohdmitx
In-Reply-To: <20190516143216.6193-1-jbrunet@baylibre.com>
References: <20190516143216.6193-1-jbrunet@baylibre.com>
Date:   Mon, 20 May 2019 14:18:34 -0700
Message-ID: <7hr28s7rkl.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Add the hdmitx glue device linking the SoC audio interfaces to the
> embedded Synopsys hdmi controller.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued for v5.3,

>  Hi Kevin,
>
>  The related device driver and dt-binding have been merged in the ASoC
>  tree, for-5.3 branch [0]
>
>  This patch is based on the audio series I have just sent [1]. Like the
>  patches I have sent this week, they are all based on Linus's master
>  branch. This is done so it applies nicely when setup your branch based
>  on 5.2-rc1

Thanks, for the detailed description,

Kevin
