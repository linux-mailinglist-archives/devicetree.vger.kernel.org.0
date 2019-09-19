Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2893B785A
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 13:22:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387690AbfISLWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 07:22:52 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:51817 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389755AbfISLWt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 07:22:49 -0400
Received: by mail-wm1-f65.google.com with SMTP id 7so4043219wme.1
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2019 04:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L/z7HqNsHflGQAbfR3vmMZA79Q4P41CqUalbXCPqdL4=;
        b=DOLQKcTa6DvDnKAxXNjTbyJ/UeL95KDBH6zVylwU+sMxSJJU0wkL4mdw8D5Z/N9t6j
         Btxi/ziR8aabLIaf9+xTlTKlOoD0X7wfyjm3hE84FrzWC0nZU7OPFat0OSWRyJrE5xbw
         ftTT1mu0jKgPUWzkHfoN8cm9nQCtgBUqORV+jYEHWywYCGKIJE1nN+a39/C8sX5qJzln
         2441htdnt/tab0cAGYxZC8MpPlh45AfIbT1Neu6dSbEILiraHU4jBVlEVLURGMn+4Mhj
         j7R1vzhFCvLLAa2+6iE+P2jdQmofOfWrplWcqWpWvlI4P9DNB+enAkV52RmVWXiPv3bs
         CP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L/z7HqNsHflGQAbfR3vmMZA79Q4P41CqUalbXCPqdL4=;
        b=pF1ewPxEKokoUy9lxs2x8j1ZsA+ekzPirouCRIzFoIhJkq+KCZtUWE3SbXS+YB4zOo
         iNQV4DRvbLcsMM/tVq0BRboxVCxROhq3Bng6ZCd2oPfxKXlF9f/29OK4SNnmAmEVUwz2
         DUGCRMs19FhtNHOWxLQI9deQ8hTTujPzKEovzx2YuznDKL8sf36Dv8YoZylCZ5T+OVK4
         vGv9HRu/4VCqwYzcGxHtxfo30Yu2/nAMzpFHxbQX135Pu6gDOFsgzx0dP58aklAQ5iUf
         D2q5RvEeNHGRrw1DZMJ2fGg7Ay6JNIiMt6tuajApf8xQNJHQbWyEe6UgDWHMlmRFkEwx
         4Rsw==
X-Gm-Message-State: APjAAAU3FyFfWtufuVwlsimDyWXsp94iVQ3ziNI9gxGHcPjeT8u+UgJ+
        YNFeom6BnKqQ+txvJE6XrEWlZXzHsvw=
X-Google-Smtp-Source: APXvYqy2mqc1xRSA6U/tXepOzf4zA4ahtXymq3ZbLKy64+rCf2R+XjoTC4eA68T2fhVOwbifGx/Gww==
X-Received: by 2002:a05:600c:22da:: with SMTP id 26mr2283972wmg.177.1568892165840;
        Thu, 19 Sep 2019 04:22:45 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id g185sm11071560wme.10.2019.09.19.04.22.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 04:22:44 -0700 (PDT)
Subject: Re: [PATCH v6 3/4] dt-bindings: ASoC: Add WSA881x bindings
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org
References: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
 <20190829163514.11221-4-srinivas.kandagatla@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <f488e01f-7ce9-09dd-676d-a476e7b00b46@linaro.org>
Date:   Thu, 19 Sep 2019 12:22:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829163514.11221-4-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On 29/08/2019 17:35, Srinivas Kandagatla wrote:
> This patch adds bindings for WSA8810/WSA8815 Class-D Smart Speaker
> Amplifier. This Amplifier also has a simple thermal sensor for
> over temperature and speaker protection.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Bindings for the codec have been Acked by Rob, SoundWire depended 
patches are already applied for 5.4 and codec driver is Acked by Pierre.

Do you want me to resend these two patches separately?


thanks,
srini

> ---
>   .../bindings/sound/qcom,wsa881x.yaml          | 62 +++++++++++++++++++
>   1 file changed, 62 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
> new file mode 100644
> index 000000000000..faa90966a33a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/qcom,wsa881x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Bindings for Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +description: |
> +  WSA8810 is a class-D smart speaker amplifier and WSA8815
> +  is a high-output power class-D smart speaker amplifier.
> +  Their primary operating mode uses a SoundWire digital audio
> +  interface. This binding is for SoundWire interface.
> +
> +properties:
> +  compatible:
> +    const: sdw10217201000
> +
> +  reg:
> +    maxItems: 1
> +
> +  powerdown-gpios:
> +    description: GPIO spec for Powerdown/Shutdown line to use
> +    maxItems: 1
> +
> +  '#thermal-sensor-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - powerdown-gpios
> +  - "#thermal-sensor-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soundwire@c2d0000 {
> +        #address-cells = <2>;
> +        #size-cells = <0>;
> +        reg = <0x0c2d0000 0x2000>;
> +
> +        speaker@0,1 {
> +            compatible = "sdw10217201000";
> +            reg = <0 1>;
> +            powerdown-gpios = <&wcdpinctrl 2 0>;
> +            #thermal-sensor-cells = <0>;
> +        };
> +
> +        speaker@0,2 {
> +            compatible = "sdw10217201000";
> +            reg = <0 2>;
> +            powerdown-gpios = <&wcdpinctrl 2 0>;
> +            #thermal-sensor-cells = <0>;
> +        };
> +    };
> +
> +...
> 
