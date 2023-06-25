Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBC773D05B
	for <lists+devicetree@lfdr.de>; Sun, 25 Jun 2023 13:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231688AbjFYLUR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 07:20:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbjFYLUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 07:20:16 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26A8D18E
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 04:20:12 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-98802908fedso275311666b.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 04:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687692010; x=1690284010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ogxgi78me0C8+k51K80WUPebZTg0rwpJPZ+pAHZVLqM=;
        b=Ban6/yViO34/JySLYXej4IHXRFs6TU2pXVPJdVdDZEZYRPoNhR3/40Ej51nQVPsEog
         eZ99qwY8PpuefkZE7AUfi7i4sv6AfjyB7Dg8fZXWHNjPJW2FUAa4bYOP1M3yWQknxuid
         oZGL3eA/VspMRO/p0qIkeEsoATOVUX8D5MlBKO0YI9XjJYKtL4Jtb4tnA9114EVmhOYa
         xyZm7pBJvkVFIY3EavD9qLC8TsB90SOw6XUZgvoAW9H/SrtdiG2ipk40eZQSYAvgu1cE
         mp4ONoR632qZFQ4U7WBTI8Ng9N/B4wjKxaOeBJQqbidAFMrNqwiK934fdwrMQ1p2fK1d
         az4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687692010; x=1690284010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ogxgi78me0C8+k51K80WUPebZTg0rwpJPZ+pAHZVLqM=;
        b=TKCIImxQb7cL3WJjXl3dPCeb4vOzOQ09YWYMWbBGXaCmqiY26VQnyuvAqk8T9LTMfs
         KplFawYFeLCUdUcf+KEz5dCuEIHObLp1eY9VVZkUwZdVH5XgF3xVrgKmDTGTSGj73vUe
         gcFJOT4wuBa/Q+U3JHpBWGolA/A/ojxhHNcgnVnG2EHCCtnfoDWaPQBHz6xSaRtim8W1
         czBSCOYTcjFPVdo/9Jihdp5QxYjwmA+M/JVcPob0MXlSb63qxrzhYld5aIfFGokRWUni
         cbO/vWo8cMwedZYGsD9iL6IEj/+7QkPrzz/WjeCdDzy5kMsW+n6N4t7ublFZ3FLr7k/L
         +c6A==
X-Gm-Message-State: AC+VfDxflwtKSxwQT1Q81xGo3nRCAOsN2zvvo3KqwV4YNQI6cYIDxnog
        kBHOH/J2hndxqrgGtUr42jiYJ2GUwHKkxflUdNk=
X-Google-Smtp-Source: ACHHUZ53jzo83mqUM7179gawevad5ZOQygopwowZ8Sw5ynAMmSpEhud2BW+vZacufCM+zIFWiiGE0A==
X-Received: by 2002:a17:906:e87:b0:98d:8c5b:2156 with SMTP id p7-20020a1709060e8700b0098d8c5b2156mr4585417ejf.19.1687692010645;
        Sun, 25 Jun 2023 04:20:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id k19-20020a1709061c1300b00988b32160dfsm1936345ejg.222.2023.06.25.04.20.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jun 2023 04:20:10 -0700 (PDT)
Message-ID: <60efe832-b982-7ea7-abd3-5e9bfd41d064@linaro.org>
Date:   Sun, 25 Jun 2023 13:20:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 4/4] arm64: dts: imx93: enable CM33 for 11x11 EVK
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20230625105528.4057850-1-peng.fan@oss.nxp.com>
 <20230625105528.4057850-5-peng.fan@oss.nxp.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230625105528.4057850-5-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/06/2023 12:55, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add reserved memory node for rpmsg
> Enable CM33 node with mailbox property included for doorbell.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

...

>  	};
>  
>  	reg_vref_1v8: regulator-adc-vref {
> @@ -107,6 +139,16 @@ &lpuart1 { /* console */
>  	status = "okay";
>  };
>  
> +&{/remoteproc-cm33} {

That's not proper reference by label.

> +	mbox-names = "tx", "rx", "rxdb";
> +	mboxes = <&mu1 0 1
> +		  &mu1 1 1
> +		  &mu1 3 1>;

Three entries, not one. Anyway, why mboxes depend on the board? This is
quite surprising.

Best regards,
Krzysztof

