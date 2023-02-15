Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C421A6972A6
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 01:25:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjBOAZw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 19:25:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230389AbjBOAZw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 19:25:52 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A6B2D14D
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 16:25:50 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id n2so11480072pfo.3
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 16:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=13xGsV2jjmQG8zQgYM+MlutjbCojfUR9ZAZxMQUAu6A=;
        b=VbDHSuKi2kZRWENSk2pFNf3FMtXUOOe3VDfIEKUiwUU2+nF2+OCaaPOuXdYtNyUpLQ
         9Xd6EO7n+xMbaBqmbVbZrsA/QZ0yVnFFzEFzoEbgloRQvcRU+Ki24BDOV+MfdQ2jBar5
         eiZqKerrZbTyGjo6xBnZQi2ut6PhyieHf/h2xGezwbRP9mthdu/8cMTCBWAzZXPR2gdR
         PiN1UI8bVN+UgiaeNJCUWgfamW6ad7EVUNUwK7ChPOaz9F0R9pHDUsTzhgm5s+peYflE
         7CBDOVmIbnPaWF8jdyyrURj3MGG7bRXnNdgk62B6mB12/0Wng4KDkH5wFr2fI4oR7OxN
         joRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=13xGsV2jjmQG8zQgYM+MlutjbCojfUR9ZAZxMQUAu6A=;
        b=55LFdP9fqje7PXja1QMxVx0XHH7wg+NBFOA3n610rM+w8IzDjQ/txNZUiTP2xAZbsq
         dXaU+LEXL+c9+NgveFB/k8dzY6NhrX8BRqVucioLeBergY+THqwR3m0tWKtb7ROnuZbn
         4xMY/nDqk4XNXXZjfWagb06hRUFxsVrrIQNz/QkNkzvIP7Wx27mA9GzMscpjGaDILY8N
         MSmrQ4QC14LgZKlaO9aPE1ySeX5/etGXw9q7ynlWbYaQQpc5ruqqxwZNdgR8gcd8Pb09
         LVjj6JyZMohTgvZb1t1AT2P/899xXMqAEtHa3vpZRaxJwnTS1a/4OPL7LbOxiEejpeP2
         hbnw==
X-Gm-Message-State: AO0yUKXLdSDgp0siGiRRVaiqlnCnkfmEG55ItGpnQVMCQicTcrim7qIW
        yQSeyUbEPkq5BiUGZN0kUmxrWw==
X-Google-Smtp-Source: AK7set/RfDAmrDwKus+3EwyrpiXyachl6rM8SdJg8/oDC0GOfqqp5AasjoE8kO/Zq+15hhwXvqWA4Q==
X-Received: by 2002:aa7:9581:0:b0:5a8:65e4:aba9 with SMTP id z1-20020aa79581000000b005a865e4aba9mr55940pfj.18.1676420750261;
        Tue, 14 Feb 2023 16:25:50 -0800 (PST)
Received: from localhost ([135.180.226.51])
        by smtp.gmail.com with ESMTPSA id i22-20020aa787d6000000b005998a75dbc5sm10351038pfo.2.2023.02.14.16.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 16:25:49 -0800 (PST)
Date:   Tue, 14 Feb 2023 16:25:49 -0800 (PST)
X-Google-Original-Date: Tue, 14 Feb 2023 16:25:45 PST (-0800)
Subject:     Re: [PATCH 4/4] riscv: dts: allwinner: d1: Add video engine node
In-Reply-To: <4767366.GXAFRqVoOG@jernej-laptop>
CC:     paul.kocialkowski@bootlin.com, samuel@sholland.org, wens@csie.org,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, aou@eecs.berkeley.edu,
        Conor Dooley <conor@kernel.org>,
        Greg KH <gregkh@linuxfoundation.org>, mripard@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-staging@lists.linux.dev,
        linux-sunxi@lists.linux.dev
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     jernej.skrabec@gmail.com
Message-ID: <mhng-e29729d8-6f1e-42a5-bff6-852a16626cd4@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Jan 2023 08:21:58 PST (-0800), jernej.skrabec@gmail.com wrote:
> Dne četrtek, 05. januar 2023 ob 15:38:36 CET je Samuel Holland napisal(a):
>> Hi Paul,
>> 
>> On 1/5/23 04:11, Paul Kocialkowski wrote:
>> > On Sat 31 Dec 22, 10:46, Samuel Holland wrote:
>> >> D1 contains a video engine which is supported by the Cedrus driver.
>> > 
>> > Does it work "outside the box" without power domain management?
>> > If not, it might be a bit confusing to add the node at this point.
>> 
>> Yes, it does. All of the power domains are enabled by default. However,
>> if the PPU series is merged first, I will respin this to include the
>> power-domains property from the beginning.
>
> I would rather see that merged before and having complete node right away.
>
> I've been away, but I'll merge everything that's ready for sunxi tree until 
> end of the weekend.

Just checking up on this one, as it's still in the RISC-V patchwork but 
I don't see it in linux-next.  No big deal on my end, I just don't want 
to be dropping the ball here.

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

In case you were waiting for it (in which case sorry).

>
> Best regards,
> Jernej
>
>> 
>> Regards,
>> Samuel
>> 
>> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
>> >> ---
>> >> 
>> >>  arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi | 11 +++++++++++
>> >>  1 file changed, 11 insertions(+)
>> >> 
>> >> diff --git a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
>> >> b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi index
>> >> dff363a3c934..4bd374279155 100644
>> >> --- a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
>> >> +++ b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
>> >> @@ -34,6 +34,17 @@ soc {
>> >> 
>> >>  		#address-cells = <1>;
>> >>  		#size-cells = <1>;
>> >> 
>> >> +		ve: video-codec@1c0e000 {
>> >> +			compatible = "allwinner,sun20i-d1-video-
> engine";
>> >> +			reg = <0x1c0e000 0x2000>;
>> >> +			interrupts = <SOC_PERIPHERAL_IRQ(66) 
> IRQ_TYPE_LEVEL_HIGH>;
>> >> +			clocks = <&ccu CLK_BUS_VE>,
>> >> +				 <&ccu CLK_VE>,
>> >> +				 <&ccu CLK_MBUS_VE>;
>> >> +			clock-names = "ahb", "mod", "ram";
>> >> +			resets = <&ccu RST_BUS_VE>;
>> >> +		};
>> >> +
>> >> 
>> >>  		pio: pinctrl@2000000 {
>> >>  		
>> >>  			compatible = "allwinner,sun20i-d1-pinctrl";
>> >>  			reg = <0x2000000 0x800>;
