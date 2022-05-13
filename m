Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D85E7525E8B
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378423AbiEMInv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:43:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378471AbiEMInu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:43:50 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20D4283A0F
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:43:49 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id a5so6654229wrp.7
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=1z5UASj4DoLDyPa67Jzi84KEnjz8sgXey4TyaOWwNlo=;
        b=JGWEYKtqu95JsZVkmmGlbrkw7tyPMkfuNMGsQV4cXQ2Tv4QUImajIvsmCCAgbEcGf+
         7UfnP59g4O/cUxfUtDGemSL6pIJymrhLDWP8JvBj9G84IfqVAVgMUpiN5BdEPqpUdukN
         9N6TxALYTEYq1m1EuawMM5CsFK6DHTlN38VMNWVEmVbasEqM18avf1jzAbhJhMC2ajiq
         PfZRzqUy76akS/uSFjRi8CJ8SiCIqabF63NN67AGSXIYE3HHNDH4XoE1wmqJkaDEu4ql
         lF2O8EsU421ztQ3qxPSI+yuyDXFTVLAdQBZGhb0JIKOON1a+Uxu2qmJQgsWF6qPbaWPh
         FbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1z5UASj4DoLDyPa67Jzi84KEnjz8sgXey4TyaOWwNlo=;
        b=s4G4jRsK9PdlLdyUeMyxOjODnerA3OKHxFZbYWMAnlGJg0EeI6fY4hO/XfEuEElSJ7
         tEoTw/RgYYmCaSh4efSmhWj6MS5Ea7PqH7ey/oJpsYN1PCRE0n1p0e9eTKOlyerjWPJh
         wO1g7yq+tIfHDg4GadFRf01UusDkmyCOfXrmJELJ/tMnwW6IX0lTKV232psXZOGJspJk
         eGtDuj5j5CcIcAXy293bcqf9aPkdYb8mx0MBF1/7120ZwMwqK8gwIg1hIUIhHsbRxwAW
         zb90D1x4FwGx5sCOD068tyKXYMnAg0v6yfzC5V5btZUfhWeiW4lKoIT8BmUpfmbSANsY
         PgZg==
X-Gm-Message-State: AOAM531L/3CvArkaISb2YUgWDX3Z8bFAuXlYy7srjiw+YIVKXi7uCXRX
        8TTXD4Cyf8L8mJPf0ODMijDdiw==
X-Google-Smtp-Source: ABdhPJyt+cT9n69L1AaUW/LfOfepmTtLwJdfP1FZKvSXaoRewb+qvMQ+kOc15S84hrKieG3qgOu/8w==
X-Received: by 2002:a05:6000:3c9:b0:20c:4e4e:863f with SMTP id b9-20020a05600003c900b0020c4e4e863fmr2940964wrg.4.1652431428336;
        Fri, 13 May 2022 01:43:48 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p26-20020adfa21a000000b0020c61af5e1fsm1537460wra.51.2022.05.13.01.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:43:47 -0700 (PDT)
Message-ID: <f5c2efb7-35f6-8c8e-d881-b144d15a299b@linaro.org>
Date:   Fri, 13 May 2022 10:43:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 06/11] arm64: dts: marvell: uDPU: align LED-s with
 bindings
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        kostap@marvell.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220512124905.49979-1-robert.marko@sartura.hr>
 <20220512124905.49979-6-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512124905.49979-6-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 14:49, Robert Marko wrote:
> According to bindings they LED-s should be prefixed with "led" in this
> use case, so fix accordingly.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
