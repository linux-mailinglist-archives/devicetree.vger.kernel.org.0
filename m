Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8701134E4BD
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 11:50:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231532AbhC3Jtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 05:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbhC3JtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 05:49:20 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CEB4C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 02:49:20 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id o16so15646595wrn.0
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 02:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yoneRTqEG7m96T81STMfMz+9Ivma6Nn+tsD+S27I6eU=;
        b=g8nUvMMty2JIbdUc0nZ9beBZy6k7rr9AvRWDTAYwLbBeu+0SKUy5K2+y8ZgioPheXQ
         OGnhKstc65aPFkHUdKcrEraHBecEiZN3qLBk2V/W3jOrROdo6FfRfMlV1c+Bah9WvJBS
         4km90okvrtAxFUIF3MAtlCfuw87NtQpfHtnkhQHbhaZuq2P/LduEOBtKcvt7affzznaV
         jVGpD7J2KKCkgp8KCIZbqanERhVppTiBPRiGVRUDyJHXRqEIKrkTbewtpaKHHGURIR6J
         bjCQQNX6Ve5ZW0b9sTFPgnxh6dJIf9A8yGG74M9GX9trMTyci1YwUElgaIzptmkJJT8x
         axEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yoneRTqEG7m96T81STMfMz+9Ivma6Nn+tsD+S27I6eU=;
        b=pfVemh0Fqb2g3MHcfqh662BBFtGngYLxXRuVvqpBLTOLmBt1FwQ573godRqxN6S8Dz
         SR3UqOcailgoWhh356PVqa09Fz5asFzx/+cbWMe/Cbe7W1o4TpVICP37QfO/s7tMI+mZ
         pVtIN6W4HgHtRnn1sDe3JTn4YW4J31EBhcONB0gTs2NQSuvwum6urNhKlKQM+L8rpfyb
         YBlJg2B3Xj4te9uQhR3waLfOcEqAhdPQo7u1Mu1odpzPzdOrUq7GvjKMF1gpNtjhhoav
         r9j57eqOw2WHP3Tv0EkukE+lQ2tIH9TCkWDwLWJfk0kRMvBWDGCGiPPwHl3xjRjnPTXV
         RQvg==
X-Gm-Message-State: AOAM531NDfipMy9FFhoRYwuLqR+UH+AUHN6X8xqeo/n3PtfYvtg4U9SB
        Cyw2XUzbx7M9aW7BKJY9B74=
X-Google-Smtp-Source: ABdhPJzgfDNTIYtLvXPjO88v2IHcdrjGIgiz3C2m0vNM3zwp/5LqhQlUSkvCWqp/jhw0KpeV+LYPUg==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr32508775wrv.329.1617097758763;
        Tue, 30 Mar 2021 02:49:18 -0700 (PDT)
Received: from ziggy.stardust ([213.195.126.134])
        by smtp.gmail.com with ESMTPSA id g9sm33109278wrp.14.2021.03.30.02.49.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:49:18 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: mt7622: add ePA/eLNA pinmux for built-in
 WiFi
To:     Ryder Lee <ryder.lee@mediatek.com>
Cc:     Felix Fietkau <nbd@nbd.name>,
        Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
        Shayne Chen <shayne.chen@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <641c5e40f54e7c9c8eaa6be398d7169445b6fede.1617006498.git.ryder.lee@mediatek.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <48f1bb20-38cb-c523-2186-05f7973714a9@gmail.com>
Date:   Tue, 30 Mar 2021 11:49:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <641c5e40f54e7c9c8eaa6be398d7169445b6fede.1617006498.git.ryder.lee@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/03/2021 19:24, Ryder Lee wrote:
> This just illustrates one of possible combinations. User should setup
> the corresponding pins according to the onboard RF data that stores
> in eeprom.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

applied to v5.12-next/dts64
Thanks!

> ---
> change since v2 - add pinctrl-names = "default"
> ---
>  arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
> index 08ad0ffb24df..f2dc850010f1 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
> @@ -495,6 +495,16 @@
>  			groups = "watchdog";
>  		};
>  	};
> +
> +	wmac_pins: wmac-pins {
> +		mux {
> +			function = "antsel";
> +			groups = "antsel0", "antsel1", "antsel2", "antsel3",
> +				 "antsel4", "antsel5", "antsel6", "antsel7",
> +				 "antsel8", "antsel9", "antsel12", "antsel13",
> +				 "antsel14", "antsel15", "antsel16", "antsel17";
> +		};
> +	};
>  };
>  
>  &pwm {
> @@ -559,5 +569,7 @@
>  };
>  
>  &wmac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&wmac_pins>;
>  	status = "okay";
>  };
> 
