Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04C422AE88F
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 06:59:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgKKF7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 00:59:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgKKF7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 00:59:22 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D45EDC0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 21:59:21 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id j205so1582847lfj.6
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 21:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fB1ufpdbuxxRSARzHgqyBvMDlyYAl1fFqmLJSeJ0lWI=;
        b=heyEgb12+EAHZS2paP38HfC3v1PLLcFA0wcY96SLpcYa+M8jvqWYpaTMa1+2mQdDNw
         Abz7rfmje98IQQl9ZxlVaSJYH2ZOXVuF9+gBPO7mLpln6SYqP6kla6Q6Kb/Jom7tcyqe
         ABPePeETi1E/bCZafZPcuZg6J2+K4HEYqjqT6z+i2BrlTCLIjXQM2klC+HnuY5xuALYI
         ENstVSwBBYssAah2EJVQDYMhwM/n0/yGrqbGNfTTUyMazmbndZAMoHnCsdMked6frnzg
         pBkFFIStkP05pM94VecO62N/EGIorTO9f4ipruKhXI0Nk77iLOsMAcQZ4OnBp4ALE0ds
         HMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fB1ufpdbuxxRSARzHgqyBvMDlyYAl1fFqmLJSeJ0lWI=;
        b=tAnItJx8KJf5m5GIj4clCPu0vvZGMoDU+isjd2AkqOJCLby0ZLC5zvw3p5f/iBRItz
         rK/Exn77pLwcNy5S7dzoz1kWlQZj8ojjKpu9ur1PQm1Cg86NhP7+kRC3ISCjkDQqq2bD
         EaTCtGHj2hjxeNnSQ6Sqr8NCtIEEGPQmdUzR0t0JL6k6THlqH/25WyOrt8G9gKUFn33Z
         lLKqys9QumYx6/Vy3dnUP+8jDv/UWunmkI0FyReQ1D2gHdkpR1svkhYfHoBI23XEKJjO
         S/1DptqY6amoQnXYh0vRXGpB1eKK/5vRru66VEq8HfacrB61OXbaBYmObGZkQpLivtlw
         dfiw==
X-Gm-Message-State: AOAM530xT4Jm0okyynCeiT3uMUhqDexjUIbZkWVGjXKk+ggE5CUm93O9
        cyEByRLC/+/1XLobmbJe7a0=
X-Google-Smtp-Source: ABdhPJwl3dEO/GpsPRkc7YAGJOkJeR/knPt71sf24Cxv3nbVn7BkD6jf/vo4veTr/pc4ECLngtv7Wg==
X-Received: by 2002:ac2:5f4b:: with SMTP id 11mr8385768lfz.385.1605074360226;
        Tue, 10 Nov 2020 21:59:20 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id b12sm114136ljj.133.2020.11.10.21.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 21:59:19 -0800 (PST)
Subject: Re: [PATCH V2 2/2] arm64: dts: broadcom: add BCM4908 and Asus
 GT-AC5300 early DTS files
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201105085458.21121-1-zajec5@gmail.com>
 <20201105085458.21121-2-zajec5@gmail.com>
 <a4a1d02f-c950-62ab-fb49-b5819cf1cd11@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <1d62eeca-dc09-866c-85c7-235144f8e782@gmail.com>
Date:   Wed, 11 Nov 2020 06:59:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a4a1d02f-c950-62ab-fb49-b5819cf1cd11@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11.11.2020 02:04, Florian Fainelli wrote:
>> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> new file mode 100644
>> index 000000000000..3bbefc86b978
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> @@ -0,0 +1,188 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/dts-v1/;
>> +
>> +/ {
>> +	interrupt-parent = <&gic>;
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	aliases {
>> +		serial0 = &uart0;
>> +	};
>> +
>> +	chosen {
>> +		bootargs = "earlycon=bcm63xx_uart,0xff800640";
> 
> We talked about it before, but the earlycon should be dropped from the
> .dtsi file, it does not really belong there.

I asked the following question that you probably missed, could you check it, please?

On Wed, 4 Nov 2020 at 09:02, Rafał Miłecki <zajec5@gmail.com> wrote:
 > Can you explain why, is that some kernel rule I missed? That's extremely helpful for debugging.

^^
