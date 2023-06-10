Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 389C272AA77
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 11:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234122AbjFJJI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 05:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234031AbjFJJI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 05:08:27 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA56B35BB
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 02:08:15 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5147f5efeb5so4559485a12.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 02:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686388094; x=1688980094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10why2ZoKYh8OCF9t05JfVcsTcRRTXdo00tGW5eG4P8=;
        b=wjM3JfnbHH5o8w0xdL/Mhg8l3ykNyNiWyo3xZDAtY+1thDWlBisez4R36Q37ymOimy
         5U4IL0DiurhhmjDGaTnNFLezHP9qoDb03NcW97L5UlfxCgc+IylCqkHpd50jsD9j/3XO
         iD+R/+EI44R9jKiL9bprzZC10S/4Bb64UH2CfLcjjM7v9+C66X+87duNhh7BM/ekGcgJ
         8bfkC/Y+cUxJNqrxgZcSnxSvCZ2ZI4O97nMkxk6DChgXK/SQvVdNMRKK2EWEFgI+6r1q
         kbf/KZAZqnsC5Sqn99BOuKTvfKEXDV1ifykNdaETQZ4+18/ob0BaY/9cSKphms7mPAaL
         V8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686388094; x=1688980094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10why2ZoKYh8OCF9t05JfVcsTcRRTXdo00tGW5eG4P8=;
        b=TQyP6Oj2OrCtou9yZGkmdwhsTEUNJcri7z203IaRJbtXCyHj2DnkpyzDw6jR5yxDrb
         RqMcDL8DWPVvkP5YZyrcz1EOfaPLEw9JpnnG/3s+IkC+R/Nnw4SGKzEkAFXfsKzyr8hY
         Yh4quKDnKDYSXlIFbKWBEYV/E4HspztytjVFkUXKKJsk2XXiWbBpydsGY7h7EJublxag
         0+tsBIXFE0NJbE4PbIC4QLl3wkjtW0+cjwkZUM8bpc63ajYX61Y5GP1ujnlUHS9smzja
         gsP18Zxad4coiYc/QxdFkpwrvkwS97ABRRi6YJElfdqM+TwBsR588SgIZY2/rU46jDUE
         +Q6A==
X-Gm-Message-State: AC+VfDzORSmnZ4qpg+Smasj58jkRuJvwfCARxi2mQC0a9IXvGy0RgPvN
        GEpW6fD7f8mj+stIpzvlkgndyQ==
X-Google-Smtp-Source: ACHHUZ7TsTyV7WKhpiWifl81yyvWaV2hJqCukEWQuqIz3aoJZs6EarLjzpDWqbSuq3qU9W73+A4Rew==
X-Received: by 2002:a17:907:6d9e:b0:97e:a917:e6a5 with SMTP id sb30-20020a1709076d9e00b0097ea917e6a5mr226842ejc.19.1686388093875;
        Sat, 10 Jun 2023 02:08:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b16-20020a170906151000b009746023de34sm2325501ejd.150.2023.06.10.02.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 02:08:13 -0700 (PDT)
Message-ID: <84588a21-135a-adf0-e6c7-146c1305cbbd@linaro.org>
Date:   Sat, 10 Jun 2023 11:08:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH V2 1/2] ASoC: dt-bindings: max98388: add amplifier driver
To:     =?UTF-8?B?4oCcUnlhbg==?= <ryan.lee.analog@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        rf@opensource.cirrus.com, ryans.lee@analog.com,
        wangweidong.a@awinic.com, shumingf@realtek.com,
        herve.codina@bootlin.com, ckeepax@opensource.cirrus.com,
        doug@schmorgal.com, ajye_huang@compal.corp-partner.google.com,
        kiseok.jo@irondevice.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     venkataprasad.potturu@amd.com
References: <20230609234417.1139839-1-ryan.lee.analog@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609234417.1139839-1-ryan.lee.analog@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/06/2023 01:44, “Ryan wrote:
> From: Ryan Lee <ryans.lee@analog.com>
> 
> Add dt-bindings information for Analog Devices MAX98388 I2S Amplifier
> 
> Signed-off-by: Ryan Lee <ryans.lee@analog.com>
> ---
> Changes from v1:
>   Removed unnecessary blank line and description. Modified quotes.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

