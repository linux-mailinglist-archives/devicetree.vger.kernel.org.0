Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78B84FCBD
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 17:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726066AbfD3PYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 11:24:25 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37790 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726048AbfD3PYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 11:24:20 -0400
Received: by mail-wm1-f65.google.com with SMTP id y5so4324620wma.2
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2019 08:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=sfPiJtc0QJCi1p8F+pLfyW3kyCVBd6/w24lBML4INFs=;
        b=Zq29Lce4FbgANq8O/VR3G2DR2T0McxOvjAYNyFuGiseM6g0bFwbbKyg6YAdPZGaXB9
         qR42Am+otNkuxkoxLnvL3C11uwc87q2JORpiNTArbGaOX9lQsC0H619piV+BTkIJiBqk
         bv14v1HIcvXqUneiIi1i3MHBgnHpgH4Bn0gIhYWoe/SfR+wDasBlzzQmKA2elwrOAlYK
         yRqwj0wM5DdV4t42oN9NHi82sgsbC9HPX8bX7Zc05QL3xz6ypUgyaKckplMe5Mgje5RG
         KrlINFZ7i9Bhg9WVZ7ANpr5QqK1b4QC5i7Y7f627OU2rwVdTFFihabLo3nOatYM6Hw9a
         pP4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=sfPiJtc0QJCi1p8F+pLfyW3kyCVBd6/w24lBML4INFs=;
        b=E7OV/v2CQMr08/uGNGx+hcDsmxLanJjLs19erMD4ySpjG1vemwfpsEs48DOpRNu8l8
         bsLmR9W3ehCphmHXN8oV1oji4jz57JJnR/0ezkjZRwOydf09mXVoCt3/scVbmbTc40ph
         uG1jC6s8bRKPuPvAPfjpOQUNsBL140KfeMhMuc3rlUJ2KkuUAg0rIijO7sygMtv1kCr7
         7PIR1zrueizue78iVK0g8mtux79ls+wFPdN0/k20xmsJNGOU4oQw0HGQECJqAbjkRRke
         mp/NGg1M7JKt1kAARVTwLmAb25le12n5U341r86g8da/h2ZHjcOAUaVHjIIIOq8HxU7r
         u2+g==
X-Gm-Message-State: APjAAAXyq+8LXIEW8Ks7lppoacxv4XolXpeBvoujOJKe807vHdcwgvw+
        lqopD7OEOQx5gQy3dzauUkDbzA==
X-Google-Smtp-Source: APXvYqwZu73MRdHtNl6L5wzqWxZQM0gSV2O1ZuD0lDRbcOfSjsiOhySkIltHDNpgSln+Rq/Ek1lkSg==
X-Received: by 2002:a1c:a843:: with SMTP id r64mr1118747wme.45.1556637858428;
        Tue, 30 Apr 2019 08:24:18 -0700 (PDT)
Received: from [10.1.4.98] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s132sm3986240wms.10.2019.04.30.08.24.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Apr 2019 08:24:17 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] dt-bindings: pinctrl: add a 'drive-strength-uA'
 property
To:     Rob Herring <robh@kernel.org>
Cc:     linus.walleij@linaro.org, mark.rutland@arm.com,
        khilman@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20190418124758.24022-1-glaroque@baylibre.com>
 <20190418124758.24022-2-glaroque@baylibre.com> <20190430151243.GA6879@bogus>
From:   guillaume La Roque <glaroque@baylibre.com>
Message-ID: <7d1743ca-f45a-133f-6130-c77059d27de2@baylibre.com>
Date:   Tue, 30 Apr 2019 17:24:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430151243.GA6879@bogus>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,


On 4/30/19 5:12 PM, Rob Herring wrote:
> On Thu, Apr 18, 2019 at 02:47:55PM +0200, Guillaume La Roque wrote:
>> This property allow drive-strength parameter in uA instead of mA.
>>
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
>> index cef2b5855d60..fc7018459aa2 100644
>> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
>> +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
>> @@ -258,6 +258,7 @@ drive-push-pull		- drive actively high and low
>>  drive-open-drain	- drive with open drain
>>  drive-open-source	- drive with open source
>>  drive-strength		- sink or source at most X mA
>> +drive-strength-uA	- sink or source at most X uA
>>  input-enable		- enable input on pin (no effect on output, such as
>>  			  enabling an input buffer)
>>  input-disable		- disable input on pin (no effect on output, such as
>> @@ -326,6 +327,8 @@ arguments are described below.
>>  
>>  - drive-strength takes as argument the target strength in mA.
>>  
>> +- drive-strength-uA takes as argument the target strength in uA.
>> +
> We have standard unit suffixes defined in bindings/property-units.txt. 
> Use them please.


thanks for your feedback and sorry i don't see this doc.

According to it i will update patch series with drive-strength-microamp


> Rob
Guillaume
