Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3400D750768
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231932AbjGLMDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbjGLMDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:03:04 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF435E4D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:03:02 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9922d6f003cso883112766b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163381; x=1691755381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9msiQhE0J2p91vHOA4ZOCDcv/a0GBjpu+sTeuRVydw=;
        b=cXsyAbo+BPyMLEl5aWd0tgYnpgsKnblSdATvOzyhjigswuH/EaO1l8LeXOQmuuN3KI
         ndwFf631jU6/x3Am/LAgubiXLCwbOYVcdVWZH1+NF0Tf3cZfY7SeAu1mI6OHOk2KlUoc
         oTOdmAUcl+La8mJhoRdA+o5qk67coofVaGoEWzeWyAfKk54DuLyMeW++MLxr4pZj9aXz
         gzS1OTVySo+GvEAB8MzJXTE8/0kfOybinr8atZWvRZ5hyEb2/Z10rq/FCxXlmAeT07x+
         T/8mUugctYfVnWKHgJO8HNkpdsepFYImoU7d77lnosAMV72FWyCKZk5HB+WHy58M5k8k
         v+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163381; x=1691755381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9msiQhE0J2p91vHOA4ZOCDcv/a0GBjpu+sTeuRVydw=;
        b=dYH3arpuTeHRMAkyPUa9axCDJD5YP96kStZT+DZ/Jiels8zdIDbUQnh+1HR0ah4hxC
         b75hniJf+/71oB4CgZaCe7ME1VifiHXGVqZBtVHuKqn3s1tpg8Nm25owLMVKyqcSvPxa
         VIYX9YbRhVHgmyMSf9wheGcVMtDHUOTmlPNjKHpdUMwu9UJZTv/teO/h7SHL870DJHzp
         vzn2/YXAph6jlNo5vt9CnrCyYH8VfhRA2aBR4A3V6eTVy+2E7GbTVEpeHntg/CYXU2vB
         jW9iqpgzSOKQJmsd2DqvizaPT4cGnGCmrwlA0yb4QCVBW5PNmXQj/qpWsZ48je3KKoGV
         Of7w==
X-Gm-Message-State: ABy/qLZQikYAXxzqIke9HbfkV8Fw59xoQl+DYHmhvePBpIBaXt8OUkow
        kaAfV257cN5g/TqaA1io2iZy773nhjHOeeCWZIM=
X-Google-Smtp-Source: APBJJlHzdhJk4indcnSb7Y9CQRJsIol7Y1AeSF5J4g7RpsKNs/GqdicRCCJ2FZRXBWmLAzS7nZse2Q==
X-Received: by 2002:a17:906:7a0b:b0:993:ff93:cf8f with SMTP id d11-20020a1709067a0b00b00993ff93cf8fmr10916036ejo.8.1689163381364;
        Wed, 12 Jul 2023 05:03:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id q3-20020a1709066b0300b0099290e2c163sm2441851ejr.204.2023.07.12.05.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 05:03:00 -0700 (PDT)
Message-ID: <08da796b-f1a9-19dc-cde6-67414927d2a6@linaro.org>
Date:   Wed, 12 Jul 2023 14:02:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, catalin.marinas@arm.com,
        will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
        geert+renesas@glider.be, neil.armstrong@linaro.org,
        nfraprado@collabora.com, broonie@kernel.org, rafal@milecki.pl,
        quic_srichara@quicinc.com, quic_varada@quicinc.org,
        quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <23b259b72c8f6faad99f09c37ac8b7b6b027cea1.1689065318.git.quic_varada@quicinc.com>
 <ddd97ecd-bf4b-85c8-1f0b-8ca175799076@linaro.org>
 <20230712112815.GA21004@varda-linux.qualcomm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712112815.GA21004@varda-linux.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 13:28, Varadarajan Narayanan wrote:
>>> +
>>> +		usb2: usb2@8a00000 {
>>
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst or
>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>> for instructions).
> 
> 'make dtbs_check' passed. The '2' in 'usb2' is to indicate USB v2.
> There is one more USB v3 controller in this SoC. Hence, to
> differentiate between the two used 'usb2'.
> 
> Hope that is ok.

Nope, unfortunately it is not.

Best regards,
Krzysztof

