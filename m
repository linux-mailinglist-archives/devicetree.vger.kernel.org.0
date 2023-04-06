Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAAE76D9F9C
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 20:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239497AbjDFSPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 14:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240048AbjDFSPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 14:15:10 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 583A18A55
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 11:15:08 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id sg7so3471712ejc.9
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 11:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680804906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6oBB6rYPRVsTiSqqWKemxM9/0vuuZy9SiI096Y0Oy3U=;
        b=m1S+okcxwXDcJYBb7Lp3dofmFYmwovcO2X/wgdvcL8kbt2JVauvprB0QAmRCqwxiyL
         UXlNijZLRP/XscA8vLwob+y8S5X3FCxMAkmm+hhkNhbpYLwpILGB4YbmmJTisTbf6ihP
         QVRH3HkDVgCZ521TGazpen8lA9T8oxAD1vLfTMu3v/I0lmc/bxO86gW/iGT/UwMyi4YP
         bGc2sRQs9mCyfyTOKUauMT0uZOtaLCTD/Jr6oDMrd/crowXK8QGB/HUaFz3rfx9fEfsi
         DYOoIPl+DHc3bVnOf9+6E1X9i7ai53CgylTrusfALg3EsUP4ukMWXKXOZZ8XM9RUZNCN
         n3KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680804906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6oBB6rYPRVsTiSqqWKemxM9/0vuuZy9SiI096Y0Oy3U=;
        b=KzbF7Njtn9vwtYIRWhVTkmwAivwF1Z5gPLCGMqU4Fv6Vpr5eipX7C6RUXRZdGIwnLW
         Q1Q4qMWiuqKLhZLOtkmTglktBYcvf2xaZpVgh/9YR3NQbltrfIFUnAUyeUBks/gM4qHs
         ql1F6qQUPCjv7bMnf6cLbI68BSPcZoWWdvss0Gc09QXbTVPPUvI9TsUprg84uUJs/gIF
         2dOKbqLQ8Ip6fHMT7Zc402e7Hlg9uW6jZD1AVZpjthSOpBY0GMnhtGvB25PLyBIcOxnh
         tF8UzHrLhT2gvvyP8oCH/BDE+TzZOi3hrDzuzr4Q9+7pPOtLlN0sxfGc/zb5USLIoxfn
         WJyQ==
X-Gm-Message-State: AAQBX9etY3rYUEmscuSss4RZ2iA6w0J+OtJO1Wgy3vW9BeYjy60ng9DL
        lu7G0nKEWKDT+/s2u222D1hAGA==
X-Google-Smtp-Source: AKy350YGb4hztmcQTJNpcO2q5BKDY7104we4V4xx/57nKA31ObFU4Fdll08/Ztl8jTR6gFFDG8x52w==
X-Received: by 2002:a17:906:2559:b0:947:55ad:dd00 with SMTP id j25-20020a170906255900b0094755addd00mr6862795ejb.26.1680804906625;
        Thu, 06 Apr 2023 11:15:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id cw10-20020a170906478a00b009486efb9192sm1133427ejc.11.2023.04.06.11.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:15:06 -0700 (PDT)
Message-ID: <16bf1f2e-474d-f2ce-a1c9-2f6a089199d5@linaro.org>
Date:   Thu, 6 Apr 2023 20:15:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 8/8] regulator: fan53555: Add support for RK860X
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Joseph Chen <chenjh@rock-chips.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20230406171806.948290-1-cristian.ciocaltea@collabora.com>
 <20230406171806.948290-9-cristian.ciocaltea@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406171806.948290-9-cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 19:18, Cristian Ciocaltea wrote:
> Extend the existing fan53555 driver to support the Rockchip RK860X
> regulators.
> 
> RK8600/RK8601 are pretty similar to the FAN53555 regulators.
> 
> RK8602/RK8603 are a bit different, having a wider output voltage
> selection range, from 0.5 V to 1.5 V in 6.25 mV steps. They also use
> additional VSEL0/VSEL1 registers for the voltage selector, but the
> enable and mode bits are still located in the original FAN53555 specific
> VSEL0/VSEL1 registers.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/regulator/fan53555.c | 121 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 118 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
> index acf14ba7aaa6..130f3dbe9840 100644
> --- a/drivers/regulator/fan53555.c
> +++ b/drivers/regulator/fan53555.c
> @@ -26,6 +26,9 @@
>  #define FAN53555_VSEL0		0x00
>  #define FAN53555_VSEL1		0x01
>  
> +#define RK8602_VSEL0		0x06
> +#define RK8602_VSEL1		0x07
> +
>  #define TCS4525_VSEL0		0x11
>  #define TCS4525_VSEL1		0x10
>  #define TCS4525_TIME		0x13
> @@ -55,6 +58,7 @@
>  
>  #define FAN53555_NVOLTAGES	64	/* Numbers of voltages */
>  #define FAN53526_NVOLTAGES	128
> +#define RK8602_NVOLTAGES	160
>  
>  #define TCS_VSEL0_MODE		BIT(7)
>  #define TCS_VSEL1_MODE		BIT(6)
> @@ -64,6 +68,8 @@
>  enum fan53555_vendor {
>  	FAN53526_VENDOR_FAIRCHILD = 0,
>  	FAN53555_VENDOR_FAIRCHILD,
> +	FAN53555_VENDOR_ROCKCHIP,	/* RK8600, RK8601 */
> +	RK8602_VENDOR_ROCKCHIP,		/* RK8602, RK8603 */


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

