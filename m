Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB82098E8B
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 10:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731925AbfHVI7r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 04:59:47 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36634 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731589AbfHVI7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 04:59:46 -0400
Received: by mail-wr1-f65.google.com with SMTP id r3so4635920wrt.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 01:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=kSpdxq5R2ZXVE8nu/XqaBKCSesahRY6PDFEkyTg3anE=;
        b=mjY6H66cPe06RdfYEXFMBSc4YWclkv3FHF1xhq+GB7/uY34v/d2COdOk3tnovDAIMP
         gmQRSbXzL9wpmrHpMx+Dt5BSkE501yYYccnGwwY6npXZIxFldZ30+iqdQo6mD9u1ghoV
         lWYZ2OSYzF8haHJJDJxNqfssGbfzuHCXoPwz9/GFRiZLQud+momrAG0f6ZRlIrNKtYwO
         fyVQHwVXYvbrKcLpJWG9DS45/DMVxO/ZoPiXZ2YK4dlw4m4gMFLlZjiQrkBmrWgN2nEY
         /bIp0jnGJ2mFphi1gkqydigbK60fgpkVCBsf4q3FTdzq+yWU5TcE8Z/pp7jcpMItTobP
         b/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=kSpdxq5R2ZXVE8nu/XqaBKCSesahRY6PDFEkyTg3anE=;
        b=om1Cekdde/8Fekg61K1rI5jKAg/NJcYPHVF5qiIyEbcqfGeGvaYiuEK9mkePjp7W2d
         5PRLVrG1KA0ykxXSAgXjP45/8TCZriW1t5Fh00oHSJczfxR1p/5iTEMd6Te5KzW/jZZy
         YZWXSp9lk8Xn3RYm8P0rBxxFJbvrm1+oL28+fBQbYQkGW7QpLY/TEf5cnUGoM6B0aw8R
         Zvlmx4A0J903yP7bKZOWEVJsizwT9DszxC1rvvBCFDmFIs3nUCKlYcWfJrVIoJUlNdKm
         xKRTkUTqm34tIP1Bo/KNrnoUSVU5esKG/QF43jsZOFjfkRpIOr2UIZITnCqj3GyppJvG
         u5UQ==
X-Gm-Message-State: APjAAAUwGtKLcvR03cAAjpvONML88v3v+snLLHtEDrtm/irwOGnQPFYo
        aXsPqM8C3pjQghTQ+NUnuI4Grw==
X-Google-Smtp-Source: APXvYqwuKNVJFhJQRdzYNki7o1D+RUvGpp/z37PeOA04+PvNyoaR6ILYxxLPwX8JoH/GpSY3l+eqOw==
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr47080873wrt.336.1566464385170;
        Thu, 22 Aug 2019 01:59:45 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i93sm34408190wri.57.2019.08.22.01.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 01:59:44 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Rob Herring <robh@kernel.org>, Carlo Caione <ccaione@baylibre.com>
Cc:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor phandle
In-Reply-To: <20190821181458.GA2886@bogus>
References: <20190731082339.20163-1-ccaione@baylibre.com> <20190731082339.20163-3-ccaione@baylibre.com> <20190821181458.GA2886@bogus>
Date:   Thu, 22 Aug 2019 10:59:43 +0200
Message-ID: <1jftltpocg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 21 Aug 2019 at 13:14, Rob Herring <robh@kernel.org> wrote:

> On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:
>> Add a new property to link the nvmem driver to the secure-monitor. The
>> nvmem driver needs to access the secure-monitor to be able to access the
>> fuses.
>> 
>> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>>  1 file changed, 6 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> index 2e0723ab3384..f7b3ed74db54 100644
>> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> @@ -4,6 +4,7 @@ Required properties:
>>  - compatible: should be "amlogic,meson-gxbb-efuse"
>>  - clocks: phandle to the efuse peripheral clock provided by the
>>  	  clock controller.
>> +- secure-monitor: phandle to the secure-monitor node
>>  
>>  = Data cells =
>>  Are child nodes of eFuse, bindings of which as described in
>> @@ -16,6 +17,7 @@ Example:
>>  		clocks = <&clkc CLKID_EFUSE>;
>>  		#address-cells = <1>;
>>  		#size-cells = <1>;
>> +		secure-monitor = <&sm>;
>>  
>>  		sn: sn@14 {
>>  			reg = <0x14 0x10>;
>> @@ -30,6 +32,10 @@ Example:
>>  		};
>>  	};
>>  
>> +	sm: secure-monitor {
>> +		compatible = "amlogic,meson-gxbb-sm";
>> +	};
>
> I guess I acked this a while back, but I'm not sure I would today. It 
> seems incomplete and a node with only a compatible string and no 
> resources doesn't need to be in DT. But that's already done...

It does have ressources (the shared memory) but the mistake (we should maybe think about
fixing) is not expressing these in DT

I think the shared memory is already in our DT, maybe the secure monitor
should get a phandle to it ?

>
> There's no need for 'secure-monitor' anyways. Just do 
> 'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search 
> for the driver directly. It's not like there's more than one secure 
> monitor...

IMO the two methods show different constraints:
- Carlo's proposition show that the efuse driver need a ressource, which
is *a* secure monitor, whatever the variant is.

- Your proposition shows that the efuse driver depends on a particular
  secure monitor variant, which is the one provided by
  "amlogic,meson-gxbb-sm"

Yes, we could make your proposition work by the keeping the
"amlogic,meson-gxbb-sm" last in the compatible list but it isn't great
if a newer variant is actually not compatible with it.

Carlo represent the HW the way it is. It seems more flexible to me,
without adding (unbearable) complexity

>
> Rob
