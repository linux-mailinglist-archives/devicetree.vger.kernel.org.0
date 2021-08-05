Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD703E10DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:08:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239010AbhHEJIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236274AbhHEJIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:08:36 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8AEC061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:08:22 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id t7-20020a17090a5d87b029017807007f23so9978488pji.5
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R1clOQ63eGZkAO58HLkeL3NLmGoxIU6BEOgi6m3wIWc=;
        b=OM0fIkH3Lr+Ksaz9eWoeHYs+CeN5HqtXaqhhH09lAzKb0SD1qWtk8I196La5dbYsEV
         MNTxuxRfTdsk92SDa1wbp40D061cSXhv9Fix8am4oHylNNruVg2wxAh1SHdNMcaAAS3f
         3aV86BHpZBcE0iwubpIhHGSfCSHCB2xQwlo4D/MF8fdYmzjEYlcc5NNR+/MhJzVuJhTJ
         +ZSOjm4A+NdyL70rjry83yHagp9Hesu8qCBRzaGGqqT6i61KvKrmNCVBY4RkkknAaA6O
         PNGMQh756yunJ19WHRbjjQuugIZOj2xxBt+NGkaBQWQOIK4yQQcWNZA4hkwJEVsisQOX
         2V8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R1clOQ63eGZkAO58HLkeL3NLmGoxIU6BEOgi6m3wIWc=;
        b=TcaJL4oO1GHqRjNIWQHntXRSJ605nksW4Cw3zcPADlxbXGZnu1kOe+q4feFWIVfX2Q
         RN0XhGwiSiIFk6AAUGD2fqw4cSIZ9FXKXEAKCUk+XX4XaDBpPn5AucDLRVhTMP6hdTOG
         XEdaFGv3c27Jl+a4QRIpJbuZu9sTi6ZoGlUYq+nUIUJSPUn9bCzO5meqatbdf7MjeoQd
         0jeA1itk4Elc1P5BVfAmlPOgO7KFw8NyeGhh106Ymqhgpa3F3euv649x6PvqnXx564ss
         fBtQFLvj2/3UaON1h0y3pmexqS4U24NtCUJMQxNpgg3Rrz2Fp8HLTlX1zwT6ep1J4BGM
         5Olw==
X-Gm-Message-State: AOAM5304ddaX9M4TR4Wf6/qjGz2/UexuQOohvHDFhkIQFE5Q88hYGB7H
        3WwVD0OeD2zWasbBwiy42Rc=
X-Google-Smtp-Source: ABdhPJzkqBLNTsl8JVe/7iRZG+9nn204XXYg2GFRyUdeWq/6MIP3uIgn9IIKBVhKxdvWmK8uQEcmJQ==
X-Received: by 2002:a63:1962:: with SMTP id 34mr198969pgz.14.1628154501520;
        Thu, 05 Aug 2021 02:08:21 -0700 (PDT)
Received: from [192.168.1.22] (amarseille-551-1-7-65.w92-145.abo.wanadoo.fr. [92.145.152.65])
        by smtp.gmail.com with ESMTPSA id a12sm6053710pfg.120.2021.08.05.02.08.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:08:21 -0700 (PDT)
Subject: Re: [PATCH 2/9] ARM: dts: bcm2711: fix MDIO #address- and #size-cells
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
 <1627820932-7247-3-git-send-email-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4ebd90ac-2845-2ad8-5f77-6ec44cbfc6b7@gmail.com>
Date:   Thu, 5 Aug 2021 02:08:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627820932-7247-3-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/1/2021 5:28 AM, Stefan Wahren wrote:
> The values of #address-cells and #size-cells are swapped. Fix this
> and avoid the following DT schema warnings for mdio@e14:
> 
>   #address-cells:0:0: 1 was expected
>   #size-cells:0:0: 0 was expected
> 
> Fixes: be8af7a9e3cc ("ARM: dts: bcm2711-rpi-4: Enable GENET support")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Yes this was definitively an error thanks!

> ---
>   arch/arm/boot/dts/bcm2711.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index afe0ef8..55022fc 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -532,8 +532,8 @@
>   				compatible = "brcm,genet-mdio-v5";
>   				reg = <0xe14 0x8>;
>   				reg-names = "mdio";
> -				#address-cells = <0x0>;
> -				#size-cells = <0x1>;
> +				#address-cells = <0x1>;
> +				#size-cells = <0x0>;
>   			};
>   		};
>   	};
> 

-- 
Florian
