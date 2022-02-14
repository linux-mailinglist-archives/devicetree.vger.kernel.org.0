Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 653274B430C
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 08:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238272AbiBNHnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 02:43:41 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237347AbiBNHnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 02:43:40 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F9C59A6B
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 23:43:33 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7DD573F4B4
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 07:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644824611;
        bh=T0bIeMxNGXCGiL/8eKO2/RLoRcyw4GmT+ouhy0fTmBs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=i+THtkolLa4rBv+byzEiZRMFpH5p5m2LBDxtGjEyo95M+Bk9tKzwRsAWhIQ3ZmPPm
         EyYozVN+pK93aaf99g8qkcUl2iGtilDmj2HxKviR339YH7g8wZIOvoshrLgwXMt5dR
         nyxI9U8JNGcNDWz0oX8ruO3awlg03V2/rYZeXXnBG+J/xqyjBhFQjn6O6dz1ije8B1
         UNo3Y1cXgO5xuMUkzasvzd1tlevxtmzP9l1nM/7DcZfwK93QkYVOHR6eLbhB9neiEX
         2cEazw2zpPQxj1Nmm9gOZAoS6ZoLOb+CMjfH/kQytYjbCg3FtOU0bduYRjRUioKMRC
         fD7SnQZjOBnpQ==
Received: by mail-ed1-f71.google.com with SMTP id w3-20020a50c443000000b0040696821132so9677762edf.22
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 23:43:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T0bIeMxNGXCGiL/8eKO2/RLoRcyw4GmT+ouhy0fTmBs=;
        b=TtT8rmW76ZbR+fPRx+Xin6gWmdLQWqSWiCBGhyVsz2Rx/KZSvwIH4JrybEHVM+uTo8
         CAOBS2V9lZPiqRo2swSY7/MaEIuam2yJ6IRNW/8pXFdQQYaNHyl0xHFNYlVwU7WTUrH9
         zvtfGdSY13zgWQnUi3Oe7719p8+9m8COnNtzFl+cIkcqu+d8PdqSg2H/suqxrHe55BLU
         2x/VZ4P4VZwFL2dzTiKpzRSqmb+rwAo02x9eD5D2NyYiyNYRXuwTIBmq3wCW1yzS+jDb
         3cJmMXtW+IpMUVuYjyecYTpr8fLjQWSHQddXJpOxYLW6Jf6IFUc7An8ukjk/mPDPToSc
         yO7Q==
X-Gm-Message-State: AOAM533YkAPsajHqDYxSx5SvARD3o0K7ovCmEgVpHFTrqO1yJuB4sLDv
        qwSATgrfPM3leUWjkORHMokVfoMAdu6I4NpnGAtxAOHrTXVqOEsD0FXlIe5GYerqhZXY96h8jHR
        MlIkyWpUSHokZry73XbPmpE19YPpWj2p2FNu4sRg=
X-Received: by 2002:a05:6402:d41:: with SMTP id ec1mr1446593edb.196.1644824611148;
        Sun, 13 Feb 2022 23:43:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyc/vKIZ0BOCiQ0OwwIz4ikycR88B96nAIDEQIJErhQ+Xur78EBUj0r/3Mlth+iQt3sXBihew==
X-Received: by 2002:a05:6402:d41:: with SMTP id ec1mr1446580edb.196.1644824611012;
        Sun, 13 Feb 2022 23:43:31 -0800 (PST)
Received: from [192.168.0.104] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e27sm2155391ejm.18.2022.02.13.23.43.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Feb 2022 23:43:30 -0800 (PST)
Message-ID: <261f5188-572a-7568-7ee8-d5d128564161@canonical.com>
Date:   Mon, 14 Feb 2022 08:43:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 1/2] dt-bindings: pwm: Document clk based PWM
 controller
Content-Language: en-US
To:     Nikita Travkin <nikita@trvn.ru>, thierry.reding@gmail.com,
        lee.jones@linaro.org
Cc:     u.kleine-koenig@pengutronix.de, robh+dt@kernel.org,
        sboyd@kernel.org, linus.walleij@linaro.org, masneyb@onstation.org,
        sean.anderson@seco.com, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20220212162342.72646-1-nikita@trvn.ru>
 <20220212162342.72646-2-nikita@trvn.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220212162342.72646-2-nikita@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/02/2022 17:23, Nikita Travkin wrote:
> Add YAML devicetree binding for clk based PWM controller
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> --
> Changes in v2:
>  - fix the file name.
> Changes in v4:
>  - Use generic node name in the dt bindings example.
> Changes in v5:
>  - make compatible required
> ---
>  .../devicetree/bindings/pwm/clk-pwm.yaml      | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/clk-pwm.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
