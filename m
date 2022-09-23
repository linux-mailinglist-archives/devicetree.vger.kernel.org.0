Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8414D5E76C7
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbiIWJWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:22:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbiIWJWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:22:47 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C46FAE1083
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:22:46 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id j24so13444920lja.4
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=O/2EAFUkfqdwXtO9Hs6dRCfXxow646ns38C+TL7yTok=;
        b=dnXef/D8SvySIgEI8W0QDXiAHGYQ10twKtCe7aVTPK5iWiFEbp4wsJHzx308pqQ/O8
         lrYo7I5jmandDjdKBRewap8rH06tYxIolYeiPFDGioA6/DoxlsoptXWmjpqPLq8aGXip
         5U4LIGMF7psE6Vl4aiEpEiFvmWER659F94dKnMy4sUS8HckyMYxFAgz5HCjXg7DcTl2h
         xrLNUJqcGR4v45MHYDgrUIvPsyLs5zqbXFO6hKPOfhy6vsQwRA0MTNWM0QEy99LxxM2X
         n6AjzsiwYE0cEOpAZtUQArjQZ8v4M/uKDSajRbiHrijACIYj3pC+9vmDasZoxBqrCjQW
         1X4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=O/2EAFUkfqdwXtO9Hs6dRCfXxow646ns38C+TL7yTok=;
        b=hgIQKevKG1Tsx2a93/4UMt0Oa47s0qHUaxtrfD1bjE4Bp4uMIAb2qDDf3JxL1XFIMw
         M2lkkE9jjV88QafhqkPt75Snk2zDfVkIJ1lgeb69R/T0Bxb+W/z/INlM1WYMl7/ajMrZ
         iFzegL7BQRu+OsFe78r1PCuI2KsA1WybBV9R580/nma+n1/r1h9pP6jXgo1YMkh9DPAJ
         dP5QMpPfUD4ynZWhuTaveWy9K4iCXdiAdi3FitUxbo1Nz5wNtP9WTT2sUa/9DhcIMwOk
         REWQQ8lGRyqArEsqIxxH2XgF7/KM8A1oU6vnxNRJTOJJzX2f1tGL9PNxVeJOxZ0ani/H
         KbSg==
X-Gm-Message-State: ACrzQf06A/xUmahGRAzbwO9qXNy/ZNiWXtQLY/CA2cz7HrVIVfVDzCig
        vdFJKlwBxsOQLx8bL94k8gTmpg==
X-Google-Smtp-Source: AMsMyM5Od45aJ/qo93OLGtKA5x6ota51o2BSEgi/m/GNnX6yl/UAK1V22xLj1x8tqG5moMlCxWfyqw==
X-Received: by 2002:a2e:a448:0:b0:262:f7c4:31ad with SMTP id v8-20020a2ea448000000b00262f7c431admr2452226ljn.283.1663924965112;
        Fri, 23 Sep 2022 02:22:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id n21-20020a05651203f500b00494a8fecacesm1355243lfq.192.2022.09.23.02.22.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 02:22:44 -0700 (PDT)
Message-ID: <9134eaa4-dab3-75ec-f0cc-8b77e5a95e6e@linaro.org>
Date:   Fri, 23 Sep 2022 11:22:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Recall: [PATCH] dt-bindings: usb: dwc3: Add interrupt-names to
 include hibernation interrupt
Content-Language: en-US
To:     "Mehta, Piyush" <piyush.mehta@amd.com>,
        "Simek, Michal" <michal.simek@amd.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "balbi@kernel.org" <balbi@kernel.org>
Cc:     "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Paladugu, Siva Durga Prasad" <siva.durga.prasad.paladugu@amd.com>,
        Manish Narani <manish.narani@xilinx.com>
References: <MN2PR12MB4333E69C6D63367FC24B1B1E88519@MN2PR12MB4333.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MN2PR12MB4333E69C6D63367FC24B1B1E88519@MN2PR12MB4333.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 06:36, Mehta, Piyush wrote:
> Mehta, Piyush would like to recall the message, "[PATCH] dt-bindings: usb: dwc3: Add interrupt-names to include hibernation interrupt".

Sorry, this does not work in public discussions and public mailing lists. :)

Best regards,
Krzysztof

