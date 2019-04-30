Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB39F099
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 08:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbfD3GiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 02:38:17 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42783 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726470AbfD3GiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 02:38:09 -0400
Received: by mail-wr1-f66.google.com with SMTP id l2so3913582wrb.9
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 23:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=mBIgwbzYmkgbhsO4N+I7kDrPR3sJoh79fVIbgSnCeDQ=;
        b=GuHH2NYJhfjGJwyv3eKUmddbs+NwlVoPBUQ6g4XbNyTIfA7LV44lPasCoVmrbOc1lA
         o0CP5Gg1GPuDRv1Kyt0PwgLvzmDt17MGVfznJfK2JgfG/EdNOkfqIMzvsdxdu6OfV4Ul
         H4jvi7EXAeTor5vxhMQ/DXmNZftZ1+n6Nm2VhMIpeBQx5reXVXjdSFIjZniX8mydQjjc
         q0FSCtLlqLaxg11dtdXIb+9IG8zKXRS/bTgZ7bSqrgAZWzQvczK0mXKWtFiJYV5UO6jh
         B0Ka2xDx/iBeit8A+aB8qkC5uBfJ3mqD5Whu8znjK2JBTHbY1e6XEO+GD0Y/BDlvESoK
         x+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=mBIgwbzYmkgbhsO4N+I7kDrPR3sJoh79fVIbgSnCeDQ=;
        b=WXcdfPNxpnaG2AjEDnSb+hjERBeJ1KJ2y2bDUlY3IpHJInZXswwtttYzHvNSqpyjMQ
         mtE9YECDUMC/Nyj7eYdVAC3TitW1i0KKLp1Z6AETKzcpWcmz6hEG08a0M/pELhm/Dz+o
         mte3CY1SdegkNVNqik3pcBVe9hd3/UUOXs3a9m0+W98RbsGFFBRZ6WSo4GekJ8Ajc2Do
         sejBKXAcXMTS6w5SyI4kbIZQj34jeddZ/wM53Lmt/tmASGpA6tHLDwayfUJ677Q7/hoh
         YRombBynTOTmNuUNC2UBpmK8S0xDtziZK89iua6+fDY8i6/tuRIz3u3pnzUTXnuL04kT
         yi8g==
X-Gm-Message-State: APjAAAVmv9TZHF6XaMiPSlfr+jVw9QBYVM51Hr/8TPUaQpruCsTxZKGL
        yxJ5WEubS93oEQn5nz+lrfNnsfMWcABr9w==
X-Google-Smtp-Source: APXvYqymYeEIEuBhAecoonvSwahyY44dv52RVC/Ac3Z8WNPqSu59fUyK/xQvi6hQJ1QB9v2pITNduQ==
X-Received: by 2002:adf:db0c:: with SMTP id s12mr4222632wri.184.1556606287158;
        Mon, 29 Apr 2019 23:38:07 -0700 (PDT)
Received: from ?IPv6:2a01:cb1d:379:8b00:1910:6694:7019:d3a? ([2a01:cb1d:379:8b00:1910:6694:7019:d3a])
        by smtp.gmail.com with ESMTPSA id j13sm30419810wrd.88.2019.04.29.23.38.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Apr 2019 23:38:06 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] dt-bindings: pinctrl: meson: Add drive-strength-uA
 property
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linus.walleij@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
        khilman@baylibre.com, linux-gpio@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20190418124758.24022-1-glaroque@baylibre.com>
 <20190418124758.24022-4-glaroque@baylibre.com>
 <CAFBinCD_qJw6-_zsnKFhsVHUHd2K2wJ3S9EsXGrPPxZ1SWn=uA@mail.gmail.com>
From:   guillaume La Roque <glaroque@baylibre.com>
Message-ID: <7608f385-d412-f8be-d11b-9023f9702ec3@baylibre.com>
Date:   Tue, 30 Apr 2019 08:38:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCD_qJw6-_zsnKFhsVHUHd2K2wJ3S9EsXGrPPxZ1SWn=uA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

On 4/27/19 9:21 PM, Martin Blumenstingl wrote:
> Hi Guillaume,
>
> On Thu, Apr 18, 2019 at 2:48 PM Guillaume La Roque
> <glaroque@baylibre.com> wrote:
>> Add optional drive-strength-uA property
>>
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> index a47dd990a8d3..b3e4be696ddc 100644
>> --- a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> +++ b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> @@ -51,6 +51,9 @@ Configuration nodes support the generic properties "bias-disable",
>>  "bias-pull-up" and "bias-pull-down", described in file
>>  pinctrl-bindings.txt
>>
>> +Optional properties :
>> + - drive-strength-uA: Drive strength for the specified pins in uA.
> if you have to re-send this series for whatever reason then please
> mention that drive-strength-uA is only valid for G12A and newer

thanks for your review, i will do if i send new series.


> otherwise:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
