Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB2F39A9BC
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 20:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhFCSHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 14:07:25 -0400
Received: from mail-il1-f178.google.com ([209.85.166.178]:43641 "EHLO
        mail-il1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbhFCSHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 14:07:21 -0400
Received: by mail-il1-f178.google.com with SMTP id x18so6413012ila.10
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 11:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6Ob9fN3eHmxejSCkba7i1gC+Yl9GGWt/OzvnuxIALQw=;
        b=paVepX0VnqMe8YBRXCY7eHE/0n6xXvBQNbLJvBmfN3wOMegjaKdslfblqpqiucU+Cp
         fiUpmrDG6u7+ok89LGdVRGozVPyCF9jWnQlFgpJFYMm0/8m3kcwTZ3SFjzknda8UBWvi
         58H8RmovxQR6GpI0A47fN/L2WVkCpxB554lXY+I4r5blY7B8zxX3vomkrE2wHf+Vf4gz
         fyhmUEkfK9GlwcWjteoNileGVMkR/k3qDR8tvoL3TB0DFKwwWUYwYk2Br+6eOv5GkCbq
         6mOv0IuRSwF9+sPdpC608OFuupKa5CV2P2JqKhEDyLmAsUn960ROdvuYUVsqfZaGOeFl
         SuzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6Ob9fN3eHmxejSCkba7i1gC+Yl9GGWt/OzvnuxIALQw=;
        b=kzlNi1rKwSiQM206sCAJyqe+KGB/yuPg4CWXtxBDUVyu+kOMxxbKSxdUmjDPEyDYKa
         bUTsydR9TNCaOoQQcozzOxp4dBgibbYoauQpnljBTBrCS94Ezcd8SZHGIOs+IC0xI7+t
         GmMJtYj94Mwsv9o/B7KTY/tOCj++dNCEPgKPmu2BtwzKeIaW4tKoOJrkHj9izMrE2m7t
         Y5HGxiOnS2LYst8xZGDrLSYIw+8y2wFvo9TEwYMr/Fglok09fKiGnH75EOHMROAgxyPS
         3e+tro3BF2AGFVZ+uKSoNSDUw0FKqXxYiqcriOsyQamByUvmOGWWScT7ISluURZyT7+1
         UOOA==
X-Gm-Message-State: AOAM532NkdOrsW6LMw7ZV1P4PNboMZ1khtSiYyE7tbxqVTLCSEETdDll
        kTX7IDW9ne8xg7g1NkidfC3xTg==
X-Google-Smtp-Source: ABdhPJzGAIJoYGGO+qgsBYG8XqqUFYBQYiAq0Zbx+HUR+ZZ8zj9HkilaFJyuTtxWZMynAWzYbbGIgQ==
X-Received: by 2002:a92:608:: with SMTP id x8mr461607ilg.217.1622743417937;
        Thu, 03 Jun 2021 11:03:37 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id r11sm2210347ilt.81.2021.06.03.11.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 11:03:37 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-mtp: enable IPA
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     evgreen@chromium.org, subashab@codeaurora.org,
        cpratapa@codeaurora.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20200519123258.29228-1-elder@linaro.org>
Message-ID: <a9904eae-3de3-8b40-f0be-790c787133bc@linaro.org>
Date:   Thu, 3 Jun 2021 13:03:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20200519123258.29228-1-elder@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/19/20 7:32 AM, Alex Elder wrote:
> Enable IPA on the SDM845 MTP.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
> 
> v2: This device uses the AP--not the modem--for early initialization.

Ping.  This patch didn't get accepted (over a year ago!),
but it still applies cleanly on top-of-tree.  If you
would like me to re-send it, let me know.  Thanks.

https://lore.kernel.org/lkml/20200519123258.29228-1-elder@linaro.org/

					-Alex

> 
>   arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> index 1372fe8601f5..91ede9296aff 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
> @@ -448,6 +448,11 @@
>   	clock-frequency = <400000>;
>   };
>   
> +&ipa {
> +	status = "okay";
> +	memory-region = <&ipa_fw_mem>;
> +};
> +
>   &mdss {
>   	status = "okay";
>   };
> 

