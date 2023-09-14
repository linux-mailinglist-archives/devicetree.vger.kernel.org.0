Return-Path: <devicetree+bounces-74-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F18CF79FB51
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:51:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCD691C20829
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E406125115;
	Thu, 14 Sep 2023 05:48:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E8463B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:48:39 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225F8DF
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:39 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso8708101fa.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694670517; x=1695275317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fFMKkaMhSsUcFI5NdgHlEe2QFDzkmY/+DSyUfESyT8M=;
        b=ZRU9Ozvp6oAzLTu2qUfaYUwU3c74VGf4WCDM3M3RKVuXV8qG1hSWDcvjVHRLVfGLFb
         zDCQ5TIMWn8v7Yygsubyp3uMD1h10WbGYAA/cAZ6LjH9RPVJKJABisfOzIpmH+pqsUuP
         J1p6Nvg9hQ31dDn8Eb2ch6zCeHVNBIqcc1dlprN+W5uGFnqZlamyERZDjFIIIHYjYxXV
         mdkiAz0BzXeEUorWrHnV/UWgBk5tN3yAIACU1228pbAt4iI4b0ArdybCDAGKHT/OVBgj
         t5Tn/e6iyrNcrZMxcflttizpvIZGv/aNeAgR5DJlCtGA8Qs7DWi2glwtrdth8pdeU7Va
         nwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694670517; x=1695275317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fFMKkaMhSsUcFI5NdgHlEe2QFDzkmY/+DSyUfESyT8M=;
        b=RapeoMznO8D8141h/21kstm0FXbfzPHO2tyBjJ1gy0+SRMefFtL5NcQLtrkeD2aFwy
         eZL9WOKn8lkZytWBPkzDDc15X/81bTEow40EyrUfUS3pVbHFd65vo1dMn0G9rcTBbrsL
         6/It8Bx2dvWYff2Czk1aPYch+XcZJfjVXQ0JATGRU/799u8V6iQP1M0txMUdiFIpzUBJ
         fRZSEaGZeU8g9hfuosJYCY21tCCTlDNp7zTBMmo4924Lu88wxtf4uDrt6oNsJksksQ4w
         BKd/6W4Qy5ptuSBE3FYwiiHpA87/p4S7FSuQOf8fXtGUj6YznfvFUI61uEO0/FUxDenx
         Cynw==
X-Gm-Message-State: AOJu0Yxq1h528urROGHdOUVxhx7NF6Mm8pG1RFfz/c2YXo+NMAvAz4uB
	MIC5fQ/Aev8n3rbuArcGXm3jYA==
X-Google-Smtp-Source: AGHT+IHqvVR9sUD8cthK3BCLbP7cGXgI4MR5vPevghYKfDeQw08fPiB0b1KIyAU6X4cKd9gENw+iQw==
X-Received: by 2002:a2e:3603:0:b0:2bd:a85:899e with SMTP id d3-20020a2e3603000000b002bd0a85899emr3952768lja.3.1694670517278;
        Wed, 13 Sep 2023 22:48:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e7-20020a170906248700b00988c0c175c6sm473098ejb.189.2023.09.13.22.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:48:36 -0700 (PDT)
Message-ID: <bc122417-6d59-4c1d-3f73-c20711f9a32f@linaro.org>
Date: Thu, 14 Sep 2023 07:48:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 5/5] arm64: dts: imx93: update gpio node
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
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-5-3ed418182a6a@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914-vf610-gpio-v1-5-3ed418182a6a@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 04:21, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per binding doc, i.MX93 GPIO supports two interrupts, and not
> compatible with i.MX7ULP. So update the node
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 6f85a05ee7e1..011c34a57c53 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -825,11 +825,12 @@ usdhc3: mmc@428b0000 {
>  		};
>  
>  		gpio2: gpio@43810080 {
> -			compatible = "fsl,imx93-gpio", "fsl,imx7ulp-gpio";
> +			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";

As your driver change points, it is breaking users, so no :(

Best regards,
Krzysztof


