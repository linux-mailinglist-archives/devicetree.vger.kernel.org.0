Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6643575754
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 00:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241017AbiGNWEL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 18:04:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240994AbiGNWEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 18:04:07 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4EE59244
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 15:04:05 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id l124so3040737pfl.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 15:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=zbpcO2BwVk2FwQNWYD1VkAJqWqJYo+FkQx1b7LzYFnY=;
        b=qaIrgfzjhYCN6aVkiE5TQIWlp667OBZ4/SuftHPD66q62YbBKL8IwkW3a4A0yek+DX
         pIB+7WmuTFElSs2d276fzz8w/Co/RCmHEm32OgKbOV+8MnzZ0ZECDEaOXzi0doWk/m3M
         4VdwLaLGyfjuP7PzzYrL2U+U68sp7T2WgFl1zWeObOpJ1gtrbflo+GrLIdr7x8La3/8q
         6jaTnVb10BSXIkyUZK2fxdhOKiXuZ9MxD0DeOZYAmBPRM2V09P/KuLv7hr2WvNo3znJg
         J+JTEVJx9IiNjnnkyFNEBd3uyAXrj4HW0uZZKL9xDOA+R2xIQ5Gas51hfU8Miv6eBCBE
         F3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=zbpcO2BwVk2FwQNWYD1VkAJqWqJYo+FkQx1b7LzYFnY=;
        b=NHiv0M/8rVMpNLyWX9Eq0OS/uSqcXa7SvUTVPxEET+M1dzmMopeg2LyIj9yuAUnYC6
         4ANlBAEiya8DcdF8pNNI0W2xo1QZlS2rBt031DRP5sbxi4W6Hj22DX2pBNOBjY/TUJAX
         9Ki9DyNYXUE1Uf0F4O2kJPsISFBQk5001krZKtiP19jJfeUAaWP1R+4QSe5LsdgmEyiJ
         dM4IDZKDNeksqEdzdtFS6s4XtshCNXZ9TVlSditTsH2endgaR3TsOL88TwO3DHAQD9hJ
         E6IINsPs3jtcLX8TiEY/2Z10fuOpp7tbzbTBrTL57kT8gon0mzNstbH+kpcOvYBgjGdF
         xaUA==
X-Gm-Message-State: AJIora8WZRlgoV7d5s+FZ59vT4j1NUvepr7Ru21CPmuuvEJazKc5joxC
        RjZZZxvqhkgH79RnTzYSyCL6cQ==
X-Google-Smtp-Source: AGRyM1vDwYSpcUsPfCp39Em/jD5TQH+yYaUQiO4APhWHiDXcGHDA6HIwJ4y8m+MCdWZjMAAMBGv3QA==
X-Received: by 2002:a63:e64f:0:b0:40d:e79f:8b73 with SMTP id p15-20020a63e64f000000b0040de79f8b73mr9177810pgj.243.1657836244616;
        Thu, 14 Jul 2022 15:04:04 -0700 (PDT)
Received: from localhost ([50.221.140.186])
        by smtp.gmail.com with ESMTPSA id i137-20020a62878f000000b0052542cbff9dsm2224040pfe.99.2022.07.14.15.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 15:04:03 -0700 (PDT)
Date:   Thu, 14 Jul 2022 15:04:03 -0700 (PDT)
X-Google-Original-Date: Thu, 14 Jul 2022 14:42:41 PDT (-0700)
Subject:     Re: [PATCH 4/5] riscv: dts: microchip: Add mpfs' topology information
In-Reply-To: <20220705190435.1790466-5-mail@conchuod.ie>
CC:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, daire.mcnamara@microchip.com,
        conor.dooley@microchip.com, niklas.cassel@wdc.com,
        damien.lemoal@opensource.wdc.com, geert@linux-m68k.org,
        zong.li@sifive.com, kernel@esmil.dk, hahnjo@hahnjo.de,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice.Goglin@inria.fr
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     mail@conchuod.ie
Message-ID: <mhng-efe2b7ce-e803-4a61-91b7-ca9c302a33bc@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 05 Jul 2022 12:04:35 PDT (-0700), mail@conchuod.ie wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> The mpfs has no cpu-map node, so tools like hwloc cannot correctly
> parse the topology. Add the node using the existing node labels.
>
> Reported-by: Brice Goglin <Brice.Goglin@inria.fr>
> Link: https://github.com/open-mpi/hwloc/issues/536
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/boot/dts/microchip/mpfs.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> index 45efd35d50c5..0a17d30bb3f2 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> @@ -138,6 +138,30 @@ cpu4_intc: interrupt-controller {
>  				interrupt-controller;
>  			};
>  		};
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +
> +				core2 {
> +					cpu = <&cpu2>;
> +				};
> +
> +				core3 {
> +					cpu = <&cpu3>;
> +				};
> +
> +				core4 {
> +					cpu = <&cpu4>;
> +				};
> +			};
> +		};
>  	};
>
>  	refclk: mssrefclk {

In case anyone is following along: this patch got split out from the 
rest of the series and ended up in the Microchip DT PR for 5.20.  
I've taken the other four into for-next.

Thanks!
