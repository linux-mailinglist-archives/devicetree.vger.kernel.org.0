Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1762A6FEF65
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 11:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237195AbjEKJyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 05:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236438AbjEKJyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 05:54:06 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE2BA5C6
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:53:19 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bcb229adaso15445174a12.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683798792; x=1686390792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ra1EDpxvz2xv3pLfovf6y0ptDS0ESOKI+0xxALZBic4=;
        b=JyfQ3vpeV7QV2DXsksKGQykVOBXIpvX+AHhMHcKaCMrJ4vJlVyQEBIqZLTUlnttSYk
         rkpc2JSKlp+Atk/89aPqBDHXWvhsMyJ5uYRVwOVABKswrJk+30dSZEXtbZHmQ40uTO+V
         bG7lfpK0AAPOTeRhYZMdz8KLger/caFBBGEFO4+l3QV+/GXqCwXnAoBdhzS8RIRKEdTp
         pQgT+HApj9tCn7lfBJhXL93rXbqntED2shyBTF/QoppoLxaUfvvqZR5cE/90dKe8I3qs
         X1AdELeKdNKd2OqkKh9HWS79OenMM+SzPWYXR1LrEvyAtIN9IgntX9UtI6rra27uyrwh
         FeEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683798792; x=1686390792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ra1EDpxvz2xv3pLfovf6y0ptDS0ESOKI+0xxALZBic4=;
        b=c/b6Y7zt6NrVUrEttwo6p2puYZRHSbIMHJNCYgrbEMzPxraNmurw9S7h1t7DqCqfpr
         0hhk3NZ3qiLy/3GdIWnYxaaULeQofN88USuI/1SVTJxt6znmzoW9QHLMIezvBBy2TnJ3
         S036o81Pw4TLF0FLQaQTWyC+BFy9L2ZVJOxrEdfxHJ2eYCmcvQh+uiBx98n0R0aw35hK
         VNT2s03VAXDKFUowJh9Tw5VZuf+OZYYfvJY80ECUS2ZQjx+vgZKI/F6jzlM1fFMhS8J1
         J9wLDUUy+3YxJ/hXRY9TNzATa/wkymyXs9ydZ+UaaOr2rlYhK01yElVrXy/Gv/tf1oPj
         IZdg==
X-Gm-Message-State: AC+VfDxmIQjyBMIAKY60ibla3IIDTuoOpReOY86ixf/KKmZ8LOlvZ/My
        IGqDTxnirCgkqkavp/Mo3+SugUg9EwIHoK3kKI/QVQ==
X-Google-Smtp-Source: ACHHUZ7buTqgXwmKazIqHHMobziqeJdbd70yg1RF2bZXXEnxzChFwjX/ueRfM4Ac8GmFrBiUAZCA/w==
X-Received: by 2002:a05:6402:213:b0:50b:c380:a929 with SMTP id t19-20020a056402021300b0050bc380a929mr17383943edv.10.1683798791655;
        Thu, 11 May 2023 02:53:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e61:f14a:c3a4:809e? ([2a02:810d:15c0:828:7e61:f14a:c3a4:809e])
        by smtp.gmail.com with ESMTPSA id z24-20020aa7d418000000b0050bfa1905f6sm2861035edq.30.2023.05.11.02.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 02:53:10 -0700 (PDT)
Message-ID: <55489ae6-dddc-ca72-07ea-761bf1e40912@linaro.org>
Date:   Thu, 11 May 2023 11:53:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 1/3] ASoC: Add ESS ES9218P codec driver
Content-Language: en-US
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230510112349.939991-1-aidanmacdonald.0x0@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510112349.939991-1-aidanmacdonald.0x0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 13:23, Aidan MacDonald wrote:
> The ES9218P is a 32-bit stereo codec featuring an integrated
> headphone amp with analog volume control and up to 2.0 V rms
> output, and a low-power bypass path for passing through an
> analog signal from an alternate source.
> 
> The digital audio interface supports 16/24/32-bit I2S inputs
> ranging from 8 KHz to 384 KHz, and DSD inputs. This driver
> only supports I2S operation.

...

> +static const struct of_device_id es9218p_of_match[] = {
> +	{ .compatible = "ess,es9218p" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, es9218p_of_match);
> +
> +static const struct i2c_device_id es9218p_i2c_id[] = {
> +	{ "ess-es9218p", 0 },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, es9218p_i2c_id);
> +
> +static struct i2c_driver es9218p_i2c_driver = {
> +	.driver = {
> +		.name = "ess-es9218p",
> +		.of_match_table = of_match_ptr(es9218p_of_match),

Drop of_match_ptr or add __maybe_unused to the table.

Best regards,
Krzysztof

