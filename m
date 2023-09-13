Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98FC979E06A
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 09:05:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbjIMHF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 03:05:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238362AbjIMHF1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 03:05:27 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 544AA1738
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:05:23 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99de884ad25so844195566b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694588722; x=1695193522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7I2nnvWk4UH8FAFaSV9SlMIVcqk0TgFWDoT+NTTsGbA=;
        b=u6oZRa0BF1ppZheho3TEnbyX0qgnWEh5CFkkpu7kKYLYm9BEh1Mlhx3+cdARkNcLFe
         soAzXILwhLcM9+s7K84eRfQhouWHT5QWFhz8PpR6ifc4+AhIVOH0dCtrdXcLK95BNBAX
         C2mGSYcKqV/FsFGnMGsYL9j0jpj4k1mgMe9LlHX0JL7eFX+pjseZCtPQvuQu5psCLSTL
         jM4kCkKAys74MWKS9MFV558FGEy3h2AYwFccUguLBpzOXuqLh97Yt9u5mLgGa4GlpIED
         UuW4m3N3Lan2Rpse55o0eMUnkHlo0ANSP3cYehCUUFYTkCFTBwDfZ8qjlyqUr+if3DNy
         SU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694588722; x=1695193522;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7I2nnvWk4UH8FAFaSV9SlMIVcqk0TgFWDoT+NTTsGbA=;
        b=l5Vwjq//tJSn6DN/c8SMcOddcLlGa2Ngdd4wG4oovk19YYLsS2H22cPIw5k76kAysf
         dqkbWOzZi4RXEyAQtnByN9NtFVxdvk80CjLO6GPGozewTkG0vy4GiFNHdPMsi9wItpkn
         tF9uyzhwmUbXnzZKVQp4xkOZd/Uj0CHykjY+WfWTbYzi3yILkW1e8+gNvWQKOcxMv6Ii
         HDmkiq1cz5JZez158EZ+kZWngdUepj4xhBOGidClyqtWdj9gFOSqm/JWscMHSiUZTlCn
         Kc5yZ1VLKcMXYMRO5I4jbqNwSSmaEfh1vRzttI2P4BQ1cVkNphDSGrl0LZFChNZ9X0iq
         wD5w==
X-Gm-Message-State: AOJu0Yxq1jisMY5STdTtLAvVyHV/wqnil9RT5eC7Za3HmEsUzRtRgtXa
        rrq12/vTdoj4ia5JlyBMkpAyaA==
X-Google-Smtp-Source: AGHT+IFkiJOca9fmo7CStj5P4ra5oKyMt/7g7vX1wqvRn5QyhOanHEKXJ2uJEoquIheWBgOajDRXHg==
X-Received: by 2002:a17:906:8464:b0:9a1:b967:aca7 with SMTP id hx4-20020a170906846400b009a1b967aca7mr1083806ejc.42.1694588721747;
        Wed, 13 Sep 2023 00:05:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z19-20020a170906715300b009a2202bfce5sm7847278ejj.118.2023.09.13.00.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 00:05:21 -0700 (PDT)
Message-ID: <35867958-2da2-a1d5-b8a5-035c45cb9075@linaro.org>
Date:   Wed, 13 Sep 2023 09:05:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 1/3] dt-bindings: imx8-jpeg: Add clocks entries
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>
References: <20230912163810.1750488-1-festevam@gmail.com>
 <7887328f-5811-3bee-b57e-eb3e2975ae1c@linaro.org>
In-Reply-To: <7887328f-5811-3bee-b57e-eb3e2975ae1c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 09:04, Krzysztof Kozlowski wrote:
> On 12/09/2023 18:38, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@denx.de>
>>
>> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
>> the PER and IPG clocks to be functional, so add the clock entries.
>>
>> This also fixes the following schema warning: 
>>
>> imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#
>>
>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>> ---
>> Changes since v2:
>> - Remove clock-names. (Mirela)
>>
>>  .../devicetree/bindings/media/nxp,imx8-jpeg.yaml         | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>> index 3d9d1db37040..3383a275c94a 100644
>> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
>> @@ -31,6 +31,9 @@ properties:
>>    reg:
>>      maxItems: 1
>>  
>> +  clocks:
>> +    maxItems: 2
> 
> You need to describe the clocks, so "items" with descriptions instead of
> maxItems.

And to be clear: such description was in your previous version, so it's
the problem introduced now in v3...

Best regards,
Krzysztof

