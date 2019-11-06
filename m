Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B609F1E58
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2019 20:13:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727422AbfKFTNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 14:13:50 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:53871 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726713AbfKFTNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 14:13:50 -0500
Received: by mail-wm1-f66.google.com with SMTP id x4so5095404wmi.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 11:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
        bh=imOl6s7WJtDyzdyKMjRfhQfqUS+7pQQOdxq1MLkDHB4=;
        b=k3l2bcgEB5zMkimsxKUQaGYW3GYIvbfgMggqg/xIB3b2muNxpyx9iikRkTO+F6RLxJ
         LUcr0uc5iBHAdfUSBBpKXUBMm9+BEmHlNt67rEhtZUQ5h3XKC1Df7udpm6b2psNg/3ti
         QKUPBecJaHFBH0QXl864EcYvb05hFLadvo3uAkDvtofUjF22SMDjeq9bLPD5vZahtJV4
         LWwhQgi5HUdjCcDO7F6rtbI3y9EWiRqYxlTn7T9eOQKAY68SqHn8KpWXWsCn/Ci7RAjI
         ohClif+oPgof1ms9CpXvfBI3zmZgajDQe2KxSwgkq59Lv5E4MKwDLfqub5cteAA6suid
         jbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=imOl6s7WJtDyzdyKMjRfhQfqUS+7pQQOdxq1MLkDHB4=;
        b=iy2Lr/CESzi65NEEl9JXiQg+AoW4kTEnzxW6yQrrzK7KJ7dUu4+oxveOMqRAD9N7Gg
         TvUfJPRLs/co1juUTo8o1yuKGQvblzWhn3R9UQMqVkEohlrzOubSGBjj/OO1+FtiirUM
         yYNQykdgdIxJvje4D71+GNIWFoh+fYwvbORMJh5jppuk9iggu/sBoVwrRFsYFDNjvhTW
         9YgijjaGczKqCgDNbmoA1QGt4qbGfpYhOuA0kamgAGWSvP8+YukcfkmIu9tG+LhtbEXF
         XOeMn6Tb1NluwNG4XfcuF9u2vXLMHr3jl8vtZfi0kLPedcUW3ic55KNy23Ib0Atr2ITt
         o89A==
X-Gm-Message-State: APjAAAWAIbNuokULquqlIsYsE3dnvn6RwMKCapvinss+WE2oAPqQtOHB
        aAVQa4rK9iEswdJq47viGn3whA==
X-Google-Smtp-Source: APXvYqxofhZf6+9Ut84ichRu3J3mOUD9QKq9fRKGXAHOm5aOY3zxs0m2DqEz4oxZsC8/9oJnOIgeQg==
X-Received: by 2002:a1c:f602:: with SMTP id w2mr3859157wmc.83.1573067627615;
        Wed, 06 Nov 2019 11:13:47 -0800 (PST)
Received: from localhost (amontpellier-652-1-71-119.w109-210.abo.wanadoo.fr. [109.210.54.119])
        by smtp.gmail.com with ESMTPSA id h140sm4515466wme.22.2019.11.06.11.13.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 06 Nov 2019 11:13:46 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L
In-Reply-To: <7d8e80b5-0b37-691a-3375-6a37cc774a95@baylibre.com>
References: <1571646004-21269-1-git-send-email-christianshewitt@gmail.com> <7d8e80b5-0b37-691a-3375-6a37cc774a95@baylibre.com>
Date:   Wed, 06 Nov 2019 20:13:45 +0100
Message-ID: <7hy2ws6cnq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 21/10/2019 10:20, Christian Hewitt wrote:
>> Chip on the board is S905D3 not S905X3:
>> 
>> [    0.098998] soc soc0: Amlogic Meson SM1 (S905D3) Revision 2b:c (b0:2) Detected
>> 
>> Change from v1: use 0xf0 mask instead of 0xf2 as advised by Neil Armstrong.
>> 
>> Fixes: 1d7c541b8a5b ("soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L")
>> 
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> ---
>>  drivers/soc/amlogic/meson-gx-socinfo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
>> index 87ed558..01fc0d2 100644
>> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
>> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
>> @@ -69,7 +69,7 @@ static const struct meson_gx_package_id {
>>  	{ "S922X", 0x29, 0x40, 0xf0 },
>>  	{ "A311D", 0x29, 0x10, 0xf0 },
>>  	{ "S905X3", 0x2b, 0x5, 0xf },
>> -	{ "S905X3", 0x2b, 0xb0, 0xf2 },
>> +	{ "S905D3", 0x2b, 0xb0, 0xf0 },
>>  	{ "A113L", 0x2c, 0x0, 0xf8 },
>>  };
>>  
>> 
>
> Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.5,

Kevin


