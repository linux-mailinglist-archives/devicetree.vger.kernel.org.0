Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4221704BEB
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:10:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbjEPLKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:10:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232976AbjEPLJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:09:54 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC496A7B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:22 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3075e802738so12843855f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235327; x=1686827327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HBaLfE0tvW6RemS1Pi3HZJ9JvvIEIVQz9t2hieqzRuU=;
        b=4+eI83pkGDtV3vJM69KFCGPQrzvPA9ENASw6d7LUpdEbFs3XOIvpmI653v+KgfMZ8r
         xzBhDIDRH/RhnrV4E/iztwRIddpyle1XFe1AodxwK8Fh6Kd+OPczMsnjk1juX3hR+m6a
         JfXXURS6x9dU8BFAWqR4LMmvW2c6bE5FMjE6dB8Yjfgz3F7zkwYsdsrwyVVnXgXMgy8z
         Zk+O3We3P6Ral3V8yy1eEVy5rx/M4EZAXvS2SUumnylUrGpub2gWI3he173l8govgzuH
         SFEmBFJK19U5n/Wb0KnuRTnMJ5Pl8Tc5OgHG/Nxpv9UM5CbCTTSRQzt19Jhxcu0zchZe
         PwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235327; x=1686827327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HBaLfE0tvW6RemS1Pi3HZJ9JvvIEIVQz9t2hieqzRuU=;
        b=VdBQgh++f5AsK76/gCtiSbJltLZypZtuhcjRuYgZ9hduekHO3WSZBCx6wE0cMUSv61
         y3A9ntY8gHVZ+cBpwoXgcye+q7LcPkVu+HgKtSLbzevbeeCTT8s+giCa99QZDyGjETpP
         adkGFLYOAC/LssA5LtV5B8YHZ+NlXsu15UkK9hy0lFgS3Q8skl8gefKF5QB7dBAtiiFY
         GW1ZAbtKlN4H+CVx8Pwg2KkHJ1PQy2CSkBLF0pWKK9vZT4DMIBHQCp4gpzq6e1+WzKdk
         mhFzE2Z86MsmH07SZgJegSfZt6nNX39sjElU9Y0PDlzZY8LZb1PoELE8+RMuK/EguO0S
         XJdQ==
X-Gm-Message-State: AC+VfDx2z7dSw2qVzr50PcOktrK7WsjNH0CR6ov7BnZFhZtv7UWYcRiz
        5dwRKyQQBUJ+H3KQK99CULyFgw==
X-Google-Smtp-Source: ACHHUZ5tj4xxYjiSgFh+MF94zb0yzaS7j1BPrs+2GMjR1em6Qjiu9bvUT0QkRRFBuITuEiVWEfKVEA==
X-Received: by 2002:a5d:6751:0:b0:307:7c2d:dc80 with SMTP id l17-20020a5d6751000000b003077c2ddc80mr30227731wrw.34.1684235327727;
        Tue, 16 May 2023 04:08:47 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id p22-20020a7bcc96000000b003f1958eeadcsm1979500wma.17.2023.05.16.04.08.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:08:47 -0700 (PDT)
Message-ID: <22be3e2c-15db-88b7-6b3f-316f09771136@monstr.eu>
Date:   Tue, 16 May 2023 13:08:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 16/23] arm64: zynqmp: Disable USB3.0 for zc1751-xm016-dc2
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Piyush Mehta <piyush.mehta@xilinx.com>,
        Ashok Reddy Soma <ashok.reddy.soma@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1683034376.git.michal.simek@amd.com>
 <ad019501a851c5730427af948b636316f10b2e3b.1683034376.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <ad019501a851c5730427af948b636316f10b2e3b.1683034376.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/2/23 15:35, Michal Simek wrote:
> From: Piyush Mehta <piyush.mehta@xilinx.com>
> 
> The board zynqmp-zc1751-xm016-dc2 support only USB2.0 that's why remove
> USB3.0 DT configuration.
> 
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
> index a2031187d9b3..9e7564235b69 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
> @@ -489,8 +489,6 @@ &usb1 {
>   &dwc3_1 {
>   	status = "okay";
>   	dr_mode = "host";
> -	snps,usb3_lpm_capable;
> -	maximum-speed = "super-speed";
>   };
>   
>   &uart0 {

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
