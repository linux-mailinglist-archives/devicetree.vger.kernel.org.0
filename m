Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E64FD4830BA
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 12:48:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233076AbiACLsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 06:48:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbiACLsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 06:48:35 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2C5AC061761
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 03:48:33 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id s1so69490623wrg.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 03:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:to:cc:references:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BwVJFEIXJAs7cfXLTAc4v3VJtoIKYaXcasII/IPNDnA=;
        b=tQ8Pkp53R4ay08iKYAuUNUob8te8wxOiHuXxCjh9te4mjHXBD9UQp7cT0dfz3cosTc
         /8ZUBTaSgN2txppOGh6/+S3O2LHmvJqOjp9vR/k5MqFye9PNMrOf7qZUQBvZc+lH/gUw
         xrnAHNW3ioeJaQzlElLfJZu3YbIZN/ziaWFozkH/oTf8J+aQotXBhfPrDji4+SVuUd2r
         dsKp3txVKL97wU+NKW1XQoyBHSLiz/AEr9KfleHe5YBmXwh8nEyt4vcUVq04HNVF7IW/
         GzBoB4H16VSVdaoWUylEDkK7sQomC7YVyAfFGBWZ6pc/D1eDkZoBWVUJf/IQxxSYpAYN
         RWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=BwVJFEIXJAs7cfXLTAc4v3VJtoIKYaXcasII/IPNDnA=;
        b=KYZfZUHlGrHg76M/2zNSCHoEatGSi7RRn749tSFdBU4shcIKNUF52Y7yVk8Do+nhdE
         UbY92Fwe/Me7fEL/Lrc0/IBl1kzaAxC/Va0cpqtVYSiQLNe9X73Vpi3fa3JTT/jyDyrN
         4dx7Su7X31t9V2E/GdDAt5lM0qmXSB3wHZEd8vk9zTjX2+Wbe0OsBHmSq25HFEdkKBg/
         17G/nsXApg/wsp0GfPP7K6LpvpY8p0XV1CgIeNDTetsF2Uosgs4SoJk9XdY/8MqwWkn3
         oSXrBYxUa4FaSvRghhVIELEb0cJtXCJqIL4EojIJnBbuxiZfLic0w0eMZdNnggXo5tG9
         C2PA==
X-Gm-Message-State: AOAM531IzoAFZZ10TBqilS0N0joq8cvtufXz8sXXETVHPoe61NA40/kv
        KJ5hty6miotn/0qTjLjpcQf1Ng==
X-Google-Smtp-Source: ABdhPJw7OwfN6X7S9i007ce/9msto/eRkbkgogLSdqKQSZJPOjh+OhOqu6pcu0mZNBgUNP295XhNYQ==
X-Received: by 2002:adf:f94e:: with SMTP id q14mr14845546wrr.526.1641210512248;
        Mon, 03 Jan 2022 03:48:32 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:7c9d:a967:38e2:5220? ([2001:861:44c0:66c0:7c9d:a967:38e2:5220])
        by smtp.gmail.com with ESMTPSA id s189sm46137699wme.0.2022.01.03.03.48.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 03:48:31 -0800 (PST)
Subject: Re: [PATCH 1/3] dt-bindings: display: meson-dw-hdmi: add missing
 sound-name-prefix property
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
References: <20211223122434.39378-1-alexander.stein@mailbox.org>
 <20211223122434.39378-2-alexander.stein@mailbox.org>
 <c4d5d774-6d9a-410d-b651-e452894e99eb@baylibre.com>
Organization: Baylibre
Message-ID: <8009fd8a-f872-f5e8-c13e-f4717ac9e12c@baylibre.com>
Date:   Mon, 3 Jan 2022 12:48:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <c4d5d774-6d9a-410d-b651-e452894e99eb@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2022 12:32, Neil Armstrong wrote:
> On 23/12/2021 13:24, Alexander Stein wrote:
>> This is used in meson-gx and meson-g12. Add the property to the binding.
>> This fixes the dtschema warning:
>> hdmi-tx@c883a000: 'sound-name-prefix' does not match any of the
>> regexes: 'pinctrl-[0-9]+'
>>
>> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
>> ---
>>  .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>> index cf5a208f2f10..343598c9f473 100644
>> --- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>> @@ -10,6 +10,9 @@ title: Amlogic specific extensions to the Synopsys Designware HDMI Controller
>>  maintainers:
>>    - Neil Armstrong <narmstrong@baylibre.com>
>>  
>> +allOf:
>> +  - $ref: /schemas/sound/name-prefix.yaml#
>> +
>>  description: |
>>    The Amlogic Meson Synopsys Designware Integration is composed of
>>    - A Synopsys DesignWare HDMI Controller IP
>> @@ -99,6 +102,8 @@ properties:
>>    "#sound-dai-cells":
>>      const: 0
>>  
>> +  sound-name-prefix: true
>> +
>>  required:
>>    - compatible
>>    - reg
>>
> 
> Fixes: 376bf52deef5 ("dt-bindings: display: amlogic, meson-dw-hdmi: convert to yaml")
> 
> Acked-by: Neil Armstrong <narmstrong@baylibre.com>
> 

Applied to drm-misc-fixes

Thanks,
Neil
