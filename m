Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D80C5AD636
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 17:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238762AbiIEPVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 11:21:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238816AbiIEPVZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 11:21:25 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C8794F68C
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 08:20:53 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id c10so87228ljj.2
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 08:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wUh3Al7PwmMjM0VU9KK3G3HzxyA6u+B+m2lqTPbNxqc=;
        b=Ds5LlGhy7ALtM48hcbmng41zkEBD3OkJnpDGID8a9rtqWtS7WTHfqAOJL7QHb3KJd7
         p3ctkJRbHTMQ6P+aVPRp1GZ8zAXyxEbN1f9uKGkPxIdNsSKlf0RfTSvBj09HKDlDPY8L
         WpBdiRCCXtimHS0cKWwf2TWx0r693TasdGj0L5CCVXcd2yRk2v8Z5Wne3Tg6St2ozYik
         o8v0AQs4ZOHZP2CNNO5Ige9N0LV5KS9pRpGKqh/i7jE5yeZBmmhwSt/xbFRxYe4WRdEF
         VMXMLya0Zckcm++ZgYnIqb0t5593FXlU/v1Gbi5aU5DE/L224UazGF4gVUpxMBpzoWly
         q6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wUh3Al7PwmMjM0VU9KK3G3HzxyA6u+B+m2lqTPbNxqc=;
        b=YkhdyZ4UgPBHhVLnH+IradUmWn648O01qs+abhZOqqW25lu8gc8pCCrQ5T9rGZx6zw
         JsJ02r9DTuxeBbLzhGtscHAkG0OFL3n0Tw3tPmDh6UnbK5XVyjFft3v0Of0Us/WRCLIp
         HfzGgXNNI68KK4/qy/GtgkOoEfNSgUsEWGh3e2JyFWmld8jBzux9cUTPJOUTIBs9BxX8
         U5dBq2eKWo29lnDjjKXRPq5rarQjQ4hDZ9fXAUGmumzuHRyskHFRimt7N7a4EtazNmzk
         xSezfUaY98uLNKSaANgCvLPtjL0s7a2Q5j+2BPkT2sjxHNi/68PHzdT6YvX5Yq75lP4V
         83zg==
X-Gm-Message-State: ACgBeo1rh43ZxXZHKZZ1kGjer8NTpgn8S2W2teYJuoJftCJJX1TljK8e
        G3F+5reY3f5X3ffLcoILvlx5FQ==
X-Google-Smtp-Source: AA6agR4HQzE5xeJaiVvQxrn4aWLnqzzhOmMJHC+Goy22vEQaZe0SuJub2muSd+j+2VMLBSzEs1stSg==
X-Received: by 2002:a05:651c:10ba:b0:266:ee76:26a9 with SMTP id k26-20020a05651c10ba00b00266ee7626a9mr8831203ljn.382.1662391249222;
        Mon, 05 Sep 2022 08:20:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q3-20020a056512210300b004946aef1814sm522090lfr.137.2022.09.05.08.20.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 08:20:48 -0700 (PDT)
Message-ID: <3ad3fb30-d56f-78be-610d-a02c9609ba42@linaro.org>
Date:   Mon, 5 Sep 2022 17:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 2/2] rtc: maxim: Add Maxim max31329 real time clock.
Content-Language: en-US
To:     Jagath Jog J <jagathjog1996@gmail.com>,
        alexandre.belloni@bootlin.com, a.zummo@towertech.it,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220904044708.7062-1-jagathjog1996@gmail.com>
 <20220904044708.7062-3-jagathjog1996@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220904044708.7062-3-jagathjog1996@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/09/2022 06:47, Jagath Jog J wrote:
> Add real time clock support for Maxim max31329 real time clock.
> 
> Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>

Thank you for your patch. There is something to discuss/improve.

> +	max31329->rtc->ops = &max31329_rtc_ops;
> +	max31329->irq = client->irq;
> +	max31329->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
> +	max31329->rtc->range_max = RTC_TIMESTAMP_END_2199;
> +	max31329->dev = &client->dev;
> +
> +	if (max31329->irq) {
> +		ret = devm_request_threaded_irq(&client->dev, max31329->irq,
> +						NULL, max31329_irq_handler,
> +						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
> +						"max31329", &client->dev);
> +		if (ret) {
> +			dev_err(&client->dev, "unable to request IRQ\n");
> +			max31329->irq = 0;
> +			return ret;
> +		}
> +
> +		ret = regmap_write(max31329->regmap, MAX31329_RTC_CONFIG2_REG,
> +				   MAX31329_RTC_CONFIG2_ENCLKO);
> +		if (ret) {
> +			dev_err(&client->dev, "unable to configure INT pin");
> +			max31329->irq = 0;
> +			return ret;
> +		}
> +
> +		device_set_wakeup_capable(&client->dev, true);

Probably you should rather respect wakeup-source DT property.

> +		set_bit(RTC_FEATURE_ALARM, max31329->rtc->features);
> +	}
> +
> +	ret = devm_rtc_register_device(max31329->rtc);
> +	if (ret)
> +		return ret;
> +
> +	max31329_trickle_config(&client->dev);
> +
> +	nvmem_cfg.priv = max31329->regmap;
> +	devm_rtc_nvmem_register(max31329->rtc, &nvmem_cfg);
> +
> +#ifdef CONFIG_COMMON_CLK
> +	max31329_clkout_register_clk(max31329, client);
> +#endif
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id max31329_of_match[] = {
> +	{ .compatible = "maxim,max31329", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, max31329_of_match);
> +
> +static struct i2c_driver max31329_driver = {
> +	.driver = {
> +		.name = "rtc-max31329",
> +		.of_match_table = of_match_ptr(max31329_of_match),

of_match_ptr without maybe_unused on the table should cause compile test
warnings. You need both or none.


Best regards,
Krzysztof
