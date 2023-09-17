Return-Path: <devicetree+bounces-821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 994FB7A3431
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:58:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB21E1C208C9
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C4031871;
	Sun, 17 Sep 2023 07:58:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057621859
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:58:38 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F74010C
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:58:37 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-52a4737a08fso4124321a12.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694937516; x=1695542316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zaO+2J/lqSPbS4vQvh2EnraKTFOBioHtVw+hf4NwcDk=;
        b=Z7rPBztEv5FfxyZna5mtIjJWGnUPTOehImJbnFD1Mvh1EB3kwnxZR/bl/XT3aknATf
         IzgMYRy39jHPLOD0YduOmggjXh88geTk0KB3cyu7gkUv6SfWTPsJEINlrFEeM+YpuYjA
         R+mF8/DK5X7MptgvL6Ji53faS9dD4OR44xg6v6jKjdT8fSo0RIe5RrEVkOSNFwZ+Fp08
         n2TwczBn1zc7kuDZ5o5xfaOM5ZH3opkV+2jkDMs95xeNf7+fBFSmmvXXHwLd/RZs5k3f
         XrUC0/mAGt0RT8kvNBMg9wtFgxnu7KQcJXvOy6pQvS3wKhvgsZ4w2BKltz+ui2JeR8Lk
         MTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694937516; x=1695542316;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zaO+2J/lqSPbS4vQvh2EnraKTFOBioHtVw+hf4NwcDk=;
        b=GE0rs/wWYFtXTOKK7Ro9nv+dCyD8zYyBZHNjEvSv5ukJzYJmSjLKuQ2KZpaMaT3BMG
         7swkglxWPrrM1eephCn6A71Ii/scysja4PQ9sazQYqW47VUrUf3IcK17AEwT6iEidkuH
         8Vc23Cf7VCAEgwpEtFRIr10iKjyzHismLziiA8nLivVTXhvhPmODmmd1i5KNM/5JDcLH
         oPcxOXAl4G641uwjftYyESFVo0wuSYTCCllFdPcaUC+V9yaEPQnQgXUgJXrtvUSCLtQg
         ouC2v+VEqcrCq9Bi2w2ydjj+Y9mfVR1IWegaQxqEhRLRAnlGUdLCC7c9NG7mTsB79bAC
         8V4w==
X-Gm-Message-State: AOJu0YyhLbwZvOUJ2GAfA2ioPl56zQ4c3rnuu+0nxBoxGQWG28HRW/Es
	MYH0ZjuSrZVm+H0Cc8FiiIW81Q==
X-Google-Smtp-Source: AGHT+IER50X9iiau3YNnEEtcblK1nFvjLHdCIVSoPUqv6brfjaxnSsiL/TSXS6LwaxWBViK0kV6Reg==
X-Received: by 2002:a17:907:2c61:b0:9ad:7d5b:ba68 with SMTP id ib1-20020a1709072c6100b009ad7d5bba68mr4611053ejc.32.1694937515720;
        Sun, 17 Sep 2023 00:58:35 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id j9-20020a170906410900b0099cc3c7ace2sm4744161ejk.140.2023.09.17.00.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:58:35 -0700 (PDT)
Message-ID: <18bef7a4-608b-9ba3-ce8f-ca25999705c3@linaro.org>
Date: Sun, 17 Sep 2023 09:58:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms
 and lbc
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230916-pm8916-dtsi-bms-lbc-v1-0-7db0b42f9fb1@trvn.ru>
 <20230916-pm8916-dtsi-bms-lbc-v1-1-7db0b42f9fb1@trvn.ru>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916-pm8916-dtsi-bms-lbc-v1-1-7db0b42f9fb1@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 15:57, Nikita Travkin wrote:
> PM8916 (and probably some other similar pmics) have hardware blocks for
> battery monitoring and charging. Add patterns for respecive nodes so the

typo: respective

> dt for those blocks can be validated properly.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
> Schemas for those devices were added in [1].

"Dependency"

> 
> [1] https://lore.kernel.org/r/20230915-pm8916-bms-lbc-v3-0-f30881e951a0@trvn.ru
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> index 9f03436b1cdc..8bcd76748faa 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> @@ -133,9 +133,15 @@ patternProperties:
>      type: object
>      $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
>  
> +  "^battery@[0-9a-f]+$":
> +    type: object
> +    oneOf:
> +      - $ref: /schemas/power/supply/qcom,pm8916-bms-vm.yaml#

That's just ref, so no need for oneOf... unless you already think this
will grow with different schemas like the charger below?

> +
>    "^charger@[0-9a-f]+$":
>      type: object
>      oneOf:
> +      - $ref: /schemas/power/supply/qcom,pm8916-lbc.yaml#
>        - $ref: /schemas/power/supply/qcom,pm8941-charger.yaml#
>        - $ref: /schemas/power/supply/qcom,pm8941-coincell.yaml#
>        - $ref: /schemas/power/supply/qcom,pmi8998-charger.yaml#
> 

Best regards,
Krzysztof


