Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2EA507C0C
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 23:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238162AbiDSVqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 17:46:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235831AbiDSVqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 17:46:20 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C87DF3B3D1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:43:36 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id m14so24170802wrb.6
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=D9kz5bTKsOtsNk7ZHGDsJYS7kG91Dz2LiBUoXIKEf88=;
        b=OOFIe4pmupz5svTjChlnsHezzeSbjS+fW7b0NMfrdCuqJzR/MBXUx/2eTKD1kRN/1j
         P9ix/pboXCTUw55i5yz3FM55HL1zH1YldEyki0zql1jU7G8vMMJl6NJ/cDf67NuAMmUO
         BqymQ+y2VbodRH4zkVpZ21Dvl+c0W24lCH67Dv0qnCjw3TTmG1+zSAg2Wq2gVKwZzrsq
         UHA/YHmegLlu1LRTJYggM/RIDG32FN9aF3NWpOXnFvvXLTOHKXGb6bU0BzGm2mQzRXL3
         H4mN2R5TeMHPfKX7gT5H02jD580t49xGBI7/wXtujOgZqzRN1/wgA7ls+3pCN84obRkv
         Q2Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=D9kz5bTKsOtsNk7ZHGDsJYS7kG91Dz2LiBUoXIKEf88=;
        b=Ly0vhylmomyicZ6cEpfcGoaBlsKhbKt4fVG+j2MsYkX0pdyjZfh+3mmkF2oEcQYRwZ
         0An7a38APmu8CGCpHEDenKls/q9zI9+hjPHOy8dOHE8WXVkn/SLAZNCOeRI0I3wcNhbl
         eQC5fGhr1TxukYdBdqIA5EYgvh2EgfxQcfe2v9cWOe/Wkisze0XVbGjX4m5uejU1rzeb
         3uZWBcpPHhabNV1aCF8KGOcVoXUDhmAsrKm4BW3LjVITfNNm7o/uQrQa5hl0RL7x7ejI
         YZ20d9Ysjydn7rDi5YalXcFjBB03CbspBckTTuD0RYy7jDxkybIOomiOinpUQHt4u1qA
         eWZQ==
X-Gm-Message-State: AOAM530bRk/gAxSQJ9+Bt0B8mA1owYAYlx7ykrYxjN/4tuZNZLyEzI9W
        J+G+/2GHya4Wn4Zb8azg6QC4MA==
X-Google-Smtp-Source: ABdhPJytIS7GvSBe69c7CX14ko/FocvtG1O9VBznYQADXjSND+sWrB7JlNYIYpOcqs1L0RR7OcwwqQ==
X-Received: by 2002:a5d:6204:0:b0:20a:99bb:54bc with SMTP id y4-20020a5d6204000000b0020a99bb54bcmr7968989wru.225.1650404615361;
        Tue, 19 Apr 2022 14:43:35 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id b14-20020a7bc24e000000b003899c8053e1sm18872996wmj.41.2022.04.19.14.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 14:43:34 -0700 (PDT)
Message-ID: <3a5b24b9-a63f-ec24-e0b0-3a44e9583207@linaro.org>
Date:   Tue, 19 Apr 2022 22:43:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v1 3/4] arm64: dts: Add aqp8039-t2 board
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org,
        jun.nie@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com,
        Leo Yan <leo.yan@linaro.org>
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-4-bryan.odonoghue@linaro.org>
 <Yl8La/pFbQJNUQTy@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Yl8La/pFbQJNUQTy@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 20:20, Stephan Gerhold wrote:
> On Tue, Apr 19, 2022 at 02:09:02AM +0100, Bryan O'Donoghue wrote:
>> +&otg {
>> +	status = "okay";
>> +	usb-role-switch;
>> +
>> +	pinctrl-names = "default", "host", "device";
>> +	pinctrl-0 = <&pinctrl_otg_default>;
>> +	pinctrl-1 = <&pinctrl_otg_host>;
>> +	pinctrl-2 = <&pinctrl_otg_device>;
>> +	pin-switch-delay-us = <100000>;
>> +
>> +	ulpi {
>> +		usb_hs_phy: phy {
>> +			qcom,enable-vbus-pullup;
> 
> Hm, what handles the USB detection on this port? The tps6598x?

tps yes

> Can it provide an extcon so that you don't need to keep the USB PHY
> powered permanently?

Per my understanding new extcon is verboten

This particular hardware has an internal USB hub intermediating to 
switch-in internal USB peripherals when disconnected from the external 
type-c port so, we actually don't want to switch off the PHY.

> 
>> + [...]
>> +&pronto {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&wcnss_pin_a &wcnss_pin_antennae>;
>> +	status = "okay";
>> +
>> +	iris {
>> +		compatible = "qcom,wcn3680";
>> +	};
>> +
>> +	smd-edge {
>> +		wcnss {
>> +			bt {
>> +				local-bd-address = [ 55 44 33 22 11 00 ];
> 
> Is this really needed?
> 
> The DB410c LK and U-Boot port (and also lk2nd) automatically generate a
> WiFi/BT address based on the eMMC serial number. That's probably a
> better solution than a fixed MAC address specified here.

Ah yes I remember seeing the strings being populated.
Thanks, I'll zap this.

---
bod
