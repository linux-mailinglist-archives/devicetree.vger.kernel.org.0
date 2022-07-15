Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94680576611
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 19:32:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbiGORcR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 13:32:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbiGORcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 13:32:11 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19B1283F31
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 10:32:10 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id w7so3758166ply.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 10:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=FMOfvIopOBxQCHYl99LpTtFKbEuWoSv6+x2W53JYYLk=;
        b=mQRlV8DlMaaxNeG2XfbAzF1zmK60UayPcSr8VCl/nrS7GD0Hz8Ek6+Xmzkqy9YzFRE
         vTOlFc8HRN7dIU+8p9/FCK8XrYFQGek+Dw8MxJE4OIUKqW9RATDyxsigdjOr+kfppEBn
         BolI/CTr+WxMsIjr/7vOngm24mZPhQhV4wp/SyLKkoBHNAnY737f7X0Yysh8suT3WIe6
         ZfWLCd0q8NZntCoY2QNr64tOPVLcSStDDdzN0Ickzsh5ugUC35gvp5jnWu1GAS4emJvB
         pj4t5piEa1sWssQgPM2IChvKctERbx8d+lzv2cjjvRFCLcLrTTCpxt4DMKHjiMGAlpFZ
         4Uqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=FMOfvIopOBxQCHYl99LpTtFKbEuWoSv6+x2W53JYYLk=;
        b=I6rABQdHD1NbZ5Q5Bm7uSg9Cq6GRqz+W2TtlAW8DY9EysuEWSZZ9++yulCWwnjtjUQ
         RDmPxO03r/dqWK7HGsfkkeaxxgEJBUuONEEN1ay+yrmrI4PjwWKEPeJe9hxoHn/x9p6W
         ReR2otAbDvUUOztF86EJB34NHn8chhnKGsXQgznP9dGAq6fD443S5bEmzuLwQYgNjzZe
         AmuUALF2Aez5pqdDZZPCbojq+s50IXY72xQD3UklLE9JZ3prpEN17Gr/dDINdFISo51B
         kQSFok6nBd6hJbqjRqeblfpT8mAk9DOuwsx40rhGwXlyS1EXYZiPY9In7r0ik5dNrdrT
         lQbg==
X-Gm-Message-State: AJIora++yMeVgc7go4ITdfDm+3iFrvnDD1BMeCQkJb33ilNGgctUdTmU
        rXK/epdwm+zW2grpQsXzyJFp2Q==
X-Google-Smtp-Source: AGRyM1ufpN7BPBos33UytdxFzEwBOqhtIxG1LRso/LfuljWwWM99gIypqhsxt2h1tb1PJap6+bBT4w==
X-Received: by 2002:a17:90b:4c8c:b0:1ef:9d26:3087 with SMTP id my12-20020a17090b4c8c00b001ef9d263087mr23322384pjb.195.1657906329569;
        Fri, 15 Jul 2022 10:32:09 -0700 (PDT)
Received: from localhost ([50.221.140.186])
        by smtp.gmail.com with ESMTPSA id y9-20020a17090a600900b001f07ce88696sm3775181pji.49.2022.07.15.10.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jul 2022 10:32:08 -0700 (PDT)
Date:   Fri, 15 Jul 2022 10:32:08 -0700 (PDT)
X-Google-Original-Date: Fri, 15 Jul 2022 10:32:04 PDT (-0700)
Subject:     Re: [PATCH] riscv: dts: microchip: hook up the mpfs' l2cache
In-Reply-To: <20220629200732.4039258-1-conor@kernel.org>
CC:     daire.mcnamara@microchip.com, ivan.griffin@microchip.com,
        linux-riscv@lists.infradead.org, conor.dooley@microchip.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, atishp@atishpatra.org, sudeep.holla@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     conor@kernel.org
Message-ID: <mhng-08c6a73b-d3f9-4776-8efa-d98175c957c1@palmer-ri-x1c9>
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

On Wed, 29 Jun 2022 13:07:33 PDT (-0700), conor@kernel.org wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> The initial PolarFire SoC devicetree must have been forked off from
> the fu540 one prior to the addition of l2cache controller support being
> added there. When the controller node was added to mpfs.dtsi, it was
> not hooked up to the CPUs & thus sysfs reports an incorrect cache
> configuration. Hook it up.
>
> Fixes: 0fa6107eca41 ("RISC-V: Initial DTS for Microchip ICICLE board")

I just noticed this as I was looking over the PR I just sent, but since 
you're sending PRs I'm no longer re-writing your commits and thus I 
won't be adding stable CCs.  If you want stuff CC'd to stable you'll 
have to either add it to the tags in the commit, or do so after the 
fact.

> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/boot/dts/microchip/mpfs.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> index 3095d08453a1..496d3b7642bd 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> @@ -50,6 +50,7 @@ cpu1: cpu@1 {
>  			riscv,isa = "rv64imafdc";
>  			clocks = <&clkcfg CLK_CPU>;
>  			tlb-split;
> +			next-level-cache = <&cctrllr>;
>  			status = "okay";
>
>  			cpu1_intc: interrupt-controller {
> @@ -77,6 +78,7 @@ cpu2: cpu@2 {
>  			riscv,isa = "rv64imafdc";
>  			clocks = <&clkcfg CLK_CPU>;
>  			tlb-split;
> +			next-level-cache = <&cctrllr>;
>  			status = "okay";
>
>  			cpu2_intc: interrupt-controller {
> @@ -104,6 +106,7 @@ cpu3: cpu@3 {
>  			riscv,isa = "rv64imafdc";
>  			clocks = <&clkcfg CLK_CPU>;
>  			tlb-split;
> +			next-level-cache = <&cctrllr>;
>  			status = "okay";
>
>  			cpu3_intc: interrupt-controller {
> @@ -131,6 +134,7 @@ cpu4: cpu@4 {
>  			riscv,isa = "rv64imafdc";
>  			clocks = <&clkcfg CLK_CPU>;
>  			tlb-split;
> +			next-level-cache = <&cctrllr>;
>  			status = "okay";
>  			cpu4_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
