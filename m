Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA628A5337
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 11:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730015AbfIBJou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 05:44:50 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:36723 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730233AbfIBJou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 05:44:50 -0400
Received: by mail-wr1-f67.google.com with SMTP id y19so13313599wrd.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 02:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
        b=CmcNGkZYbOXX56CkkyUQiEcj2V/JwCX/HPonVAuRIH/jfFxLuIXgB/AQ67mn1ufEGG
         kg2qfhRcSGATrqKjKdds6Tp3aqpt29i4pYMDp4zrA2C/2v1vDDR9SlkRMDr11o7EdUBb
         qCQ7gKVZ8awETYWQ8cpQ09UfE3qotA+q3rmDNURtCvoBXgBeS8/MYX3qbfgsnzRNatc7
         lO/hXSzdOPqYfFqBKmjzdTfF3D8nKgBHZWKIx3YXfG5WMLX+qb2icEeOW7r5XJjCs54C
         t+YvB/Ymr7JjDpaxktA9g5I+a7eHzMNHeJjNoE96/Ag9zpbphvfNXea4hrooRMzrSS7b
         uZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
        b=RSxeB40gZJLETc2kzaIYxOv1NOD2Iy9o06pMMWeFDmrKjXiSmWilUCWsGAU/qrLmz6
         xV0H2aroJCI41g+ZPBOEGO2gkC7FwHgUkYhXxCZZ+SmHagrLVRU8j4fXbf6bO+Pr2C8o
         xxoWX1TnROzL60+fpT84dgLxqVJlznRnq4zzp4gWrt97I0K04c6x0Cm6Tym7JZDZeErL
         48ZMskmUGXL6DqATj2csH7/3oivCqQlx1pMJlH9TkiQo2eMnxluCCSzVNzNKgMu+LT/q
         EdIfjPQk+KORv0Zo2HICaxRpBgPAPMGT0v8UnOv5URzhYQxFV6NK4ah8o3Kiu/0oLjrl
         aRNA==
X-Gm-Message-State: APjAAAX3qx6V7sjPqjd1W4weETZK7cevq7MpqGNMe3RUDmxI05vuibyi
        4jry/FE7FUjPL7HVY3xNm3/qeA==
X-Google-Smtp-Source: APXvYqzBC9wQvqJpV9XW7R3+58fb834Rs94m6nZbv917724zDE4pMNUIC8FJHqYHZ/5VOym469o4yA==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr31602370wrn.62.1567417487988;
        Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Received: from dell ([95.147.198.93])
        by smtp.gmail.com with ESMTPSA id y6sm4378512wmi.14.2019.09.02.02.44.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Date:   Mon, 2 Sep 2019 10:44:45 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        "linux-arm-kernel @ lists . infradead . org Alessandro Zummo" 
        <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Eddie Huang <eddie.huang@mediatek.com>,
        Josef Friedl <josef.friedl@speed.at>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>,
        Sebastian Reichel <sre@kernel.org>,
        Tianping Fang <tianping.fang@mediatek.com>
Subject: Re: [PATCH v6 03/13] dt-bindings: mfd: mediatek: add mt6323
 power-controller
Message-ID: <20190902094445.GR32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190818135611.7776-4-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 18 Aug 2019, Frank Wunderlich wrote:

> From: Josef Friedl <josef.friedl@speed.at>
> 
> - add powercontroller-section to existing binding-document
> - add mt6323-pwrc bindings-document with example
> 
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> ---
> changes since v5: split out non-pwrc related changes
> changes since v4: none
> changes since v3: none
> changes since v2: none (=v2 part 7)
> ---
>  .../devicetree/bindings/mfd/mt6397.txt        |  6 ++++++
>  .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
