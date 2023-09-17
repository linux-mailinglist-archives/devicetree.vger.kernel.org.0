Return-Path: <devicetree+bounces-816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 439217A341E
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C924328160B
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C763186B;
	Sun, 17 Sep 2023 07:46:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122041859
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:46:27 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FE3D18B
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:46:26 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-986d8332f50so466939666b.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694936785; x=1695541585; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x48DqBTN3AQWtiandQopaqlFClBcuCunTmT5FYjWw7c=;
        b=v6jtl+FK5hFxikvLGjbZ1w6jeDKW0Yj3iUUgeJOIJGp1lyJ9n7bOY61KjYBZuMXh4z
         dBd69TrQeSfnvGOpX4DMeJyfMkxZ28RM4vxHkRZQMq3pbv+oVl8kGa5QX+tSKfjeteVW
         4dux/kVZKNK59t+dQDKsvGp7AKeHiXlP5QQxoQerFh/PWuZnYR+dd3opkZL18Yksq7lY
         nyMv1n5cI7Nei7M7/6dW/AWOTOqcNXjK+0kAIWaQZLFC5liRt62vvr7vz93kStUVjQWc
         ZmGhMtjUw5zBOzug8oknZJ1rsomJRMGEKyU0loL12tttpYffPJA77KFoypQGaBZ2dGC1
         +awA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694936785; x=1695541585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x48DqBTN3AQWtiandQopaqlFClBcuCunTmT5FYjWw7c=;
        b=udmNXKNttfRHGDUJpHTT4AJJs+yuzV+Zlvv6a3UMChqtHoWRdx0TPi7B0l5ER14ijr
         JAlkXalGrh12DO9EU71+m0CyWgkxRTRTV3n7vqWBUDctsF8vRmImYVtNfLOxP22IQzeH
         74fM4Mj57TJ7gsIstDvbENJRZYrCvAn/Y49j1peQ6TPUyPcVqGDtwbdlg8jzVcqrm49g
         PtM2qZ1lHGFfwp3zI0wR3tPh6WzjlQ5Jm4Gi3ehIF+LqqrTlJZmAcayZz0QfHYz9YzPU
         zT85zfjRBPTOZ6X+r22pQhhG2fNaZ3Rwa3lNSFGKhJylS7OAkBFm82VA/QCmnbdPJD1+
         wH0g==
X-Gm-Message-State: AOJu0YxFdpoSjT9pZl9PvNJCDz9XxzLlI/Jrgr4sMC3aXFBR688vx/dn
	UhSsDCn0llztaiTJVK9TklMS8A==
X-Google-Smtp-Source: AGHT+IEMmvm/T/dhMyFPD2yzU4xF7sgZOL4AXo/0tCt/ITKpvjmCL9NMFZ+P4kx1vyfX0NMPsFeTZw==
X-Received: by 2002:a17:906:8a5b:b0:9ad:ec25:825b with SMTP id gx27-20020a1709068a5b00b009adec25825bmr2669953ejc.58.1694936784759;
        Sun, 17 Sep 2023 00:46:24 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id xj7-20020a170906db0700b009adc77330ebsm3597089ejb.199.2023.09.17.00.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:46:24 -0700 (PDT)
Message-ID: <46d911d0-481d-4247-332c-9f2d27c7099a@linaro.org>
Date: Sun, 17 Sep 2023 09:46:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/6] dt-bindings: gpio: vf610: update gpio-ranges
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
 <20230916-vf610-gpio-v2-1-40823da788d7@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916-vf610-gpio-v2-1-40823da788d7@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 04:03, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX93 supports four gpio-ranges at max. To fix below issue:


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


