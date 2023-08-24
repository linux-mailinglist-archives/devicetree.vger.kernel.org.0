Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2BC786F50
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 14:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237200AbjHXMl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 08:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239241AbjHXMlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 08:41:47 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 323AC198B
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 05:41:45 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5007616b756so7507075e87.3
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 05:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692880903; x=1693485703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BAkSr3Gk0g2+5udpa+hB8OshiUKIlJ+N0mzFCMWze0o=;
        b=IP+FLy7Q0SrCfI2pJZRd+41YwJooNenYVpinCZQmIDhcOVAYhurpTFudt/lCgl6V8c
         AQZKWMQcke7ZFuakVie0TjNg/wBu/eoIM97Ilypdo0uwzNebev9nUJtyejs/du9F8XB4
         HjyT5NRcMyxBK1kWFTkpzZyNd1x/NktQJ9MWcsSTXqh/b7nCx0um+w5xIcYXb266zwKx
         56h4zdsXfv4fQlJxaAMYm32mf6eiVrIAgkghoZ/dZaSUmwlaRgARg7DGmHmV2wEwdvBD
         QGHP90klsohOA3EEjoMGBgc717vV2dsmR0ssDRCdCKnvA4I+k/9+KnTiXa0nVw0yVY5e
         OPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692880903; x=1693485703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BAkSr3Gk0g2+5udpa+hB8OshiUKIlJ+N0mzFCMWze0o=;
        b=fsHf9on5t0/dr43X4YMNalNIiJDX0SrYKQunGSYKFXjmxqSc0ZdQR2zC+RqH52CLN3
         PQyzKHN6FuDPn9HGr6ckgyc7GEjqUDjzSuf07yzRWQ3iHYLZ/zspBc09IZUtfm3NDlbn
         gEP5SuGpEwxi/s3oCZN+JhnnvDgQJ3xajAOTG1G62tEvRn+yfpl1fwuvs/NXTFDAvYLb
         zE+d1EPBHXUUwwvvci5U9BD9z/R37teUOVJrT4aTuy7C5junHBneJ4IBd2ItzLyQkjcY
         leXy3NuPrLLYJP12ofzdPmAItFHxoNzE3gJKQAaNFUwxh9t+bnoOxBYOuiUV0aRpWAAr
         RByQ==
X-Gm-Message-State: AOJu0YzFdbpysqJcym7m5Q8/U8ShLI2p/5hJFRkvI66uVKj+7qxYHz/L
        XA/1pZgG3RZ5PyJX/mWj7fcwYg==
X-Google-Smtp-Source: AGHT+IEOhpCT+JRJbh18sqyr+ORLms1Mm5XeQll9vnvq5Coz0JDnyJlnQU82T0VOl62OFRLGCkFBvA==
X-Received: by 2002:ac2:4c82:0:b0:4fd:d92e:31ca with SMTP id d2-20020ac24c82000000b004fdd92e31camr10795414lfl.36.1692880903422;
        Thu, 24 Aug 2023 05:41:43 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id b4-20020aa7d484000000b0052a1c0c859asm3771727edr.59.2023.08.24.05.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 05:41:42 -0700 (PDT)
Message-ID: <f2f033a6-f552-b86f-250b-08fb298c9bb1@linaro.org>
Date:   Thu, 24 Aug 2023 14:41:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] power: supply: bq24190_charger: Export current
 regulator
Content-Language: en-US
To:     Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc:     Alexandre Courbot <acourbot@nvidia.com>,
        azkali <a.ffcc7@gmail.com>, CTCaer <ctcaer@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230824112741.201353-1-linkmauve@linkmauve.fr>
 <20230824112741.201353-3-linkmauve@linkmauve.fr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824112741.201353-3-linkmauve@linkmauve.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 13:27, Emmanuel Gil Peyrot wrote:
> From: Alexandre Courbot <acourbot@nvidia.com>

Empty commit msg. Sorry, we cannot take such commits.

> 
> Signed-off-by: Alexandre Courbot <acourbot@nvidia.com>

Missing SoB.


> ---
>  drivers/power/supply/bq24190_charger.c | 84 ++++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> diff --git a/drivers/power/supply/bq24190_charger.c b/drivers/power/supply/bq24190_charger.c
> index a56122b39687..8c026e86aeb3 100644
> --- a/drivers/power/supply/bq24190_charger.c
> +++ b/drivers/power/supply/bq24190_charger.c
> @@ -530,6 +530,81 @@ static int bq24190_set_otg_vbus(struct bq24190_dev_info *bdi, bool enable)
>  }
>  
>  #ifdef CONFIG_REGULATOR
> +static int bq24190_set_charging_current(struct regulator_dev *dev,
> +			int min_uA, int max_uA)
> +{
> +	struct bq24190_dev_info *bdi = rdev_get_drvdata(dev);
> +	u8 ss_reg;
> +	int in_current_limit;
> +	int ret = 0;
> +
> +	dev_info(bdi->dev, "Setting charging current %d mA\n", max_uA/1000);

This is not info. It would pollute log and it is not really necessary,
because regulator framework gives such information. You can make it
debug if you need for debug purposes.



Best regards,
Krzysztof

