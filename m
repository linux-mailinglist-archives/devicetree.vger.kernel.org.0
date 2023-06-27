Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D46CF73FAC4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 13:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230104AbjF0LIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 07:08:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjF0LIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 07:08:11 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52F121BE8
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:08:09 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b6afc1ceffso8778201fa.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687864087; x=1690456087;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7kf5vgYMQadfUTXhaKrzrwZjtYBeagw2DAOCQqEJ6gM=;
        b=EZnYBzbVT8b6Ker1/cB+EJqNisZDokt+Cha7MTZQ/7dFKKxwn2qSsSpZ3iajK2it0o
         7+8INKDZL+Z0p5ruzW1uGV6AfKsx/jgsoUZoPmPzZLaiO4gS3/Ei6VW5u7oSDuVHy10A
         o3HDL0t41KTUkG/K0SS7OARbuTKy0AwsNysHClY9zYVq/zpOFYP5GXFqzUaD2cUqkAFV
         JQzLmkxsEQjfp8mcVSHxCVLILWNS89O5Kr/CtH+kbK/3a83NYRoqv+KpcpL4Yn1+5fkO
         PDPa5GIx98tnJz7VtoNBWMrzPLecM+rrPx4nvTfoEoAv1uSBQLniYXfqeOSSefwDBEce
         8t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687864087; x=1690456087;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7kf5vgYMQadfUTXhaKrzrwZjtYBeagw2DAOCQqEJ6gM=;
        b=f24aIAggrAh/jy8W0HTntkQF4l13IgmoyUwnA/l/L28lv2VzrwU0wuWEExUSTorlJp
         26zrykodnUzBnUSmLm2vS3bXTk5B1QmKpzqBhuaYh/xSDv0dWRUaCX+u4ES1c449VV/H
         VXZ386r0QqlKTmt/zNHpIG1gMSLObx8xKlGStVzd5WRqnXvequC+64Fkhs1ZgzUTva3x
         BH/KkqLyRNahdQ5YjQIHhpGolBo3xJb/VSmM8+WkfcVb/JxRH9yBEWWvr2o7o0AEcAUz
         1gssLBNiMYc3LsTTfon6i1jB9r005EGzFQWQS7U+9AUDT/QKGOJxRNacIMwo1UgMmpd5
         OPyg==
X-Gm-Message-State: AC+VfDwKeDomfunbHkrfndnYcMywWassj0Zu4y9EF7gspEZcEb6qnbdT
        71LAhHILgBnWkjozULN2tMqdY4wC2Ackpllo6I0=
X-Google-Smtp-Source: ACHHUZ7yto0rSgoADxPVOEbp1jt8VuN9QH0AcQBVOB9XL0SPDu24bO+C2ZaNzGlBp8ve1/Y6n2H1Ig==
X-Received: by 2002:a19:4f54:0:b0:4f8:5d94:2e46 with SMTP id a20-20020a194f54000000b004f85d942e46mr9477130lfk.48.1687864067323;
        Tue, 27 Jun 2023 04:07:47 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id e3-20020ac25463000000b004f866200361sm1478606lfn.164.2023.06.27.04.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 04:07:47 -0700 (PDT)
Message-ID: <60a2fc60-eac9-1e44-be3c-8b7f85a70573@linaro.org>
Date:   Tue, 27 Jun 2023 13:07:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 06/15] ARM: dts: qcom: strip prefix from PMIC files
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
 <20230627012422.206077-7-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230627012422.206077-7-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.06.2023 03:24, Dmitry Baryshkov wrote:
> As the vendor DTS files were moved to per-vendor subdirs, there no need
> to use common prefixes. Drop the `qcom-' prefix from PMIC dtsi file.
> This makes 32-bit qcom/ dts files closer to arm64 ones.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom/{qcom-pm8226.dtsi => pm8226.dtsi}      | 0
>  arch/arm/boot/dts/qcom/{qcom-pm8841.dtsi => pm8841.dtsi}      | 0
>  arch/arm/boot/dts/qcom/{qcom-pm8941.dtsi => pm8941.dtsi}      | 0
>  arch/arm/boot/dts/qcom/{qcom-pma8084.dtsi => pma8084.dtsi}    | 0
>  arch/arm/boot/dts/qcom/{qcom-pmx55.dtsi => pmx55.dtsi}        | 0
>  arch/arm/boot/dts/qcom/{qcom-pmx65.dtsi => pmx65.dtsi}        | 0
>  arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts          | 2 +-
>  arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts       | 2 +-
>  arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts              | 2 +-
>  arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts  | 2 +-
>  arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts           | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-apq8084-ifc6540.dts               | 2 +-
>  arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts                   | 2 +-
>  arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi    | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts      | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts      | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-klte.dts       | 2 +-
>  .../dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts   | 4 ++--
>  arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts                     | 2 +-
>  arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts                     | 2 +-
>  arch/arm/boot/dts/qcom/qcom-sdx55-telit-fn980-tlb.dts         | 2 +-
>  arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts                     | 2 +-
>  23 files changed, 23 insertions(+), 23 deletions(-)
>  rename arch/arm/boot/dts/qcom/{qcom-pm8226.dtsi => pm8226.dtsi} (100%)
>  rename arch/arm/boot/dts/qcom/{qcom-pm8841.dtsi => pm8841.dtsi} (100%)
>  rename arch/arm/boot/dts/qcom/{qcom-pm8941.dtsi => pm8941.dtsi} (100%)
>  rename arch/arm/boot/dts/qcom/{qcom-pma8084.dtsi => pma8084.dtsi} (100%)
>  rename arch/arm/boot/dts/qcom/{qcom-pmx55.dtsi => pmx55.dtsi} (100%)
>  rename arch/arm/boot/dts/qcom/{qcom-pmx65.dtsi => pmx65.dtsi} (100%)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-pm8226.dtsi b/arch/arm/boot/dts/qcom/pm8226.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pm8226.dtsi
> rename to arch/arm/boot/dts/qcom/pm8226.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-pm8841.dtsi b/arch/arm/boot/dts/qcom/pm8841.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pm8841.dtsi
> rename to arch/arm/boot/dts/qcom/pm8841.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-pm8941.dtsi b/arch/arm/boot/dts/qcom/pm8941.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pm8941.dtsi
> rename to arch/arm/boot/dts/qcom/pm8941.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-pma8084.dtsi b/arch/arm/boot/dts/qcom/pma8084.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pma8084.dtsi
> rename to arch/arm/boot/dts/qcom/pma8084.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-pmx55.dtsi b/arch/arm/boot/dts/qcom/pmx55.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pmx55.dtsi
> rename to arch/arm/boot/dts/qcom/pmx55.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-pmx65.dtsi b/arch/arm/boot/dts/qcom/pmx65.dtsi
> similarity index 100%
> rename from arch/arm/boot/dts/qcom/qcom-pmx65.dtsi
> rename to arch/arm/boot/dts/qcom/pmx65.dtsi
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
> index aa0e0e8d2a97..a39f5a161b03 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
> @@ -6,7 +6,7 @@
>  /dts-v1/;
>  
>  #include "qcom-msm8226.dtsi"
> -#include "qcom-pm8226.dtsi"
> +#include "pm8226.dtsi"
>  
>  /delete-node/ &adsp_region;
>  
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
> index de19640efe55..59b218042d32 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
> @@ -6,7 +6,7 @@
>  /dts-v1/;
>  
>  #include "qcom-msm8226.dtsi"
> -#include "qcom-pm8226.dtsi"
> +#include "pm8226.dtsi"
>  #include <dt-bindings/input/ti-drv260x.h>
>  
>  /delete-node/ &adsp_region;
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
> index b887e5361ec3..feb78afef3a6 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
> @@ -6,7 +6,7 @@
>  /dts-v1/;
>  
>  #include "qcom-msm8226.dtsi"
> -#include "qcom-pm8226.dtsi"
> +#include "pm8226.dtsi"
>  
>  /delete-node/ &adsp_region;
>  
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> index 884d99297d4c..42d3867dca42 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> @@ -7,7 +7,7 @@
>  
>  #include <dt-bindings/input/input.h>
>  #include "qcom-msm8226.dtsi"
> -#include "qcom-pm8226.dtsi"
> +#include "pm8226.dtsi"
>  
>  /delete-node/ &adsp_region;
>  /delete-node/ &smem_region;
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
> index e0679436000b..5a8af16bf02d 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
> @@ -4,8 +4,8 @@
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include "qcom-msm8974.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  
>  /delete-node/ &mpss_region;
>  
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8084-ifc6540.dts b/arch/arm/boot/dts/qcom/qcom-apq8084-ifc6540.dts
> index 116e59a3b76d..1df24c922be9 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8084-ifc6540.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8084-ifc6540.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-apq8084.dtsi"
> -#include "qcom-pma8084.dtsi"
> +#include "pma8084.dtsi"
>  
>  / {
>  	model = "Qualcomm APQ8084/IFC6540";
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts b/arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts
> index c6b6680248a6..d4e6aee034af 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-apq8084.dtsi"
> -#include "qcom-pma8084.dtsi"
> +#include "pma8084.dtsi"
>  
>  / {
>  	model = "Qualcomm APQ 8084-MTP";
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> index 60bdfddeae69..da99f770d4f5 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> index 68a2f9094e53..23ae474698aa 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> index f531d2679f6c..24f9521a0be6 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974pro.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> index 8230d0e1d95d..c0ca264d8140 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974pro.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-klte.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-klte.dts
> index 3e2c86591ee2..325feb89b343 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-klte.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-klte.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974pro.dtsi"
> -#include "qcom-pma8084.dtsi"
> +#include "pma8084.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/leds/common.h>
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> index 154639d56f35..efe21289c9fe 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "qcom-msm8974pro.dtsi"
> -#include "qcom-pm8841.dtsi"
> -#include "qcom-pm8941.dtsi"
> +#include "pm8841.dtsi"
> +#include "pm8941.dtsi"
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts b/arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts
> index 7e97ad5803d8..247069361909 100644
> --- a/arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts
> @@ -9,7 +9,7 @@
>  #include "qcom-sdx55.dtsi"
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include <arm64/qcom/pm8150b.dtsi>
> -#include "qcom-pmx55.dtsi"
> +#include "pmx55.dtsi"
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. SDX55 MTP";
> diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts
> index 51058b065279..082f7ed1a01f 100644
> --- a/arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts
> @@ -8,7 +8,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "qcom-sdx55.dtsi"
> -#include "qcom-pmx55.dtsi"
> +#include "pmx55.dtsi"
>  
>  / {
>  	model = "Thundercomm T55 Development Kit";
> diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom/qcom-sdx55-telit-fn980-tlb.dts
> index 8fadc6e70692..e336a15b45c4 100644
> --- a/arch/arm/boot/dts/qcom/qcom-sdx55-telit-fn980-tlb.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-sdx55-telit-fn980-tlb.dts
> @@ -8,7 +8,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "qcom-sdx55.dtsi"
> -#include "qcom-pmx55.dtsi"
> +#include "pmx55.dtsi"
>  
>  / {
>  	model = "Telit FN980 TLB";
> diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
> index 02d8d6e241ae..5385d9782f8e 100644
> --- a/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts
> @@ -8,7 +8,7 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include <arm64/qcom/pmk8350.dtsi>
>  #include <arm64/qcom/pm8150b.dtsi>
> -#include "qcom-pmx65.dtsi"
> +#include "pmx65.dtsi"
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. SDX65 MTP";
