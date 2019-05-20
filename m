Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EEA942307B
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 11:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732184AbfETJg7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 05:36:59 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:40818 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731478AbfETJg6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 05:36:58 -0400
Received: by mail-lj1-f193.google.com with SMTP id q62so2289246ljq.7
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 02:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SVmG+KgAS/L8zReuTwf2tG62bM9a7Io4idy5Ia1ZZIw=;
        b=CItiLuntAhzOMGH2VJ//VLpv/1cTB8FN7h7gueSZp7+ondzT4GAkchg89CIMQlKFCH
         +PTP10KnFd3DEk6wgkzuQkb6WmUByoW1S17NW/sqSFxs/pJAl0n1/KOiI5NwUo53VuN/
         3WhWE0Fo0J0Aw6fOq1nQ8XXjwhj9eeTaEnllHzRAz3S2QVQ8NX0gp02/99F/FWQnHm2o
         qk7JJ1qPEtuOeMjLcCwP+/Ht+TvyGGm6x5OONe8RshUFKQIwvWXfR4rJ/+NbLE5fz4qO
         59F+Ga0fmI6oNS5NlIUbmYUQ9/00bX0wh08LL65062trdQZW43TGqsruRXx6pgzJ0AQx
         IKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SVmG+KgAS/L8zReuTwf2tG62bM9a7Io4idy5Ia1ZZIw=;
        b=JRcJ9zBe0XfI3Kna2Sw6Uug0Ee5SEJtvMe9r7PYFIJ+akO2dIOvZnATjgAP5hCc4oj
         75RRKB2irNZCc9hn/DyOoZ7aH1vCaYUz91duqvIUTPViOPoh5I8o216CWOESqk3nvs6d
         7lAeBgU2ON8j88cgsVx6DZTDGbBhwJnkjX/myh6ayQhgsLD/AYGAOAgcMELgSZZbR6Yr
         rRDMXVrvuI7EcmPf6X5v0WKko68tJ8v8nmzWbhSHZSkFbJY+nTepxm3b1koUoKaDb68D
         xRXAJqIWwasI+J/DY5daHpD1/7rGUMoymxFkFlUBAjN7ticVVxkbRAdy0bTSfuz2Nf4b
         GngQ==
X-Gm-Message-State: APjAAAXruMobqSfFfcn6d051/8Pk5N9IfHCh4mHfV8GnmXheV0dGi+40
        uZqpLqMFaPnLn1zMvfRZEIWmHA==
X-Google-Smtp-Source: APXvYqwaXw2NIta4ydW0the9uuNpiHIG2CIaAvFEtua7oAjOr+r4sGkRe1H8tyT2JKQhRZXwIrjRmg==
X-Received: by 2002:a2e:9410:: with SMTP id i16mr7604284ljh.152.1558345016801;
        Mon, 20 May 2019 02:36:56 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.81.27])
        by smtp.gmail.com with ESMTPSA id h25sm3594162ljb.80.2019.05.20.02.36.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 02:36:56 -0700 (PDT)
Subject: Re: [PATCH] of_net: fix of_get_mac_address retval if compiled without
 CONFIG_OF
To:     =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Mirko Lindner <mlindner@marvell.com>,
        Stephen Hemminger <stephen@networkplumber.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1558268324-5596-1-git-send-email-ynezz@true.cz>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <421e4a76-dbd7-73ac-d8cd-af0bcd789a03@cogentembedded.com>
Date:   Mon, 20 May 2019 12:36:50 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558268324-5596-1-git-send-email-ynezz@true.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 19.05.2019 15:18, Petr Štetiar wrote:

> of_get_mac_address prior to commit d01f449c008a ("of_net: add NVMEM
> support to of_get_mac_address") could return only valid pointer or NULL,
> after this change it could return only valid pointer or ERR_PTR encoded
> error value, but I've forget to change the return value of

    It's either "I've forgotten" or just "I forgot".

> of_get_mac_address in case where the kernel is compiled without
> CONFIG_OF, so I'm doing so now.

    Well, better late... :-)

> Cc: Mirko Lindner <mlindner@marvell.com>
> Cc: Stephen Hemminger <stephen@networkplumber.org>
> Fixes: d01f449c008a ("of_net: add NVMEM support to of_get_mac_address")
> Reported-by: Octavio Alvarez <octallk1@alvarezp.org>
> Signed-off-by: Petr Štetiar <ynezz@true.cz>
[...]

MBR, Sergei
