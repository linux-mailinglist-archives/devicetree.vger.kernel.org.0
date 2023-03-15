Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFAAF6BBBA5
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 19:05:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231623AbjCOSFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 14:05:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbjCOSFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 14:05:06 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0386514201
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 11:05:04 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id w9so8073798edc.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 11:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678903502;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E/DrEtagZyubG0GW8f8e+FbSp5ZRsII6bZr+2KW/IQg=;
        b=AAZPSGzHgpvb2mKQ1EoGLFO95CSAAbfquebCvYCd688R8f4AoOP6aHBj7qNlyQLwLU
         x21AI2rII0od88aoRBE/quUEdiFHSjnTbtdYb+Z92zR6p5p9plnkw08qtrnknbBluhP4
         4gIIcnWxK42Y9XYGYSOHDf4598wXLeQzPPRRB5S3kaWGiwjwFsdY1AxAniePMCKyp0DO
         F5VmG9mXfjdaGnUjOqvBvF2UivghqBxi6cThWaEuIy2VKokEL8yzaCtuBdHF1fpoqZWZ
         jALpAXWVarRUWdu8X2nkXYorfAFBWPm+oApijZJqHNE1WiN/pfy0LpOcrMiZBEeq1AhF
         5+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678903502;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E/DrEtagZyubG0GW8f8e+FbSp5ZRsII6bZr+2KW/IQg=;
        b=nrhPcd/h+Ik+ElXncgGqIvk0b7tUeftNEgYUsHlF/OIjeCHHidmGNQxt77vDch76iG
         XykWuFpXVj1g2li7Fhbpprmp4M8s+CWUJbEl7FKjqtsw3lyMxCwoAhE8LHNOA66yYUl7
         7hXuuYXXmjFCPrlV+1gIzLDQrfFMssUGkBH74LiIQWbNyg6DY+y1ZXpQJS+8qRNS5tFz
         yW/+RixdPxIM4FW2h82XWaWj/+4C70EZXwGJeVFjFDmkClbaySGx5kk7h3K87mggOT+y
         u2NRzm1DMRBU0AxJCt0S54D7R6futGPB5qGdBn9iHe8KZSZYoegr/T/OvVkW2VzzRz/p
         tLsw==
X-Gm-Message-State: AO0yUKXRkbKTkedQsUdbNPXjHi07PgVFVrE1kG4ch4YYvOY2/1BDx0HD
        1qwjl0uex1Mmksvdn5GEkz2LXg==
X-Google-Smtp-Source: AK7set/EWeiL4CgaEmnMtfP0zRZdsE9IOHcGPR3AKFbB+w0h9JcDvRCUagIkM7fkBOaR4uCpAh3x9Q==
X-Received: by 2002:a17:906:4e14:b0:8b1:779c:a8b1 with SMTP id z20-20020a1709064e1400b008b1779ca8b1mr7049606eju.5.1678903502469;
        Wed, 15 Mar 2023 11:05:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id c17-20020a170906d19100b008e57b5e0ce9sm2823703ejz.108.2023.03.15.11.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 11:05:02 -0700 (PDT)
Message-ID: <fd6c0fe4-3d53-95fe-0aa0-c56cc2e3daf0@linaro.org>
Date:   Wed, 15 Mar 2023 19:04:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ASoC: dt-bindings: maxim,max9759: Convert to DT schema.
Content-Language: en-US
To:     Otabek Nazrullaev <otabeknazrullaev1998@gmail.com>
Cc:     Daniel Baluta <daniel.baluta@nxp.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230315173404.7215-1-otabeknazrullaev1998@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315173404.7215-1-otabeknazrullaev1998@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 18:33, Otabek Nazrullaev wrote:
> Convert Maxim MAX9759 Speaker Amplifier bindings to DT schema.
> Add missing gpio header file into examples section

Subject: drop full stop.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

