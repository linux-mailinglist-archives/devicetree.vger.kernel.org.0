Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCC3C4FA713
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 13:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239396AbiDILP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 07:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiDILP0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 07:15:26 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B2123C4AF
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 04:13:19 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k23so16395632wrd.8
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 04:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TuErQkuuEOn8WB2O6luQVNrNid4jGQ5GmHFTv2toygQ=;
        b=UevEA2bHk+RlaXpKoOQS6U5rDandt76o4X1EA2r1oGvu1CSddUA/WAKRoQrX2lrMv8
         sMHaGhMTuX5RYKsApTv77kh6iaGtVWywJ/P+nN0rD3RcoDYn5w5lwf8VJdoBorFAslXz
         Reb97s6TjVI6L0RZkVuF11BidYlSpYAersuVnW4n+wWNod5+40uBh98kPU2If71tN141
         GeRykuhDPSM2RdMTqL9By3vd89mO4jBoCDbLhoCDSFU8ZK2zFBDpGG0vmOFRZM9X+sk5
         CIVk4uXeeL1rJzTzkQhwWLxmdZ1MgysRPCiXg1m8IQzwo+JW+JhnfABGjtMPxx+LLZbD
         6goQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TuErQkuuEOn8WB2O6luQVNrNid4jGQ5GmHFTv2toygQ=;
        b=LNjpSleSi0YNIPnO6V+mjyWXb1JLbdPrl0N2bwfukKYMVDDtxo18EIEs21IpahI0OE
         KL2wBRMkkIT2dKDoOSxRh6PLqp2D91uss5HMy3I5YkpQ138j44DEyhj1CVw/K7TT8PYE
         8bkcTO99iU/nfqbwLXh7YY+ZE7T89tL+aLK7Ns5XwZEi0cK8AZ7eSFxM/aH2ZbK1spfj
         Ddw88ZZkLJpkpHRrjrGWNnlg7kbuWDt6dUsz2Z2D/xKc/KWXXPnPCNxltWO0LpTGwGeO
         nPqQwbuGPhH5ae4CJm8G8lvkn3rwfZqkYsYO75o7vYmZUdxeKjTZWkFJLIRgYJ1rNQ3i
         4Dqg==
X-Gm-Message-State: AOAM533lsSdaGC4RLlz1j9BxVNDSLkOJLrdemBcNKwQi7JtKG0u1ZsNH
        2KFfPcvkj0li0PeJL11H3VLH3btj+h4pVlaG
X-Google-Smtp-Source: ABdhPJyrcbW/Mtbb4wdNurtcN0Yq1yspudDmZbQ0PZ3Ft3My8q+TafmaVYwLRl8VkABsFidZNsdYqQ==
X-Received: by 2002:adf:ebd0:0:b0:1e3:f9b:7b77 with SMTP id v16-20020adfebd0000000b001e30f9b7b77mr17496157wrn.691.1649502798058;
        Sat, 09 Apr 2022 04:13:18 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p18-20020adfba92000000b001e4ae791663sm21646403wrg.62.2022.04.09.04.13.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 04:13:17 -0700 (PDT)
Message-ID: <e905896e-335d-a88a-1961-d17b92e46585@linaro.org>
Date:   Sat, 9 Apr 2022 13:13:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 05/18] MIPS: DTS: jz4780: fix pinctrl as reported by
 dtbscheck
Content-Language: en-US
To:     "H. Nikolaus Schaller" <hns@goldelico.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org, letux-kernel@openphoenux.org
References: <cover.1649443080.git.hns@goldelico.com>
 <1941bc4ed553b27f399ad00ea61ff2b0237d14e3.1649443080.git.hns@goldelico.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1941bc4ed553b27f399ad00ea61ff2b0237d14e3.1649443080.git.hns@goldelico.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 20:37, H. Nikolaus Schaller wrote:
> arch/mips/boot/dts/ingenic/ci20.dtb: pin-controller@10010000: $nodename:0: 'pin-controller@10010000' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
> 	From schema: Documentation/devicetree/bindings/pinctrl/ingenic,pinctrl.yaml
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/mips/boot/dts/ingenic/jz4780.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/boot/dts/ingenic/jz4780.dtsi b/arch/mips/boot/dts/ingenic/jz4780.dtsi
> index 5f44cf004d473..b5299eaffb84a 100644
> --- a/arch/mips/boot/dts/ingenic/jz4780.dtsi
> +++ b/arch/mips/boot/dts/ingenic/jz4780.dtsi
> @@ -155,7 +155,7 @@ rtc_dev: rtc@10003000 {
>  		clock-names = "rtc";
>  	};
>  
> -	pinctrl: pin-controller@10010000 {
> +	pinctrl: pinctrl@10010000 {

Do it once for all DTSes, not one file at a time. There are four more
places with this.

Best regards,
Krzysztof
