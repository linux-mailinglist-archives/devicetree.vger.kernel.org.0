Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5288A453
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 19:30:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbfHLR3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 13:29:54 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:51954 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbfHLR3x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 13:29:53 -0400
Received: by mail-wm1-f68.google.com with SMTP id 207so307328wma.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ByFUgdhbenoqEac047fOWBGeHpky4WQIPNsQ5F/8hHw=;
        b=OMiVvuQ6ojoYr2YaifiVWycNEMTTYrBGavkydOe6vRXCe5m9lxrGeQZD/i2qxrv3S6
         +dxN1eFQvkk00T5cXg2ceO/GOTDj+MNPm959qjfJFzbl4DrPw6VLexlrq9ZhmPKLSf79
         YyXON1FHSIP9zt2EHjOA+Ii8cCDWH1NA25tDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ByFUgdhbenoqEac047fOWBGeHpky4WQIPNsQ5F/8hHw=;
        b=qGFhO3lWNCWNovuWQLVisu+RyzfG96ASxnrBbcb6Sf5Vig9eiuQILTU5Nfw32PrDgv
         +yNLCOcokZz3X5bsWcsPlc7/gCxDHqY7kvaJ9z5rzhW+sreO6xjMxfJV926HjDBtPzHH
         4oICMiAKARsDqwMW9F5DWhtZY4zsIexseHiPaAVHJUev0typPCsap1VxS8BUKNyybnxB
         2oaoc+qWIuwnA35B9LsTIu8uKui3rcpimbotBkS72hOtjiJIVpwGVVydQkFJtejNkJKb
         SIGwgIbU6AlbnsRCRXBkVtNyADf5DXlmOx/Ny7kl81mx6WNHe3KpG8M8m8r/K71doN42
         HXfg==
X-Gm-Message-State: APjAAAVrR0BF7IY8yMLA5yzV5Cm0MnKwjzhNUxvzXvgIG4/sX5I4EOBU
        BH08JcO/ipWxVWcn4rjQ+ouG9w==
X-Google-Smtp-Source: APXvYqwffxgDJUFgKjRnlRgtgc57iuw+e8GldResFtDU49A9XNzUc1EaUB1YKilvT4b09fNs8Ut0Fw==
X-Received: by 2002:a05:600c:24a:: with SMTP id 10mr422398wmj.7.1565630990279;
        Mon, 12 Aug 2019 10:29:50 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id t14sm12277331wrv.12.2019.08.12.10.29.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:29:49 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] i2c: iproc: Add full name of devicetree node to
 adapter name
To:     Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
        Wolfram Sang <wsa@the-dreams.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        Lori Hikichi <lori.hikichi@broadcom.com>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <76f6d006-a0af-85ba-f893-f60e60bfc20d@broadcom.com>
Date:   Mon, 12 Aug 2019 10:29:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/7/19 8:37 PM, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
> 
> Add the full name of the devicetree node to the adapter name.
> Without this change, all adapters have the same name making it difficult
> to distinguish between multiple instances.
> The most obvious way to see this is to use the utility i2c_detect.
> e.g. "i2c-detect -l"
> 
> Before
> i2c-1 i2c Broadcom iProc I2C adapter I2C adapter
> i2c-0 i2c Broadcom iProc I2C adapter I2C adapter
> 
> After
> i2c-1 i2c Broadcom iProc (i2c@e0000) I2C adapter
> i2c-0 i2c Broadcom iProc (i2c@b0000) I2C adapter
> 
> Now it is easy to figure out which adapter maps to a which DT node.
> 
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>   drivers/i2c/busses/i2c-bcm-iproc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index 19ef2b0..183b220 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -922,7 +922,9 @@ static int bcm_iproc_i2c_probe(struct platform_device *pdev)
>   
>   	adap = &iproc_i2c->adapter;
>   	i2c_set_adapdata(adap, iproc_i2c);
> -	strlcpy(adap->name, "Broadcom iProc I2C adapter", sizeof(adap->name));
> +	snprintf(adap->name, sizeof(adap->name),
> +		"Broadcom iProc (%s)",
> +		of_node_full_name(iproc_i2c->device->of_node));
>   	adap->algo = &bcm_iproc_algo;
>   	adap->quirks = &bcm_iproc_i2c_quirks;
>   	adap->dev.parent = &pdev->dev;
> 

Looks good, thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>
