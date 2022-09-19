Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED9455BCA14
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 12:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbiISK4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 06:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbiISKz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 06:55:57 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22071260F
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:51:29 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a2so22251083lfb.6
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AkEi3pHo+3UH7S0sm9lm2XHAlWazcFbhmb/CmHq7yAk=;
        b=ZOrL8heBlKSro2uNj4YDEpZfqD8BrtNVgDW+EJitcs0zbGbehPq433EZjPTSPBDVK5
         plLsjx5hk+CAszG5JMoiG3dj+mKNqHyVdeN8t7oQwdSAfYLuLgsjLzDIj6769dl3UNlp
         lFQ3DHp2inXhckDbrYWRyMKLKr40J2pvt69zf4+/vPUNo+yndXQV9YnSRLtyZXI1d8dk
         DC2HmNxnzbipoaxyhh27LX1y8u0IFUxkY+aDTNcpNCRg9HGxFL1tqHv0J6uli2nNvW52
         g3TD5ScAz5VvMyCrlvaFd5Rh45RUmFMs7TlYMp3W6UipGPaXnJRFMxSjtItdOdityM7F
         wioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AkEi3pHo+3UH7S0sm9lm2XHAlWazcFbhmb/CmHq7yAk=;
        b=EIMqVtbdDvoxIrgAvzB2jxxBBd1GDdpPHqaCEoK3GeUz1hhSGl1HRxfqjqHejpWN9m
         hzFG0fBOsO2fXKBm4lEIyydbB+DPmuye56nhpn6fUTGhyfqjs5GNYu4mtU3hKom7LcW7
         BMqMzK2+yXtiHJaJyzGLElkHM+m/sVeQds0W2vuAdzaVvD0Ae2hd06/Zvjk3PtyFaDOe
         Ii+ONWtJpsFu6fRnguDd1EqUu2MI5YKv4IRfjzvv+KpytjpiBDRG+l1vQ/BOg4bPq/Sx
         N2o6PgjfWCfsoLmo6OTLKTpS/zSpjpGiiMT/FEPL3j7d5aVJ0hnPt18s+fKo/uQ+J+Fk
         ymCw==
X-Gm-Message-State: ACrzQf0/XhYuHybA6uUshBEWycILCZSOX+gHcsEYWth8J3JGzYvJELSN
        xsY2yavrWyvEZ3QJEBhluw2T0w==
X-Google-Smtp-Source: AMsMyM5qD5HDJPZdvripHKoz0ZILoGKX7QvsvSM4JYyddVdjaRq5l0gqL9dnfXxaFMalVc/bZF5rUg==
X-Received: by 2002:a05:6512:36c9:b0:49f:6783:a22f with SMTP id e9-20020a05651236c900b0049f6783a22fmr3543780lfs.84.1663584688027;
        Mon, 19 Sep 2022 03:51:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e28-20020a19501c000000b0048cf7e8145asm5120635lfb.117.2022.09.19.03.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 03:51:27 -0700 (PDT)
Message-ID: <c9b654cc-1ec8-0e7c-08f8-584bae9e5fcc@linaro.org>
Date:   Mon, 19 Sep 2022 12:51:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add prefix for
 InnoComm
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Rob Herring <robh@kernel.org>
References: <20220919082434.1184673-1-s.hauer@pengutronix.de>
 <20220919082434.1184673-2-s.hauer@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919082434.1184673-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 10:24, Sascha Hauer wrote:
> This adds a vendor prefix for InnoComm Mobile Technology Corp.,
> see https://www.innocomm.com/.
> 

Use scripts/get_maintainers.pl to CC all maintainers and relevant
mailing lists.

Best regards,
Krzysztof
