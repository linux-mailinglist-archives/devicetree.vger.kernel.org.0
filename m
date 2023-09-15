Return-Path: <devicetree+bounces-507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C78997A1C30
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:24:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 825FD282EF9
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB7BFC0B;
	Fri, 15 Sep 2023 10:23:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4972963A5
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:23:57 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A621A30EE
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:23:21 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9adcb89b48bso82455666b.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694773400; x=1695378200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZU4AuTd77SCi2z8SlZIHecF6Q/OBga20jXZU+Tyw7RM=;
        b=T+ArXf90tZNK6WJAB/Arf6yieCKcCF0mVThlCkVvgBzgPsSl6Y/1agYxy8iGFUwPaZ
         NeaMIero5ajJK3OD72L2C9rxVpcDMn7CVUc1y/0lb9TrQxIHE5T/Bl0nve5QTzJ2uCmh
         DTVEZxeFsejwAMOaY2ycjJTv7OaniPmTfllcmEfwfR49pGoctK3vN8eXAyzWMw5ioyPM
         2uEbl4iuW2GL+vwJDph5oSzEUDfghLO/XfLpea0Ybq+qYGQ6Sg5NBKasuH92WqUlYgdz
         IQDDOi3FzdVm/HND7pnIl4MVO+NPgp1WHW6ovHZCEov+693P72TDEokX9/jOBhzgM+qW
         55Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694773400; x=1695378200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZU4AuTd77SCi2z8SlZIHecF6Q/OBga20jXZU+Tyw7RM=;
        b=vMmXyzvpbZW+BYfyhzOeApC0IthnDs/s3kkcko0evF0TyktZW9AA381POnkHCCuXFJ
         x70zn0neqe+RIl8sROPoAYP4/pWZeIKfAbwPBGGkkC8cbesypfCweR3igLLQXnuZqLYt
         OHP+BPefrSKGI8EF5jTdOBclO6d43KLnO3oA9va92fWXMoHKmsW/hpzkgWR+K+hlWQR8
         tYZmZ5W00a+DNpIVsJbr+kWOjj07nzC4u3CxLkO1VqKM9XgitWxxeEcM12CZV2KvVy4d
         51NFiOQH6NCGFCgqj8DaxcZ+i7ZCvTYTfTH/iqwjvIm530FLXfO5ZS3tg5NjxN/NBDDj
         S0Rw==
X-Gm-Message-State: AOJu0Yy6jCFL8Sl9MLNe3ad65WFCH/gYsH4lODUuC7Npik3ot7aLT2aq
	Oyu4cjXQ8mBw3Ch8PUB3EgOeG4i12Dkn9avxeRg=
X-Google-Smtp-Source: AGHT+IHd2NUDtrOHeXSqw9jdD6L2t5IYy7aq0QEiscLzMW/L1cneK//YI9eejtz2lfL2eEwyr27C6w==
X-Received: by 2002:a17:906:74d5:b0:99c:5056:4e2e with SMTP id z21-20020a17090674d500b0099c50564e2emr951471ejl.31.1694773399810;
        Fri, 15 Sep 2023 03:23:19 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j21-20020a170906831500b009ad87d1be17sm2211358ejx.22.2023.09.15.03.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 03:23:19 -0700 (PDT)
Message-ID: <a711407d-4419-4b75-99db-b8461b3bbdfe@linaro.org>
Date: Fri, 15 Sep 2023 11:23:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] usb: typec: tps6598x: add reset gpio support
Content-Language: en-US
To: Javier Carrasco <javier.carrasco@wolfvision.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230912-topic-tps6598x_reset-v1-0-78dc0bf61790@wolfvision.net>
 <20230912-topic-tps6598x_reset-v1-1-78dc0bf61790@wolfvision.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230912-topic-tps6598x_reset-v1-1-78dc0bf61790@wolfvision.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 07:50, Javier Carrasco wrote:
> The TPS6598x PD controller provides an active-high hardware reset input
> that reinitializes all device settings. If it is not grounded by
> design, the driver must be able to de-assert it in order to initialize
> the device.
> 
> The PD controller is not ready for registration right after the reset
> de-assertion and a delay must be introduced in that case. According to
> TI, the delay can reach up to 1000 ms [1], which is in line with the
> experimental results obtained with a TPS65987D.
> 
> Add a GPIO descriptor for the reset signal and basic reset management
> for initialization and suspend/resume.
> 
> [1] https://e2e.ti.com/support/power-management-group/power-management/
> f/power-management-forum/1269856/tps65987d-tps65987d-reset-de-assert-
> to-normal-operation/4809389#4809389
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


