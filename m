Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8404B6F42FD
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 13:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233858AbjEBLrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 07:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233851AbjEBLrQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 07:47:16 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 738A049E7
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 04:47:15 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f00d3f98deso27719618e87.0
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 04:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683028034; x=1685620034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YMFZVMY/cu+2q3pwphXCz2Hv1BTllYa10TUPOv2th4Q=;
        b=DtApqktBGrCXROVi1eeOvyC+FsRvdn8fud2EnF3o0LzimYuFkW/JRvpi6Att3RnrSv
         qxLkSRr+puTVke9EU5VzvmJtF+j25oNEouI6ruoMX3TkoG8WA5+Jq378UKza4CJRr0iG
         q3T28dVyyYcx4RcUHMSN9CYggtQaPOyrrYgoOYc5vWtUXmm8RT0qtgOV6OCg34gnEl8G
         m28zH0HeMEfVfWZ9J2kq3dYq2BI1NmQwUJnElq/XLMjb6pa5iZ94yV6qugA67OYdtCoi
         IFON/WAg7NKMXsa2QizJoEkc1JYAqvkWC2xA987oo7ndvKM3/4Zf7cTXFhpQiEgc8JtZ
         aaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683028034; x=1685620034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YMFZVMY/cu+2q3pwphXCz2Hv1BTllYa10TUPOv2th4Q=;
        b=Jb3YzC/MpSX0ihwpkOWMHT0nm9iJAA+K+MewJ+F0HVHRfJM4VSEoaM0q1/Elo+oTf1
         kyfHRs9z8LNeSsLZW3WAa5Lvlu3fI+C4hThcX+En2YVCxIFpicvfZlPFJLG3KXKdGcAi
         AJ9uH9uljgfCCHBVL41MfbLNh1sxHe4Pzgk5wiuCYJIp6R1Gd7OueMlbhAsyxc4Y2iLz
         wCDtKJCWP8wUeaj8AQlwoKVGmVZ8xD2WUysxYi+QNqRYAuJUQKp1tb2t2y09c4HolTpr
         D5BcKzY0LtV4sJRox7DqQ1+eyzieZCruEwnuAjuS9+eP0/lRqQ6KP6Tv8Z2df7kLS69D
         819Q==
X-Gm-Message-State: AC+VfDyKU4M4YvnrqfeUibeNshQgFq9iL+OAxzqQ1+6WNwXVvZxZO3HR
        6ASr/Vz46LfSFhkW/zQOysJmvZ1XvG+JvSNF4jI=
X-Google-Smtp-Source: ACHHUZ7L4wRzjAe3JKgAGOEDN+aYBVVOi1teIYI0dp+R+bRL6BEng+XS3iGjRgWwYtTiZ+J3SHoNxw==
X-Received: by 2002:a05:6512:401b:b0:4eb:41ac:e33 with SMTP id br27-20020a056512401b00b004eb41ac0e33mr5603278lfb.19.1683028033660;
        Tue, 02 May 2023 04:47:13 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id u11-20020ac251cb000000b004edafe3f8dbsm5377248lfm.11.2023.05.02.04.47.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:47:13 -0700 (PDT)
Message-ID: <44c26ca6-12b3-74ad-70de-1dc2d4f42dca@linaro.org>
Date:   Tue, 2 May 2023 13:47:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v6 12/13] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM
 usb-role-switching for usb_1
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, luca.weiss@fairphone.com,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
 <20230501121111.1058190-13-bryan.odonoghue@linaro.org>
 <109dc9fe-5ca7-1a98-3222-8c2297f4e8ce@linaro.org>
 <b4bfe2f6-7ea3-fca5-9dc6-12270b3bbc42@linaro.org>
 <41581143-2caa-bac1-479c-c8feaf2de1b9@linaro.org>
 <378d0ec8-5ce1-57d3-eccf-8e053d647f47@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <378d0ec8-5ce1-57d3-eccf-8e053d647f47@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2.05.2023 13:16, Bryan O'Donoghue wrote:
> On 02/05/2023 12:13, Konrad Dybcio wrote:
>>
>>
>> On 2.05.2023 13:03, Bryan O'Donoghue wrote:
>>> On 02/05/2023 12:00, Konrad Dybcio wrote:
>>>>> +            #address-cells = <1>;
>>>>> +            #size-cells = <0>;
>>>>> +
>>>>> +            port@0 {
>>>>> +                reg = <0>;
>>>>> +                pm8150b_role_switch_out: endpoint {
>>>> Similarly to the QMPPHY, the port definition can be moved to
>>>> the common node in the SoC DTSI
>>>
>>> But then the connector would have to be defined in the SoC dtsi and not all derivatives of SoC can be assumed to have a usb-c-connector.
>> Not quite!
>>
>> You can define an empty endpoint (like we do with DSI<->panel ones) and
>> fill it in on the device side.
> 
> Sorry you're saying to define as an example the port here in the dtsi
> 
> &usb_1_dwc3 {
>         dr_mode = "otg";
>         usb-role-switch;

===
>         port {
>                 dwc3_role_switch_in: endpoint {
>                         remote-endpoint = <&pm8150b_role_switch_out>;
>                 };
>         };
===

this part (minus remote-endpoint) would go to SoC dtsi

remote-endpoint would be assigned on a per-device basis

> };
> 
> and to leave the reciprocal definition in the connector to the dts ?
> 
> &pm8150b_typec {
> 

====
>         connector {
>                 compatible = "usb-c-connector";
>                 ports {
>                         #address-cells = <1>;
>                         #size-cells = <0>;
> 
>                         port@0 {
>                                 reg = <0>;
>                                 pm8150b_role_switch_out: endpoint {
>                                         remote-endpoint = <&dwc3_role_switch_in>;
>                                 };
>                         };
====

this part (minus remote-endpoint) would go to pm8150b.dtsi

remote-endpoint would be assigned (or left empty) on a per-device basis

Konrad
> 
