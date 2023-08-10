Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9479E777E8B
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 18:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjHJQpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 12:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230327AbjHJQpQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 12:45:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D13D910C4
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 09:45:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4B3996246A
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 16:45:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F56C433C8;
        Thu, 10 Aug 2023 16:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691685914;
        bh=/D8HAmFPKfG62pEWoTGQ+387hJwjgm8M1vwSOmAw7vc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iAFrNsSfY6JCWaLIOsU+cAl/7Vl5CHz94p1fc6L1aPRNL5GrRN+f1hTOgZlh/l8zC
         yLFNt9Ze+Cu1I+j/hch5c1bRbaFzyCfOiSUSnVAu0KAQjpWjw2hyoMYtS0Mw3SWiQE
         HEwEUZpqiZwQlKh2FoWyNp8DGn9DovOaeoa61GyTUOX360XwcjhJfxbyBvy/UBXjDZ
         gAeU5q8uLI7xeq5Q+oCM+BB9/lZ9WIW7FD3oTKmg0saVerAPMEqKpBHz8C5VN8BM5K
         JU1pL6QGMM8LjamI3dDQsS3w3k10/N300NgeKI5UN+3SXTnSlleXITKqKXeqWu5q9t
         7z2dvzQ2o+o1w==
Date:   Fri, 11 Aug 2023 00:33:32 +0800
From:   Jisheng Zhang <jszhang@kernel.org>
To:     guoren@kernel.org
Cc:     wefu@redhat.com, conor@kernel.org, jrtc27@jrtc27.com,
        anup@brainfault.org, samuel@sholland.org, bmeng.cn@gmail.com,
        opensbi@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
Message-ID: <ZNURXBKkYdiWLanf@xhacker>
References: <20230808132958.1097873-1-guoren@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230808132958.1097873-1-guoren@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> From: Guo Ren <guoren@linux.alibaba.com>
> 
> Add detailed information about thead,reset-sample driver, and improve
> usage documentation.
> 
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> Signed-off-by: Guo Ren <guoren@kernel.org>
> ---
>  docs/platform/thead-c9xx.md | 87 ++++++++++++++++++++++++++++---------
>  1 file changed, 67 insertions(+), 20 deletions(-)
> 
> diff --git a/docs/platform/thead-c9xx.md b/docs/platform/thead-c9xx.md
> index 8bb9e91f1a9b..fe05fc5bb85a 100644
> --- a/docs/platform/thead-c9xx.md
> +++ b/docs/platform/thead-c9xx.md
> @@ -1,8 +1,8 @@
> -T-HEAD C9xx Series Processors
> -=============================
> +T-HEAD Processors
> +=================
>  
> -The **C9xx** series processors are high-performance RISC-V architecture
> -multi-core processors with AI vector acceleration engine.
> +T-HEAD provides high-performance RISC-V architecture multi-core
> +processors with AI vector acceleration engine.
>  
>  For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
>  
> @@ -12,15 +12,75 @@ To build the platform-specific library and firmware images, provide the
>  Platform Options
>  ----------------
>  
> -The *T-HEAD C9xx* does not have any platform-specific compile options
> +The *T-HEAD CPU* does not have any platform-specific compile options
>  because it uses generic platform.
>  
>  ```
>  CROSS_COMPILE=riscv64-linux-gnu- PLATFORM=generic /usr/bin/make
>  ```
>  
> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will usually have
> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible strings.
> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will usually have
> +"thead,reset-sample" compatible strings. The "thead,reset-sample" is a T-HEAD
> +custom driver for the SMP system bootup; the single-core system doesn't need
> +it.
> +
> +T-HEAD Fdt Reset Driver Introduction
> +------------------------------------
> +
> +Every T-HEAD CPU provides a reset control signal and reset address signals.
> + - Reset address signal determines CPU where to start up.
> + - Reset control signal releases CPU from reset state and begins to execute
> +   at reset address.
> +
> +Many vendors would gather these signals into SoC control registers. These
> +register designs are similar but with different base addresses and bits
> +definitions. We only provide standard opensbi, Linux binaries, and jtag gdbinit
> +script to simplify Linux booting at the FPGA stage. The fdt reset driver helps
> +users bring up their SMP system quickly with the below settings:

+DT maintainers and DT list.

I can submit a dt-binding for this if DT maintainers agree with below
properties. Could you please help review?

> +
> + - entry-reg:
> +	The base address to store reset address value
> +
> + - entry-cnt:
> +	The numbers of entry-reg, all of them set the same reset address
> +
> + - control-reg:
> +	The base address to reset the controller
> +
> + - control-val:
> +	Write which bits of control-reg for booting
> +
> + - csr-copy:
> +	This array determines which csrs to copy from primary hart to the
> +	secondary harts, which are set in sequence from left to right. The
> +	secondary harts should keep the same setting as the primary hart.
> +	These settings are also the first part of the bootup instructions
> +	for secondary harts.
> +
> + - using-csr-reset:
> +	A legacy reset controller for the SMP system, but abandoned in the
> +	latest T-HEAD processors.
> +
> +Here is the dts example:
> +```
> +	reset: reset-sample {
> +		compatible = "thead,reset-sample";
> +		entry-reg = <0xff 0xff019050>;
> +		entry-cnt = <4>;
> +		control-reg = <0xff 0xff015004>;
> +		control-val = <0x1c>;
> +		csr-copy = <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> +	};
> +```
> +
> +Legacy dts example (Abandoned):
> +```
> +	reset: reset-sample {
> +		compatible = "thead,reset-sample";
> +		using-csr-reset;
> +		csr-copy = <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> +	};
> +```
>  
>  DTS Example1: (Single core, eg: Allwinner D1 - c906)
>  ----------------------------------------------------
> @@ -181,16 +241,3 @@ DTS Example2: (Multi cores with soc reset-regs)
>  		};
>  	}
>  ```
> -
> -DTS Example2: (Multi cores with old reset csrs)
> ------------------------------------------------
> -```
> -	reset: reset-sample {
> -		compatible = "thead,reset-sample";
> -		using-csr-reset;
> -		csr-copy = <0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc
> -			    0x3b0 0x3b1 0x3b2 0x3b3
> -			    0x3b4 0x3b5 0x3b6 0x3b7
> -			    0x3a0>;
> -	};
> -```
> -- 
> 2.36.1
> 
