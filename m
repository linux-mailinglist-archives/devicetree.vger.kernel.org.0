Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DEB85B01E1
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbiIGKZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:25:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbiIGKZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:25:08 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56F671838D
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:25:01 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id f11so7689795lfa.6
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=fEUqt9+qxUMWX8ZXycy90WtW/syx1Y2If6HQeNXBw3M=;
        b=oZxiH+wzBb4W/26mmXuGLuepWKl7gUHnD82V8shRrB/qT/iV2ygQGBcLaVcsSo2wkm
         awmbgrNlcQNeYR4lucqKP/fbV1V9NiISnLfEnq1SjCyknOOFZ7lmtUZs8g2q2fif5FvP
         gZcfe6luQ0aUSsjWgAs3UpHaDh5mabxY0VtP/sjnzyT3Pki0LQoZ6mGDITzy52MGUHOj
         Ei+bT5XCT+UwDe/sZ5ag0VL+1zl7YQZEiw8FEjretfO3bSaUiV0tGbxM4L5VvFvaIgJH
         qo4dgG0NleLhcRBC16OvZkXIgYjWKqemJYJWCQ/o5/sV/7+Jv/+I/eumGhjzGY/MfUSP
         Xr3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=fEUqt9+qxUMWX8ZXycy90WtW/syx1Y2If6HQeNXBw3M=;
        b=mQmBAulkUdM0sx7okRj7U3ZGEp5+x7mrh5/jQykWxfHgtN9aMLnZIIFNNjXT/eKVo6
         VzMjCKcK/+wWk6TMsrZUCproQhfRvANScjR2JwHAKIWRL/L2pC/iWmX9WrMLn4ct+Hyi
         tnLL4BRfjowoxX+sAge3I7eW32CgfaNOQ9mOCRgmCvb8pboqVP8oGCSmNdwTtIrIA7bZ
         VJMG8zsbLCePdajUh5Fz1koxGP4/o9Jxcz5WBX6IOvofnB+HvnSYbTJYO2bfGBB0bGJ3
         vnjdD/6f1z27SH1Y9RsNYW8VPow314uqJkbFHu2iSjhROQHci7gX7pBrNpRAMS0T2tuS
         Vh2g==
X-Gm-Message-State: ACgBeo1jFVdD5+GrwwzK/4Q4W53oY3quN0Cu7hCMuA7PqCC/GXZse64+
        7ddjD3p69YFJZz+D8U4aS/838A==
X-Google-Smtp-Source: AA6agR6LtW2cVXdK9UY9CfzEJFLOaWhbSandN3K2DvIbIOcseMAC1gjJtA0vqrQGUWJcce/Fs82BnQ==
X-Received: by 2002:a05:6512:ac1:b0:491:571c:3ef7 with SMTP id n1-20020a0565120ac100b00491571c3ef7mr875597lfu.176.1662546300226;
        Wed, 07 Sep 2022 03:25:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s26-20020a05651c201a00b0026a999966bbsm1112677ljo.24.2022.09.07.03.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 03:24:59 -0700 (PDT)
Message-ID: <51d57c7d-18ea-78e0-cb6a-e84181e36ad3@linaro.org>
Date:   Wed, 7 Sep 2022 12:24:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: spi-nor: Add reset-gpios
 property
Content-Language: en-US
To:     "Potthuri, Sai Krishna" <sai.krishna.potthuri@amd.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "saikrishna12468@gmail.com" <saikrishna12468@gmail.com>,
        "git (AMD-Xilinx)" <git@amd.com>
References: <20220901072914.30205-1-sai.krishna.potthuri@amd.com>
 <20220901072914.30205-2-sai.krishna.potthuri@amd.com>
 <6b06f88e-128d-7ce6-b97b-b5cacfc4834d@linaro.org>
 <BY5PR12MB4258128603AA297DD8FAB168DB7B9@BY5PR12MB4258.namprd12.prod.outlook.com>
 <83444851-14ef-b293-6581-1307331fb1c4@linaro.org>
 <BY5PR12MB425896652F8056EAD47E1042DB419@BY5PR12MB4258.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB425896652F8056EAD47E1042DB419@BY5PR12MB4258.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 11:49, Potthuri, Sai Krishna wrote:
>>>>>
>>>>> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
>>>>> ---
>>>>
>>>> You still miss the user (DTS) of this change...
>>> Do you mean to have this property in example DTS in this yaml?
>>
>> No, I want to see in-tree DTS using it.
> As Michal Simek talked to you about this over IRC, as of now we don’t have
> a DTS in the mainline tree for Xilinx Versal platform but we have a plan to do it.
> For time being i will add this property in the example dts in this yaml file.

Sure, sounds good.


Best regards,
Krzysztof
