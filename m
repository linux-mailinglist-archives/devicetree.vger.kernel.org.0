Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9971A1FA
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 18:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727941AbfEJQwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 12:52:25 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:45072 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727933AbfEJQwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 12:52:25 -0400
Received: by mail-wr1-f65.google.com with SMTP id s15so8629799wra.12
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 09:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EdL93aDu1wQiagw0qz1g/jZBUerOff0Armk0aWzS8+Q=;
        b=Kyl9xljPXbBEnCFdzxUX38r1C1khREMVKXPgKj9QMql8+2KkAoEjx/zyXaqcrG/DiM
         mH4uVvZaJMEV4T3CBBBYbCpkwvsuhkpv3InVevpsNReKKXW5M22y1Jm9l9tZy8Xb7E2Y
         IbahXe5USV23dRsJAHnEO+cLRrYLz3aibVUqCqpfjJE/5XQ3yMuMaoAqQPagFEWUZgVc
         PmfXmZKQg0vzkh3cp/lUOuxZ36zV6TI/gZeVJruvDVrSZkgklAh9bejS/9+j6OuB/Sgb
         SGJefUbJ+kCtHUxtXxEDswab3rIzIx3AWRUrm6gquSn22FcoH6i49VD3pdfkjTvGpP03
         Sddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EdL93aDu1wQiagw0qz1g/jZBUerOff0Armk0aWzS8+Q=;
        b=AkzZxl95Qr7zPgwkrg9pSr5QvJ9TO2v5i1iKKlKIEp7Qg61ZjQYwTDC05oZCHUBcQ2
         didT0quYg15h01GMs+XVflWwmKt44xUh3sZDaN5LqQDBZvEL9jpRFktTN8AKU3YnsBa3
         9uqcMO0tFEnIa18E5X+JutkaCWp+jTWvN7An+qvg47F3LWV4Z7sB++bcrg2bIMys3gO+
         BeWN+lDh1VHosYrRKWTEjvEFaC9cSS8uVYYt16qW6tKmDGxLRoiB46QmaG4+S8DremIf
         sbODa62kxGPxiMEXs4NYqMJIhr4aPRNIXi9DQpQzuEvlpZKwahuI4SdXBTAcwTYQhcxJ
         xsTg==
X-Gm-Message-State: APjAAAUD9aldcX5lUgP4KavTslxwSU1U617r8ebCWiSlCMnzmZsEe9NP
        cooXMKel9VxFbE+vFvmlo2YhMg==
X-Google-Smtp-Source: APXvYqz0lyOYwhb3SFsb+q9KO7qmePMS9hVr+rx5egvauVDdXB2VOaJIZl+JrgtFCwdwT8ul++b0AA==
X-Received: by 2002:adf:ee8d:: with SMTP id b13mr201821wro.219.1557507143391;
        Fri, 10 May 2019 09:52:23 -0700 (PDT)
Received: from boomer.baylibre.com (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id m8sm10365591wrg.18.2019.05.10.09.52.22
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 10 May 2019 09:52:22 -0700 (PDT)
Message-ID: <7b8ddc8de64b6d8947ac869ccd09ebb7e995130a.camel@baylibre.com>
Subject: Re: [PATCH 0/5] arm64: dts: meson: g12a: add network support
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Date:   Fri, 10 May 2019 18:52:21 +0200
In-Reply-To: <20190510164940.13496-1-jbrunet@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2019-05-10 at 18:49 +0200, Jerome Brunet wrote:
> Add network support for the g12a

I forgot to mention that series applies on top of the node
re-order series [0]

[0]: https://lkml.kernel.org/r/20190510155327.5759-1-jbrunet@baylibre.com

> 
> Jerome Brunet (5):
>   arm64: dts: meson: g12a: add ethernet mac controller
>   arm64: dts: meson: g12a: add ethernet pinctrl definitions
>   arm64: dts: meson: g12a: add mdio multiplexer
>   arm64: dts: meson: u200: add internal network
>   arm64: dts: meson: sei510: add network support
> 
>  .../boot/dts/amlogic/meson-g12a-sei510.dts    |  7 ++
>  .../boot/dts/amlogic/meson-g12a-u200.dts      |  7 ++
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 90 +++++++++++++++++++
>  3 files changed, 104 insertions(+)
> 


