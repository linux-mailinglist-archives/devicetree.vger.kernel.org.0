Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB314F1051
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 09:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238825AbiDDHxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 03:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377844AbiDDHwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 03:52:47 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5B13B290
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 00:50:39 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j12so5502209wrb.5
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 00:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=CVOw/LnzR+FU3Wl5ZYv0rtjB0R73JkKUrPjFPYHJa+k=;
        b=C3LFox7eE6dCp7eKT1/ySVqfeBAwlHmOr0wnCj4BjQtUusIomrrRsNuWhRlewdgW6g
         T7i0eyLqpTwupDf295JlqdxJqkVPEW/uixETapJQwfHB6ocEXYbA9CY6noSPlJihQfQV
         9WL1K+IGfG2/hc4IhNdLzqf7DLtz8r7Qfq5Gi0P+iaUcpmq/kHX4BwaDrIte4p3iQ3I3
         pdV2QqdEqmwrNR1bnJxN4et1gWG29konh4QssyGchU+l3/PXaDeAZ4SRsSsdk0wtWxuX
         au3dEGTNaTXQfoqNI6czKs6ZNwvhTE98j2NhLgHAPuD3BbFx7bhR1MLqC/o4VUa9PfYp
         /DOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=CVOw/LnzR+FU3Wl5ZYv0rtjB0R73JkKUrPjFPYHJa+k=;
        b=AWWD4/2WLErnfgLVcOEGfb4avjxvfUTX17EJasqt81HLCaOuJopBhjm9XIbhAHhlTG
         oJH4xYmg9ys0A8NBRMy67vZ7Mw0DM7PW4+a5FF4Q2xCyYx0O8eO2DgiCG5f/oo0XV9HK
         cM+4y+ELEJtpM0QnXKNHHcdcoogjxwOk57tsIMry8Ptpd9Zrtwv1qZMo4PlKVjLgCnAG
         digdJv81s/e+m06TLBApp4HUhjRrnmEU+Vn54GLfVIHiu94UXXIFhN6zlLDGp2gwZgtp
         lWVOPQYmbXnPGOMPpJmmv5Z5bpvqjxBgdea1WbL1RtHKL+5k9BNLVkkul5JE4T0+zMUv
         M1RQ==
X-Gm-Message-State: AOAM5319Gj9U9mJaMKs0iM5enynr/GXIICzh7nN3TFp06vkwfaDdqsZk
        z3wuGKr04b7MyXjpPG/NDq4F8Q==
X-Google-Smtp-Source: ABdhPJw6n7rlU6gSwNroZmpobyR6C2fXEEog4wsvWJs4pRqrcPYltbz1802lWVLzbcF/oLhax9QTow==
X-Received: by 2002:adf:e2cb:0:b0:203:7564:1076 with SMTP id d11-20020adfe2cb000000b0020375641076mr16279951wrj.199.1649058638174;
        Mon, 04 Apr 2022 00:50:38 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:1add:1b28:2457:eb46? ([2001:861:44c0:66c0:1add:1b28:2457:eb46])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d6da7000000b00203d9d1875bsm9526826wrs.73.2022.04.04.00.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 00:50:37 -0700 (PDT)
Message-ID: <ccc45d36-0c87-742c-4105-56820b058040@baylibre.com>
Date:   Mon, 4 Apr 2022 09:50:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/2] arm64: dts: meson: remove CPU opps below 1GHz for
 SM1 boards
Content-Language: en-US
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220210100638.19130-1-christianshewitt@gmail.com>
 <20220210100638.19130-3-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220210100638.19130-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2022 11:06, Christian Hewitt wrote:
> Amlogic SM1 devices experience CPU stalls and random board wedges when
> the system idles and CPU cores clock down to lower opp points. Recent
> vendor kernels include a change to remove 100-250MHz and other distro
> sources also remove the 500/667MHz points. Unless all 100-667Mhz opps
> are removed or the CPU governor forced to performance stalls are still
> observed, so let's remove them to improve stability and uptime.
> 
> Fixes: 3d9e76483049 ("arm64: dts: meson-sm1-sei610: enable DVFS")
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 20 --------------------
>   1 file changed, 20 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> index 3c07a89bfd27..80737731af3f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> @@ -95,26 +95,6 @@
>   		compatible = "operating-points-v2";
>   		opp-shared;
>   
> -		opp-100000000 {
> -			opp-hz = /bits/ 64 <100000000>;
> -			opp-microvolt = <730000>;
> -		};
> -
> -		opp-250000000 {
> -			opp-hz = /bits/ 64 <250000000>;
> -			opp-microvolt = <730000>;
> -		};
> -
> -		opp-500000000 {
> -			opp-hz = /bits/ 64 <500000000>;
> -			opp-microvolt = <730000>;
> -		};
> -
> -		opp-667000000 {
> -			opp-hz = /bits/ 64 <666666666>;
> -			opp-microvolt = <750000>;
> -		};
> -
>   		opp-1000000000 {
>   			opp-hz = /bits/ 64 <1000000000>;
>   			opp-microvolt = <770000>;

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
