Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B93B5915EE
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2019 11:34:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726728AbfHRJez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Aug 2019 05:34:55 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35323 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726724AbfHRJer (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Aug 2019 05:34:47 -0400
Received: by mail-wr1-f68.google.com with SMTP id k2so5633832wrq.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2019 02:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+t3LQMBsSqNtOgurGKhZ9wHHLkH0/0oqZfvSxZFI7Kc=;
        b=uttML3RCJoDZnRkarpGajlROiOjlCgdBRarQ0F5FMFCaZ0D2ZSDeoe6m89e45/9Cd3
         M3wPcFpgIvwV3Y/fuC9wfjXctxXie2swARrs+EXYcJhI8rcpY4H0QlqaTdzkwf4KnHP+
         eQ0AFmJLrnT3WXl4twdhFDNubbJfvJVg/vY0WASgHxqLAmtPtB4xbBqQHJmHYsWXg8nU
         3jghdnYoY1SziexIR5V4wckMT+1Fzc1PLKt4KiNQd3h5Yf14I+Ta6fUWk3DumKdZ8nIr
         WHM32qDx5MQzVr6Ewizcv+SAO9qRdlt3EDZNUo2gWYZyC1odC3LXL1D0TVmPHA6Trv77
         tuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+t3LQMBsSqNtOgurGKhZ9wHHLkH0/0oqZfvSxZFI7Kc=;
        b=DoFW5BoNOsGIR8U4WWDpppNE8E42hrW25jSC5f55t6t/5+WpzDNScqV7wuucbzTi/c
         fvwRaHPcHCb/P86h7gFS9l9NPwUptXvKhPlT4wpibsifmkl7/Mdb1aIsbQRtljMTf08x
         s/licaTrXwFfRVZu+2parQubswF8vs+DonFvREbAfvz9xpow3sD+AEhcNAM8Dh+rTeV6
         IQKIzWFSe/e6a/5pE1BSRNTrJFbGnC8ePPy3W7Z9xAChdVGbpA3U69WX8vuaISQydReR
         mRYI9D4U+7uO5pb+qeEv3YEulYRy+zNZl3qyT+V5sszJo9kJ2trHs/zWs4RBnh9pGg3a
         wiBQ==
X-Gm-Message-State: APjAAAVhS5GhgOBKtgUPPC+rnvwGLw8WO8N2SaUWtIuAgbPEjE8oYdDd
        nlVxvVCANslZ8RmuD8ADI151vA==
X-Google-Smtp-Source: APXvYqyDJPoBROgH3mSWPPQRVi3n6qSDQYx/A8Z/krsdoVGn3+rKHtb0XvRz2rf/n5uAvUz1nVx4NQ==
X-Received: by 2002:a05:6000:12c3:: with SMTP id l3mr20161009wrx.100.1566120885734;
        Sun, 18 Aug 2019 02:34:45 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id g26sm8352268wmh.32.2019.08.18.02.34.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 02:34:45 -0700 (PDT)
Subject: Re: [PATCH nvmem v2 0/2] nvmem: imx: add i.MX8QM platform support
To:     fugang.duan@nxp.com
Cc:     robh@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
        shawnguo@kernel.org, kernel@pengutronix.de,
        gregkh@linuxfoundation.org, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20190807040320.1760-1-fugang.duan@nxp.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <5c7e5ff3-f453-c765-8795-c392434c7663@linaro.org>
Date:   Sun, 18 Aug 2019 10:34:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807040320.1760-1-fugang.duan@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/08/2019 05:03, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> The patch set is to add i.MX8QM platform support for i.MX8 SCU
> OCOTP driver due to i.MX8QM efuse table has some difference with
> i.MX8QXP platform.
> 
> V2:
> - Add dt-bindings for the new compatible string support.
> 
> Fugang Duan (2):
>    nvmem: imx: add i.MX8QM platform support
>    dt-bindings: fsl: scu: add new compatible string for ocotp
> 

Applied thanks.

--srini
>   Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 4 +++-
>   drivers/nvmem/imx-ocotp-scu.c                               | 7 +++++++
>   2 files changed, 10 insertions(+), 1 deletion(-)
> 
