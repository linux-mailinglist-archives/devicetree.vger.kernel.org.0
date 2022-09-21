Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B95675BF7B4
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiIUH3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiIUH3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:29:03 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA1A5832E8
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:29:02 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id x29so5915552ljq.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=yY/IFhrfMP3PYUeMjNpUkQ+TQjG9qGWlCwabc5JfRos=;
        b=tQ7tLrT75Su+7IT++7aoA6E19SqXIc7kiIsIFAEX3Jgk+bqyAnT0ZUByWxhA3qSv20
         E6PkR2eN39gvd7gFqfKk5TcTo/umrszdOUND/8vFHp0VEMp4p1M7SO5yhWhfvfpwUeAm
         MnnSwX4mmpgVi2kQolBp0CxoG+DUvRkf/T/ZIOH4M3QlE1X94qQagiL8oTUgjSpfy5YR
         7m1LKlBg8FA5TS0rbXizAy/kqzN7W97ZPLNa5XBN4AHUunmcxrqTw9BS1HwQzFzad38Z
         +5BE71uVG5cpoE5kJo1GrqkU8apcwKKXcmg1LeTYu1GncUD45mC0q2JjU9kAuH/405TK
         eTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=yY/IFhrfMP3PYUeMjNpUkQ+TQjG9qGWlCwabc5JfRos=;
        b=fCB33/eDpbS6DL0U3zVq0GM+Xu5V+rXYA7BCHPxN/rdHpl76FmFxua94TqFXQgFhy1
         tfjQcUOgV+vLGJ6S3u9FWRgdulcFUiPEG2TqgwsE6J/Gqg4FOXVsiaXvpAQf4/AfpYIy
         S8th2xDwbu/eH8tPRlVmvPxBNI4vVOso4qTsakGvQPiqPWX00d9vAGxa2ywxMm4qIK61
         U15pT2cVbOJrsjLXGvcciwomVcAjIIKa+N4733e+BuuNuKClmPUlgbZ9eTirORUJ0/Un
         dbCTi0NdG2gq9WGEbKw5r/HB/cePoXe2RIxCrNjjFdT2LUl60DLa3Gig1crtWjdcrOij
         JzdA==
X-Gm-Message-State: ACrzQf3h0hHFOYk4aB9jgfJX1xWOtVgk2cTVtlYuMINANzITx+EkrCYI
        XfY+4bzEqQFx+TaimZ/Ec8G/KFVfDei4AA==
X-Google-Smtp-Source: AMsMyM56hulvnbzuEpSNRZFemu1/rmqVIJFj/7BYYMBxul09fFz+JgAjbx2P1u7aIJDXpY2d34jSUA==
X-Received: by 2002:a2e:a4b1:0:b0:26c:521:76b5 with SMTP id g17-20020a2ea4b1000000b0026c052176b5mr8366810ljm.258.1663745341162;
        Wed, 21 Sep 2022 00:29:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q23-20020a056512211700b0048a9b197863sm310441lfr.235.2022.09.21.00.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:29:00 -0700 (PDT)
Message-ID: <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org>
Date:   Wed, 21 Sep 2022 09:29:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3] dt-bindings: spi: migrate mt7621 text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
References: <20220921072817.611223-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921072817.611223-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 09:28, Sergio Paracuellos wrote:
> SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> There are some additions to the binding that were not in the original
> file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> properly match both dts nodes in tree we need to add to the schema
> 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> 'reset-names' use 'spi' as string so maintain that as const in
> the schema.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v3:
> - Add Krzysztof's Reviewed-by tag.

There's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

Best regards,
Krzysztof
