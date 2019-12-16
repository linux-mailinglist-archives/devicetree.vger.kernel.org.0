Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 141041202D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 11:42:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727485AbfLPKmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 05:42:51 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:51331 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727324AbfLPKmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 05:42:51 -0500
Received: by mail-wm1-f68.google.com with SMTP id d73so6177389wmd.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 02:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=++Lt5Fr+RwIy1Ndr73jFO/gA9fjeqgMoPVWGoy6+iBA=;
        b=hIqxrVZIYiC6WKAtC1ImBqJ2ksj72SS90RjWVGpzSu+WVWxOxXjy5t8owPEiX8d9F/
         fRxEgPEdq1nGU5o228ROMHVcnbwXhyqghCoiNMO8dfnatxvmBl2WHHL2JZrvrg8QOizZ
         9yc+T6QudxtwpsoQ1O5EwLFzh8UumMtaAGar/nq8jwvagrSqVrCbaOa8mV5WrWSvltPB
         whlx7Qr1zRqf+wzhGbNSgnrBbjQza9N4zXxkPfca068hdfr4zH1Ddao77q0x6KInu4ml
         W9TsGVbyEFMTOPf2Q9TJAVwyXEoI+nSdJkEl3It2ulu+t5aLcfjp13dB1vipbXSxTVpo
         pQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=++Lt5Fr+RwIy1Ndr73jFO/gA9fjeqgMoPVWGoy6+iBA=;
        b=iRdNKB0+TZK29zl4Mjw174s1odbl5JvrBaKAngEvZf7jtlxkB8hZyD4iLC+x71HYk1
         3mqff773G+oj7DB4th4M+WhQB7bwK6uL6wLqRVvwVJht6I+qaOSd0PpOIzy1ZCxXIoLa
         Ne4FEb2keSpw4i39oGAK+t4amlWpjX/mh7w6lssno3uNqBF1fkH0GOOKNtN4ohMiKIpm
         XTxDVSqnkUlEpd7wV2M/g1H68asDa6+W/ilMyvQpE4eV7vMD2QSdIcPNfBbBsQdsScY7
         sN28RaUL0bcdrPmAThSVLn9XUxJ/+a8g9ewfiVdX+yGu3l4JPkoqpHMa0Yp9VWvi8y7q
         qOtw==
X-Gm-Message-State: APjAAAU6i29n7XWNBgUiC2jkrrfppw3hScDtVh2uAioBYirVyq8jd0pb
        Gi3GZzpUZ0W4tgYw+n7MjjO7kQ==
X-Google-Smtp-Source: APXvYqzzwkX1ps0/zgn1aMQHOpmA2TSJ2eZ63E3HwGB4lr0SQVll7z6EkkJ2AHAdRx3f+aHoIWg9TQ==
X-Received: by 2002:a1c:407:: with SMTP id 7mr28746768wme.29.1576492968976;
        Mon, 16 Dec 2019 02:42:48 -0800 (PST)
Received: from dell ([2.27.35.132])
        by smtp.gmail.com with ESMTPSA id y20sm19628749wmi.25.2019.12.16.02.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 02:42:48 -0800 (PST)
Date:   Mon, 16 Dec 2019 10:42:48 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: ab8500: Document AB8505 bindings
Message-ID: <20191216104248.GE3601@dell>
References: <20191117221053.278415-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191117221053.278415-1-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Nov 2019, Stephan Gerhold wrote:

> AB8505 can now be configured from the device tree.
> The configuration is almost identical to AB8500, so just add a note
> for the nodes/compatibles that differ between the two revisions.
> 
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  Documentation/devicetree/bindings/mfd/ab8500.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
