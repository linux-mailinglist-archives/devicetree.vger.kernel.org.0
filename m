Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 457689867D
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 23:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726852AbfHUVTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 17:19:42 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:35665 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728267AbfHUVTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 17:19:41 -0400
Received: by mail-wm1-f68.google.com with SMTP id l2so3591130wmg.0
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 14:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=dbzkg0dehYA9XxXBy/tRWEwtyB89ujck03vcqauhtxk=;
        b=M41c94fBiRx04YN/D9LqPjJsO6altoSy7hmpL7ol/za2grZjkRDhSLO5v0GE4oqFcr
         sB1NADhpZQEX8bu+8z3ngPuXvDNMCnvmraEJ3pjT7pO4D7RFtsLKvpACV3d+wRTcbYS3
         kXiyqcUDbRVLfqAFOu1aQWi9KhSGOs/D7bXZH5FbeWTIBEsiE3Gq6Uasu8AoiGFjkegK
         gGauvlV6DC3y9og3jEJhbnL9tuYDdQ6Cj/qw58OVHgjo81rXZQTbiI8lu/htArVrxzmf
         go8bSDnidovR7Jy0DAm4NoDj/6PEdoI+wObbt2hwoh0VjwVbN95CdgNGGKyfL19/k8sP
         KHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=dbzkg0dehYA9XxXBy/tRWEwtyB89ujck03vcqauhtxk=;
        b=JwqcvorL0VeDjXS6YJudoPAnxSlD3jd7M2k7Rxk8oNLZlb82qR4foRcT8i52v+DABM
         ELurYg3EAJE5Ek/GZdHhJrY5ebOtggwh9mZJxqQ/ZzLvWXRVz7GPy3SEZIeYC+vHhw4t
         /jBNnfQehF+QKBW25jYdMSqhIJ/pnJOxrGNQveNudk0OF1vHFV/mrrRstU8+9ji0LHfm
         HkqNHfKSPzoy2MgOgqdxuWtcK4DkYM57Ndi/oMI4QsXnC0O52xLy15FU6b895vzv7j6q
         RCm5Bzemz3kRsTgSkzKk2SUNMaeAtXcintvOJ4Awrn+ZrxCMTxYlM5r5GRWt5258Nv6e
         ZWSA==
X-Gm-Message-State: APjAAAVdz2aZy86X9Abf8nNw25iEHzX/YltzSIyv4943EcIVlb8pfUoT
        cLyfMfCtn8yhdThPm7EoERCHug==
X-Google-Smtp-Source: APXvYqz8RJbRsGB3Mt8HsUVbL8cKiur8eRibcotSAhwTRu5jFrKEfBVKTcGp7K5dPJ2MRLuU5YWVug==
X-Received: by 2002:a7b:c649:: with SMTP id q9mr2156413wmk.108.1566422379282;
        Wed, 21 Aug 2019 14:19:39 -0700 (PDT)
Received: from ?IPv6:2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca? ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id c11sm19183554wrs.86.2019.08.21.14.19.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 14:19:38 -0700 (PDT)
Subject: Re: [PATCH v3 0/6] Add support of New Amlogic temperature sensor for
 G12 SoCs
To:     Christian Hewitt <christianshewitt@gmail.com>
Cc:     daniel.lezcano@linaro.org, khilman@baylibre.com,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <357FACA6-6EAC-4E9D-B6F7-4D8D0D59A20A@gmail.com>
From:   guillaume La Roque <glaroque@baylibre.com>
Message-ID: <9a63d585-69b1-c9b2-8092-51361ff41991@baylibre.com>
Date:   Wed, 21 Aug 2019 23:19:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <357FACA6-6EAC-4E9D-B6F7-4D8D0D59A20A@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christian,


thanks for testing on this 3 boards.


guillaume

On 8/14/19 2:24 PM, Christian Hewitt wrote:
> On 6 Aug 2019, at 5:05 pm, Guillaume La Roque <glaroque@baylibre.com> wrote:
>> This patchs series add support of New Amlogic temperature sensor and minimal
>> thermal zone for SEI510 and ODROID-N2 boards.
>>
>> First implementation was doing on IIO[1] but after comments i move on thermal framework.
>> Formulas and calibration values come from amlogic.
>>
>> Changes since v2:
>>  - fix yaml documention 
>>  - remove unneeded status variable for temperature-sensor node
>>  - rework driver after Martin review
>>  - add some information in commit message
>>
>> Changes since v1:
>>  - fix enum vs const in documentation
>>  - fix error with thermal-sensor-cells value set to 1 instead of 0
>>  - add some dependencies needed to add cooling-maps
>>
>> Dependencies :
>> - patch 3,4 & 5: depends on Neil's patch and series :
>>              - missing dwc2 phy-names[2]
>>              - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]
>>
>> [1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
>> [2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
>> [3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
>> [4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
>> [5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/
>>
>> Guillaume La Roque (6):
>>  dt-bindings: thermal: Add DT bindings documentation for Amlogic
>>    Thermal
>>  thermal: amlogic: Add thermal driver to support G12 SoCs
>>  arm64: dts: amlogic: g12: add temperature sensor
>>  arm64: dts: meson: sei510: Add minimal thermal zone
>>  arm64: dts: amlogic: odroid-n2: add minimal thermal zone
>>  MAINTAINERS: add entry for Amlogic Thermal driver
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
>
> I’ve tested this series with Odroid N2 and Khadas VIM3, X96-Max. Patches to add
> support for VIM3/X96-max will be submitted once the driver is merged.
>
> VIM3:~ # dmesg | grep thermal
> [    0.046375] thermal_sys: Registered thermal governor 'step_wise'
>
> VIM3:~ # cat /sys/devices/virtual/thermal/thermal_zone0/temp
> 51300
>
> VIM3:~ # cat /sys/devices/virtual/thermal/thermal_zone1/temp
> 52800
>
> Christian
