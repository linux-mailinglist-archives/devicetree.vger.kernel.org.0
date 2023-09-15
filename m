Return-Path: <devicetree+bounces-528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DF7A1D4B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C5781C20E53
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE45E101D3;
	Fri, 15 Sep 2023 11:18:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7781C101C4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:18:31 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C2601B2
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:18:25 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31dca134c83so1982090f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694776703; x=1695381503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ziVc+rtn+8qCfab0pW6dHdwsWNPjZ4WKT9IYLhgHUbs=;
        b=Qr4PENK69EPGv/oguyeWKmN26fML2ukFJwolGFuTw8S0zD46EU+ANjPv1ZbXKWb43q
         B7PUIgeSxHj+fHNkvC/9yyaoGv6JyCPZ1mCKJ0JYCcCS7DW6ekqKA2BFkrPIt6QAFd4t
         2FY4oB/6bOJkKquva2Qr/wscao6g9yoJ27PgSMNoVd35lQcvBLTCRZMAn0qN6ZfMtr6C
         r5n8U14mE5gvlY5wzXLlAwpEpPFMeB87c7tckg5atxFdwHUQNV5iZ/4ZCxYvQb203+91
         hkDAha0kp8ZxAjbBKkKUvZPBBkczP2CEQHts5IhGig7gvkg/HiUvcNs8klNTH/xZrXXT
         5awA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694776703; x=1695381503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ziVc+rtn+8qCfab0pW6dHdwsWNPjZ4WKT9IYLhgHUbs=;
        b=vuGst9ByOBk0YM0eUfnTWxWe45byy2wAlU89JKQ2ixzZdlvvepQq8bi3zR2ihFivK/
         ClRlagbBUHa6xH7etdVCyTZBfcVirImflFEiiPq6K9RNY+KMbbmx+eK14V7j4zRVgF6V
         OS4FkqUECeT+Cgkj7HCmGILuz0TVhelQ1aVvh5WizBNslNI4Zgg4i9nyNREOM9NRFb4R
         e+XWTAFZF9wm0ESS6WzwzRBHVeHsyo1dcNaCPmdiP1k/s7RSIa/NrUmjjVar1ptd0lD8
         fh/SulJIUXWVcWVuozHbGmzXdGpuo3yIxZrfsnLAHMjmSB5pyTEuZOuTriZXOUd1SB0l
         8/TQ==
X-Gm-Message-State: AOJu0YzBn7CFFe3guArhxSWyPwcf+8mXYw00Vvr2xExOzvBPHIQLDNfc
	RZW1SH/mU/keVChqfXmKAzkByA==
X-Google-Smtp-Source: AGHT+IEKQn+nZjBWSB3TGQyOP/D1nrIbfCnlJO1lZ0KeXdDZvnXyjSj7LFWoSMjG2My6gei9PoYuCQ==
X-Received: by 2002:adf:f842:0:b0:31f:e19e:a2c with SMTP id d2-20020adff842000000b0031fe19e0a2cmr1180771wrq.32.1694776703692;
        Fri, 15 Sep 2023 04:18:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e17-20020adffc51000000b0031435731dfasm4159793wrs.35.2023.09.15.04.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 04:18:23 -0700 (PDT)
Message-ID: <880d17f8-ee9b-fc7a-114f-542962022b2a@linaro.org>
Date: Fri, 15 Sep 2023 13:18:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 31/42] dt-bindings: wdt: Add ts72xx
Content-Language: en-US
To: nikita.shubin@maquefel.me, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-31-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-31-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:11, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add DT binding for Technologic Systems TS-72xx watchdog.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


