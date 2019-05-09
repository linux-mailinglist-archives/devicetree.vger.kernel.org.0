Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C66F18F33
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 19:35:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726576AbfEIRfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 13:35:13 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39078 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726681AbfEIRfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 13:35:13 -0400
Received: by mail-pf1-f196.google.com with SMTP id z26so1678197pfg.6
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 10:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=zX74GvSVOEa3r9Bsv+StbAMT/sdno07qDVSzxK/DkMM=;
        b=e1POAryfWOAkgAo7r+nE7m/OBxAvTUNZneYzdM/CAG/P2iw7nP6MVlZbhlm2mXQNf3
         6pnpb9xETfdJ1oRG94kw4lxgas2VviA3Lt8Z0IOpwQ3f6P/zowtru1v7xUIkLFCDE5Vw
         YWIIu9MwWy0bTxDqZKCXLpioP8lRzzG3U6iH46YK4k73AAjPUobuk1a5zHIMe4SJ0eRV
         dpUSo/mXt6X7t68d2AznkwJqO09clJ50Q7hlIe0Kt18SpWIJ8ogKEapQGigaD+9UbXXb
         m9hL9XvifvxTrI0LSy9pnCA/yRUZXF4hlWX3XRLhTWFg841BJWZs0bdOnxL7yGDZ31oN
         wWsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=zX74GvSVOEa3r9Bsv+StbAMT/sdno07qDVSzxK/DkMM=;
        b=W2Yr3hFBXaWWYxhgENq5iqknDhzJExylCjUraBnNHeeWVAsyanpPz4tFs/M2vd5DIx
         LWtuhYPlMVdXx3xpgyP2MdJ7GCrNlQjH78H9CSowsvAzl/5R6t5QdWAImpG1XwEklJry
         bVRPE1WKlBHflm3OeNp+jvlhYuS2h+G4bHdCsm8S/1KlvFlH1mwAJ4CS0xJgKPDQyPI5
         6jpJpOB30YnI/Nxu63O3d5LpyWaCzNTSi1vvJRatBO2HOecxm3vW7E1IANnrAAYrkdhu
         2hTsVZ0jQB4sLQ8moFsO6q3w/r0T+xDZw2WqtlOFLUXQXIymadQYbJc7zILgpZydxKNE
         PiJA==
X-Gm-Message-State: APjAAAVjY78IOKvspKQD9e99F1R5i1e/jrgf7eKlWCGwAarPvkasSw/4
        yD3M+A87x9B6mxknJFBH5+vcOw==
X-Google-Smtp-Source: APXvYqwS7WimrfI1E3YNXr+sXRr9qBkaFQ0XqpEKS/H76BcklmD6ZZmvCasxKn1QPxA/n0YZ3uRJOQ==
X-Received: by 2002:a63:ba5a:: with SMTP id l26mr7236440pgu.183.1557423312287;
        Thu, 09 May 2019 10:35:12 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7849:6889:3e03:e97c])
        by smtp.googlemail.com with ESMTPSA id j32sm3288300pgi.73.2019.05.09.10.35.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 May 2019 10:35:11 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Guillaume La Roque <glaroque@baylibre.com>,
        linus.walleij@linaro.org
Cc:     jbrunet@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: pinctrl: add a 'drive-strength-microamp' property
In-Reply-To: <20190509162920.7054-2-glaroque@baylibre.com>
References: <20190509162920.7054-1-glaroque@baylibre.com> <20190509162920.7054-2-glaroque@baylibre.com>
Date:   Thu, 09 May 2019 10:35:11 -0700
Message-ID: <7hzhnvfs4w.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> This property allow drive-strength parameter in uA instead of mA.
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> index cef2b5855d60..84adce9f2a75 100644
> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> @@ -258,6 +258,7 @@ drive-push-pull		- drive actively high and low
>  drive-open-drain	- drive with open drain
>  drive-open-source	- drive with open source
>  drive-strength		- sink or source at most X mA
> +drive-strength-microamp	- sink or source at most X uA
>  input-enable		- enable input on pin (no effect on output, such as
>  			  enabling an input buffer)
>  input-disable		- disable input on pin (no effect on output, such as
> @@ -326,6 +327,8 @@ arguments are described below.
>  
>  - drive-strength takes as argument the target strength in mA.
>  
> +- drive-strength-uA takes as argument the target strength in uA.

s/uA/microamp/

