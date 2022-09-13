Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB56B5B6EA0
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 15:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231750AbiIMNxR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 09:53:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiIMNxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 09:53:16 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A14C4F1B4
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 06:53:15 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l8so4144856wmi.2
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 06:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=M2rABuGZggx4pjyzmDjRVaFQFP+7FJbowmRjgj87iSw=;
        b=zyjvbg8UrVYj3whNcswu+RTlb1TtQ5SDzBTOhHT+QC4LXsQXy2fXXuf0OOJ3YPZED0
         EgIt6mpb8iL5vnOTkK5G8x6MG4KBpaPmPGbFISBuReQ0iZ+F0WenMuTssFvv7c2Mep2y
         2IJ2c06gsLAznE55k70yhfk2QOmhqcIMGWLOiupI1N4rO49RPy+Mb+Y2TAje6WNgFREU
         914RA5qAFvKB4uafnjZ2UtsjQDOeJxV7zyVlNQrn0jsaX2cza4O2KN8dU2aPFifL9LlN
         L1E4QnL+90PQudUqd11/f4PoEDHe4aHoFt1dM5i7KaBCevKyWtK1Z2QY/K9jCsAs1BLl
         DVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=M2rABuGZggx4pjyzmDjRVaFQFP+7FJbowmRjgj87iSw=;
        b=trkU7Lw+m6M48GO7HvLtObMBA8w+k2ejkB9uBolFlZszdHsBLBjZ/alU7HRrqTf3Ac
         Lg2D72g92B0QkW+8Cv9z6YWuhkbiMlGpJQhvut0xgS9B6gTPnlq5mNVbN0gTOzGxB7PX
         m/CiY0GTFPtBV6e4N3wriRjLcrWV4jnOlLNlaWfBNdbMrI6jqpuLAesdxxdE2rEIuDe3
         KcMOqhveR06GjrmsDan14b5gB7mWFuXuyf+aMP6HwkTFzF1HnbMJMTZuSaLh6ZboBuTj
         rfZ+IgjkdwkIo/U1JbtxOHb3iQ1ds6yGwIKD/+QET2iVhlFKhqp9n6NzYvVOO39BWVjD
         F8YA==
X-Gm-Message-State: ACgBeo1yiZbMNFerrRTf1mZF+mej3wii8XEDGz0AHZ6OL+F7AGKnmMOR
        oD3zrJSrid1+3zE1PTyooxgMpA==
X-Google-Smtp-Source: AA6agR6DIzBvdH+m87mUEBL7Jsu5BsTXYFwJ6jEyc9QFGFSX2PJYeuM0H/uKxN3rgOdCJuPos6/mIQ==
X-Received: by 2002:a05:600c:5d1:b0:3b4:68a4:290e with SMTP id p17-20020a05600c05d100b003b468a4290emr2476548wmd.55.1663077194151;
        Tue, 13 Sep 2022 06:53:14 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.67])
        by smtp.gmail.com with ESMTPSA id k3-20020adff5c3000000b00228cd9f6349sm10660460wrp.106.2022.09.13.06.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 06:53:13 -0700 (PDT)
Message-ID: <6b2b6efa-fbb1-55c5-3c5c-a8a7f63ab8af@linaro.org>
Date:   Tue, 13 Sep 2022 15:53:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [EXT] Re: [PATCH v6 5/5] arm64: dts: freescale: add support for
 i.MX8DXL EVK board
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220822175245.222691-1-shenwei.wang@nxp.com>
 <20220822175245.222691-6-shenwei.wang@nxp.com>
 <20220903034819.GF1728671@dragon>
 <PAXPR04MB9185D243324279DD80C371DB897E9@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <20220912081649.GR1728671@dragon>
 <PAXPR04MB9185F52BA6FEC47E6412EB3C89449@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <20220913020708.GE1728671@dragon>
 <PAXPR04MB91850653F39FA2E2098435EA89479@PAXPR04MB9185.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB91850653F39FA2E2098435EA89479@PAXPR04MB9185.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 14:39, Shenwei Wang wrote:
>>
>> Well, we are talking about the correctness of DT (hardware description), not
>> how kernel driver works with DT.
>>
> 
> So the correct syntax here is: if enable-active-high is used, the flag of gpio phandle should also be configured as "ACTIVE_HIGH". Otherwise, if no enable-active-high, the GPIO flag should be "ACTIVE_LOW".  Is my understanding correct?

Yes.


Best regards,
Krzysztof
