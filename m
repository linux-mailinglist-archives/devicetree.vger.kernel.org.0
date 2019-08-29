Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD58A2006
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 17:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728328AbfH2PwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 11:52:22 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38989 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728406AbfH2PwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 11:52:16 -0400
Received: by mail-wm1-f68.google.com with SMTP id n2so2989181wmk.4
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 08:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LnH0w/K/K8vFf4T8B8Pk9QjQILA18r17IdgmbEo/xQc=;
        b=s/BkU/Sux2u6RPNlBX0IHCd6Nn145MOMsbJ5Qi37t6m5TOKh4CdzKB2nosIq2bP6Cw
         H7hhdrs2HTB+lXIFe3Y9StlYcNr1yJOfRagPoslen2GJeSBHPG5RUb+P7Qzd2697eJew
         kvXuvNsEBQpxN0TlS0I6avL2J6B9N1J8l8r+QzotEISe4dxMoEoGbm+nzjrS3myENM5K
         6cPT2stStZfhlJVbXS5tWHA2AGj30QefGul99ZQ3qRg7Fj0OIIC3ik4ih1yBUqL+3HQk
         6oiA12Bu1m5phpmbbYBtzO56be2D34bhGmW/gJDrpXc5MmomNzBpGkFzi0nlor6RRxrq
         GHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LnH0w/K/K8vFf4T8B8Pk9QjQILA18r17IdgmbEo/xQc=;
        b=NpMyXxt3+GtAZbCfY6N8FefS6LG2rcT6H4uHSwAF2JmFC5RU+H9SwNGP27va0iFeP5
         hCYNkDm5OnGazMe1hOiZlVU0yoSFxooj/TGBQzMLLunFw4X2Uhr1tZAtdsasXiWer3Gu
         N291uemt8RMd4YQ7ie7QMQSpFwaomB3Q3HO8K+CHRmBaFGlHq1lIYJHl80bey5Yx1BeD
         pjGBJ8w1BrWx667koDpE+dAwxWjiXhUeffbZANFhWUyV5V4TH7DkM5rERcuPwkEkmX84
         w8d6fAwnd8a1pYhhNVI2CPpIoR5nnqTH2sQLFOH9erQBDoqjFAOj+Syooj9NpOObjRsU
         IWzQ==
X-Gm-Message-State: APjAAAXpy8ndb+/LTuAeFNJAsnz1Yh/5hdSDY2wMmyikr17x7ovzPtiR
        t+ZoWcDYHnPTdv365ZbJqJ1dyywTODk=
X-Google-Smtp-Source: APXvYqyqrcnzdUapgwZZmzywb2WvczjVj7DbtThNc0+7wpYTtqQcO97DJpeJRLSvqOSI+XQE7EsAnA==
X-Received: by 2002:a1c:810a:: with SMTP id c10mr11920180wmd.72.1567093934178;
        Thu, 29 Aug 2019 08:52:14 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id g14sm5983745wrb.38.2019.08.29.08.52.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 08:52:13 -0700 (PDT)
Subject: Re: [PATCH v5 3/4] dt-bindings: ASoC: Add WSA881x bindings
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>, Vinod <vkoul@kernel.org>,
        spapothi@codeaurora.org, Banajit Goswami <bgoswami@codeaurora.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, devicetree@vger.kernel.org
References: <20190829144442.6210-1-srinivas.kandagatla@linaro.org>
 <20190829144442.6210-4-srinivas.kandagatla@linaro.org>
 <CAL_JsqLOHA+r9UCTwyvj+_BzWSrsVDZw5vp-1XhYYvQxncx0sw@mail.gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ef01465e-25d6-059c-1f5d-8e8ebd6b887d@linaro.org>
Date:   Thu, 29 Aug 2019 16:52:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLOHA+r9UCTwyvj+_BzWSrsVDZw5vp-1XhYYvQxncx0sw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the review!

On 29/08/2019 16:46, Rob Herring wrote:
> On Thu, Aug 29, 2019 at 9:45 AM Srinivas Kandagatla
> <srinivas.kandagatla@linaro.org> wrote:
>>
>> This patch adds bindings for WSA8810/WSA8815 Class-D Smart Speaker
>> Amplifier. This Amplifier also has a simple thermal sensor for
>> over temperature and speaker protection.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../bindings/sound/qcom,wsa881x.yaml          | 41 +++++++++++++++++++
>>   1 file changed, 41 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>> new file mode 100644
>> index 000000000000..7a486c024732
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> Dual license please.
> 
Will do that!

>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/sound/qcom,wsa881x.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Bindings for Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier
>> +
>> +maintainers:
>> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> +
>> +description: |
>> +  WSA8810 is a class-D smart speaker amplifier and WSA8815
>> +  is a high-output power class-D smart speaker amplifier.
>> +  Their primary operating mode uses a SoundWire digital audio
>> +  interface. This binding is for SoundWire interface.
>> +
>> +properties:
>> +  compatible:
>> +    const: "sdw10217201000"
> 
> No need for quotes.

Did not knew that! Still getting used to yaml stuff :-)

> 
>> +
>> +  reg:
>> +    maxItems: 1
>> +
> 
>> +  powerdown-gpios:
>> +    description: GPIO spec for Powerdown/Shutdown line to use
>> +    maxItems: 1
>> +
>> +  '#thermal-sensor-cells':
>> +    const: 0
> 
> Either of these required?
> 

"make dt_binding_check" was complaining when I added this! Let me retry it!

> Here you can put 'additionalProperties: false'
> 
>> +
>> +examples:
>> +  - |
>> +    speaker@0,1 {
> 
> This should be under a soundwire bus node.

okay..

> 
>> +        compatible = "sdw10217201000";
>> +        reg = <0 1>;
>> +        powerdown-gpios = <&wcdpinctrl 2 0>;
>> +        #thermal-sensor-cells = <0>;
>> +    };
>> +
>> +...
>> --
>> 2.21.0
>>
