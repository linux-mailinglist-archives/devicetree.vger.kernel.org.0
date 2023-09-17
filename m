Return-Path: <devicetree+bounces-819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 519D67A3425
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BBC6281673
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FFB1871;
	Sun, 17 Sep 2023 07:52:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6191859
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:52:44 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4C619A
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:52:42 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9ad8bf9bfabso451475366b.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694937161; x=1695541961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7eo0rPZzuvMX1hueccHEBwOS160FHpuSftGVntb1qxg=;
        b=abqMaPOX5yqE89p8X3eNAO2piHJKqwg+2vR6FtQpneBsnBncvW8F+OVifhYlGx0L9+
         e6El4Cwwua4U/Y/atX6qdF7W+EWGXl3oe3jN5UoQhnE1Q6Vw+uJgAMoMX0mLRTOjMpTC
         MWC7AATpwJ3yc6rSowiRegV3VGT9LOTuf+g9zkLhKzsnwF3EKlG+NxBbO13OZ2r8q1tz
         G8GSHXjkwApbjWB34mxyex/+Pim/jaiVLRnslpJeCWlZZyOC7oFUsocqNAz/VqIJflXM
         o8nCWc/IfAUHIugEhs636gwwmM4f9vvdmNxEA5kK6WzuKTGSh9ihbAEOyMKskI7XNpgb
         fnyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694937161; x=1695541961;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eo0rPZzuvMX1hueccHEBwOS160FHpuSftGVntb1qxg=;
        b=t5Oq+WYmZDfymWa/yPEyLw6obzHlBZCZP306WqVxkVucAbAb88UhFVOm29jkZcFQoF
         6EVvyq6Lx8TX3HqCPK6l3XUr4mDfUTSaKvs8JYu8oTK0rapTHHtgcvNpICfipSsgn+7l
         Kx4GFVXPumyPeb7HP7oP/N2QA/OppvziKTuipzG+Vt0MKRkHSZ8SIJhhczJY2e3itsMZ
         NfPM4zqrTiiBPd+7IRrCifCFQjNwzPirswIwuwOEwb0d+leCv5aazMsRYP3NqrXLTJov
         doGv3WnnGsMhvQsPLX5a2Uk7lVWXWtw/TK5mYBR/LksWx956KRllAghd7rODroemWjrc
         7r+w==
X-Gm-Message-State: AOJu0Ywt6RCJGGarhXP009I4lnc+uFeZvIjg+O7CcWg94eMWOBk8+4oM
	eYzdwLuYhQhHrfrRRIGTyRiSKA==
X-Google-Smtp-Source: AGHT+IEVjWE53AChtQwuTyXoGTpdIYaK3RL4LJS2V6aENqPfqKoxFhW4kzRLVZ20h4kWVResksGkcg==
X-Received: by 2002:a17:906:cd1:b0:9a1:c00e:60c5 with SMTP id l17-20020a1709060cd100b009a1c00e60c5mr5039237ejh.48.1694937161408;
        Sun, 17 Sep 2023 00:52:41 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id i23-20020a1709061cd700b009ad8796a6aesm4660614ejh.56.2023.09.17.00.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:52:40 -0700 (PDT)
Message-ID: <00d40f2f-df8e-1bc3-1619-c25a7d3149d5@linaro.org>
Date: Sun, 17 Sep 2023 09:52:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 3/6] dt-bindings: gpio: vf610: add i.MX95 compatible
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peng Fan <peng.fan@nxp.com>
References: <20230916-vf610-gpio-v2-0-40823da788d7@nxp.com>
 <20230916-vf610-gpio-v2-3-40823da788d7@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916-vf610-gpio-v2-3-40823da788d7@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 04:03, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX95 compatible string which is compatible with i.MX8ULP
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


