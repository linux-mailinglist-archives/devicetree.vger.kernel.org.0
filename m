Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6B6F704BF2
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232576AbjEPLKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:10:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232796AbjEPLJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:09:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A53198E
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-306f2b42a86so9218325f8f.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20221208.gappssmtp.com; s=20221208; t=1684235293; x=1686827293;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GvUtsqxwUBxEduktYm90a9DI2Ym2KxgfK4g/KyrkNvs=;
        b=Lz4z/oRS9nrBW0ySodiTD6ILnmEdAbuhI4pzjD+/t5RjFd2Y/QXGcpARTQ7NxhEY/0
         g8ijmaq5lj64CFinKjFbTWMpYBEW1DGazZsKx4tXX7EzO7BrU1bZquNY1anAJV0aLS4W
         HQnE8Yw3iHYVovSqV/Y7au1EYT/jlIJ0oydBCGUFzNf60S6kyncd2JvEA0qhjfJSkdWV
         xO8guNWUmyxklgMSNkleAASo/1LZco18OpMXlWZRaGWDYX7gmaVSBaa0QNPA1fKRNQTk
         P9cy7yWHMR9t+T5F7JCP5Mh+Z8Kt3/48Da2BJf3qUU4y+rNEdhPAM67NiWZ+NC/mqvZi
         uiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684235293; x=1686827293;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GvUtsqxwUBxEduktYm90a9DI2Ym2KxgfK4g/KyrkNvs=;
        b=hR4XODG7P0m67ocYvEhSPoXZXPGzll44xpBGO9vN482JklQz3yHiN0i3PzE6BoU2Vc
         TVRP8dyoWGeiG4F5U1mQW0XHkq9/QU+20o9mg2TJx7PJGuAzoKG6Ktn2K33utUROy3kk
         JgBCuZynllN14PqEpFr38OyVenPj74dVaV6GYrJXF8NPxDMdtaF5Ze5RqOmepecY9kfU
         E/qXp2uIjOhIaycEEBA2b0vriEVT8mr0DvEXpJAvJhtm22WDEtHXjx8qealN+9QBXIC/
         e5jj8F/EACnP9TrDhJDMJOyxKsKWR/GqNKx9uvk4iZYe14xN12t1Jd7HYG27emvCuBM5
         7p2A==
X-Gm-Message-State: AC+VfDxp3ATqhkCTtwhbBjgMZRKqxn8HmPaPo9I5aO5jE01PUD1Z7QOB
        LwYxfNx3AZM5X0frYNXy8Z7itg==
X-Google-Smtp-Source: ACHHUZ5YlYEOT4fEyl+lnMnpcRF+ux3nPufNvzUP+2xYOo5ZQl4kEFEpNMRsLt/XyxWUyr591YPhmw==
X-Received: by 2002:a5d:5308:0:b0:306:3a47:cd78 with SMTP id e8-20020a5d5308000000b003063a47cd78mr25335347wrv.71.1684235293328;
        Tue, 16 May 2023 04:08:13 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id h16-20020a5d4fd0000000b00306344eaebfsm2235387wrw.28.2023.05.16.04.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:08:12 -0700 (PDT)
Message-ID: <cd85e177-df40-2488-ac5c-93149cabbda6@monstr.eu>
Date:   Tue, 16 May 2023 13:08:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 14/23] arm64: zynqmp: Add gpio labels for modepin gpio
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Parth Gajjar <parth.gajjar@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        Vishal Sagar <vishal.sagar@amd.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1683034376.git.michal.simek@amd.com>
 <12b2fcd94e528c8ca7117f6741aae36b5942b430.1683034376.git.michal.simek@amd.com>
From:   Michal Simek <monstr@monstr.eu>
In-Reply-To: <12b2fcd94e528c8ca7117f6741aae36b5942b430.1683034376.git.michal.simek@amd.com>
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
> Using label helps with better chip identification.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>   arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> index cb3e5c06fdc5..c206021cccf7 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> @@ -77,6 +77,10 @@ ds36-led {
>   	};
>   };
>   
> +&modepin_gpio {
> +	label = "modepin";
> +};
> +
>   &uart1 { /* MIO36/MIO37 */
>   	status = "okay";
>   };

Applied.
M

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP/Versal ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal/Versal NET SoCs
TF-A maintainer - Xilinx ZynqMP/Versal/Versal NET SoCs
