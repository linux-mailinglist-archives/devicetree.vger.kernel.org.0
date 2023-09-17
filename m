Return-Path: <devicetree+bounces-824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5B27A3444
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26FAB281983
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 08:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03AB91C35;
	Sun, 17 Sep 2023 08:26:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA381C32
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 08:26:17 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D4C130;
	Sun, 17 Sep 2023 01:26:15 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id DFDE0408E9;
	Sun, 17 Sep 2023 13:26:09 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1694939170; bh=RnwYYmjMyyRIV1V1HDGTWtsAia7F8WWhWq4msK/d1oM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mDHgyjKbYa9HZUOkBW+Bcserl/b0Qx+Drh8mL2L6zO0Lw28VynpTQOIoYmpnsr/av
	 VwJVZYn017n1y+oOvxz1c9H7gSrqHfI+20gfyQ0Bn6ab7Oy2xE9RDUo+30f+knGlHN
	 5iY4TvN4hLRQxCTG22SrVAywiohM+09mM9LL7fxMBrm4xjGJvAM1SHSeQRm9EeoEho
	 5ODlTjBfqX6mqBQLw6hkuYAUkAwVvHoD0sn7kD3zVdIctfHnILLI1Z+Lis6a7bsMdw
	 keq8IxFDhm1dLqHEnNt28pIaiEuGOzjWVfRaUz5e8DQhcrQVFyJUgjBG71RgfMH+qT
	 BsvGntsMr236A==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 17 Sep 2023 13:26:08 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms
 and lbc
In-Reply-To: <18bef7a4-608b-9ba3-ce8f-ca25999705c3@linaro.org>
References: <20230916-pm8916-dtsi-bms-lbc-v1-0-7db0b42f9fb1@trvn.ru>
 <20230916-pm8916-dtsi-bms-lbc-v1-1-7db0b42f9fb1@trvn.ru>
 <18bef7a4-608b-9ba3-ce8f-ca25999705c3@linaro.org>
Message-ID: <fac4a27d08108bd6e902ba0fa4708ec4@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Krzysztof Kozlowski писал(а) 17.09.2023 12:58:
> On 16/09/2023 15:57, Nikita Travkin wrote:
>> PM8916 (and probably some other similar pmics) have hardware blocks for
>> battery monitoring and charging. Add patterns for respecive nodes so the
> 
> typo: respective
> 

Oops, will fix if we get to v2.

>> dt for those blocks can be validated properly.
>>
>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>> ---
>> Schemas for those devices were added in [1].
> 
> "Dependency"
> 

You are right, will try to word it better next time.

>>
>> [1] https://lore.kernel.org/r/20230915-pm8916-bms-lbc-v3-0-f30881e951a0@trvn.ru
>> ---
>>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> index 9f03436b1cdc..8bcd76748faa 100644
>> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> @@ -133,9 +133,15 @@ patternProperties:
>>      type: object
>>      $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
>>
>> +  "^battery@[0-9a-f]+$":
>> +    type: object
>> +    oneOf:
>> +      - $ref: /schemas/power/supply/qcom,pm8916-bms-vm.yaml#
> 
> That's just ref, so no need for oneOf... unless you already think this
> will grow with different schemas like the charger below?
> 

Yes, I think some other PMICs have different battery/fuel-gauge
blocks too so I'd like to have some room for expansion here.

Thanks for the review!
Nikita

>> +
>>    "^charger@[0-9a-f]+$":
>>      type: object
>>      oneOf:
>> +      - $ref: /schemas/power/supply/qcom,pm8916-lbc.yaml#
>>        - $ref: /schemas/power/supply/qcom,pm8941-charger.yaml#
>>        - $ref: /schemas/power/supply/qcom,pm8941-coincell.yaml#
>>        - $ref: /schemas/power/supply/qcom,pmi8998-charger.yaml#
>>
> 
> Best regards,
> Krzysztof

