Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC1A82674
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 22:57:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730222AbfHEU5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 16:57:13 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:40897 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730099AbfHEU5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 16:57:13 -0400
Received: by mail-pl1-f195.google.com with SMTP id a93so36869234pla.7
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 13:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=YaR8Byqy3SpzGxyS+dW1jFl5yiqSZd1BZKYnowLKjXM=;
        b=YHnEBL7vrtqUmXkWhk8q3lmtIqZgpSSndy+j+cUAT2IUEeFFW38jrX0baqWR/25w7o
         W7/iVZSuy6q9OXAmGuC9PeAiBPBqB4I62qfyBNVhkqLkvPpPglNwUO9p+L3wovTPDjL6
         wvYxU5ov0Tv2kIqhszUrFDdGC8rHAOBTLtD8S2buDWgOVB0l79GDKUNO7WzuVDBLimL2
         93gZbuBPSaJhOQfHFErIBJ1eOuqEjJbC8uXtODGNCeN37OO4w8EDBbyxbBuCajkD2nfa
         gSwis1tWBS8gI8Nwd8HNY9DkGH5nljQFD2P5xoXKUk1zhCEpgTeP+kTmDVtocCpCCs2D
         BAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=YaR8Byqy3SpzGxyS+dW1jFl5yiqSZd1BZKYnowLKjXM=;
        b=QiJI+ldbemX7K7zi6X7IeFaUiUz0+mfNEkczj8zY7IQITulQ2k3mVAeu80imx6DrsJ
         lN9mAPhPyRocs/3qXPUg7/736k9PgzJBGiLkL/gYz/4EA67zQwETFsWJmJ2I+YT9t7Pr
         IKxXA/X0OEyIM5jtXxjk4FObPK7ajm4DaxJR9BkFYm2CyYwrYndv2lh7VVA3qlHNMxhr
         uQ1GMLa4Dc2+OY03QXk1gihTom3W+1ki59P9em1tvsrY4YAR/lz79LJLtZ4WVjSEEoPm
         +fopQSaBtaQnl1/f7ocrgpu5dPIQBZyOnxef1Zo42vPUYd8cm7TbSasl6CSKG3pVl3CB
         aWOA==
X-Gm-Message-State: APjAAAW8TxOoSAXTUlKiF6pciTqr04G01hDDA2Xy30GA06C3EhAmXVS2
        c6v1Ac5OPvu6d5w86mIHFpvmPVKNmT5o8w==
X-Google-Smtp-Source: APXvYqwMUE/9GA/GfS1NI70alw8wCHXV860ABZdV3Ni0axotPGtKGeSCMzjIaJY8TspAAiDtuR8fBA==
X-Received: by 2002:a17:902:2baa:: with SMTP id l39mr147534530plb.280.1565038632142;
        Mon, 05 Aug 2019 13:57:12 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
        by smtp.googlemail.com with ESMTPSA id s24sm85446319pfh.133.2019.08.05.13.57.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Aug 2019 13:57:11 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: add ethernet fifo sizes
In-Reply-To: <20190718090301.19283-1-jbrunet@baylibre.com>
References: <20190718090301.19283-1-jbrunet@baylibre.com>
Date:   Mon, 05 Aug 2019 13:57:10 -0700
Message-ID: <7htvavgwk9.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> If unspecified in DT, the fifo sizes are not automatically detected by
> the dwmac1000 dma driver and the reported fifo sizes default to 0.
> Because of this, flow control will be turned off on the device.
>
> Add the fifo sizes provided by the datasheets in the SoC in DT so
> flow control may be enabled if necessary.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued for v5.4,

Thanks,

Kevin
