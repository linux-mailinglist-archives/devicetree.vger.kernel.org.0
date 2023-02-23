Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 302886A04F4
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbjBWJeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:34:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234077AbjBWJed (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:34:33 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D827753EE5
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:34:04 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id j2so9943408wrh.9
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yRGvRiQrnJ7Ah069Gjrz9HaQKOK7yK4lBz1abTvHCXo=;
        b=zwRRZ/jZTfvMd3ebQZs9T0mZg7lxzMzGfi3o4bR4gagPAOiWjTptyzl/bMnmxWbFdy
         eRlW3Wt3nLM6h1PGkaDg0PBXV0++MB4LeXA2xUENVaZBtrWmytHT/tT2WvjFGF90QjDd
         SylEnLiCNx9ULEjbOL+tt+Gd2bTtBtA4oUrABHe8HjnRtlIyqjSwo6/7ukjpUzWdSu95
         zixt/IZIHy1oiBpXdeeTYhrDJNy5ZqnnwveZEsK9ys/ez6sR4CPp0filblDIfxBFqHHE
         9BFLkLZ0VmtDUw6cgZWlBWL2BB5UZpVdkx95TNCTO1KzNtSPJbJkCoAsFOXRpJvgARXR
         1qww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yRGvRiQrnJ7Ah069Gjrz9HaQKOK7yK4lBz1abTvHCXo=;
        b=c5pBTuZWFdW+j3WUeTZe4tB1w60bNLv5onFh9w4qQKz/CuITZpaKHO4ykerD8P6W3t
         xcInXK8C0Quy1e5uer71c2TPTk7mOKn2Fc2F6zVNZaKr7FCS9Me53HrUux5EbgK+6WTc
         hRW7DUS7N3Dg/4D0Tg6GX5OwMBwP5rZ0wR/UP1AgJNZnVMRcosNZmYmUk7AsuIu/Uk/h
         GnppudbH8W4mNsSq8fkKRW1t8FcupnXJp/mgWoiH4N1Wd1kUzxxLACmXAzqpN6x1xE+3
         EpyCwgyiMDgY9i22nqt93bdQ4RyTTR/R+6y+2EZTVKj6nvazBSITqLk186bUyD0M4Z7R
         nl3A==
X-Gm-Message-State: AO0yUKXxrDgz4kAJ+4i9sevvnGikMqmSj6FnjiZkYr+Ay0o0g3NYuJ3G
        S2gGrPrPP5nQ96WbB0HvCb6eZQ==
X-Google-Smtp-Source: AK7set9xwLh8QxbJXwMkNa8KYIKNfj0jHIEo/JHmoagcg2LS2ioehtQqrPIq3vvkgO/RTWpLYfaASQ==
X-Received: by 2002:a5d:6150:0:b0:2c5:63df:1171 with SMTP id y16-20020a5d6150000000b002c563df1171mr10849484wrt.19.1677144842779;
        Thu, 23 Feb 2023 01:34:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h18-20020a5d4312000000b002be0b1e556esm10400247wrq.59.2023.02.23.01.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:33:59 -0800 (PST)
Message-ID: <a7fdffc5-14e2-5cbd-6fe4-c6412a57e13f@linaro.org>
Date:   Thu, 23 Feb 2023 10:33:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 16:59, Kunihiko Hayashi wrote:
> Add UniPhier SATA controller compatible string to the platform binding.
> This controller needs three reset controls for Pro4 SoC, or two reset
> controls for PXs2 and PXs3 SoCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/ata/ahci-platform.yaml           | 49 +++++++++++++++++--
>  1 file changed, 45 insertions(+), 4 deletions(-)
> 
> Changes since v3:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

