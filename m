Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41C9777C734
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 07:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234684AbjHOFoH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 01:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234651AbjHOFmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 01:42:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4DA8171F
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 22:42:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 43FCC61147
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 05:42:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3A23C433C7;
        Tue, 15 Aug 2023 05:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692078153;
        bh=0EUKArAtMTY0VP5l/d1/n8nJrov86U3DXcS6eMx2ldQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=inbXAD+udydZwOqGWyilQe3VclNbHuh6JBRndDlpFuQKNzoO77iF4Er6uaLzu4Fl2
         2zjIJ2XvsJ9R2DdtwKVCo7Ecxlb31X1487xMgbo4mnBeufVhToZx704WxdxnmkhM9d
         aLI0Si9Zcl4H7Xm893M9rj9bbmtxOUvfz5kG4voHeAsOAvlVff9pSQB0djBKfRwse7
         zCeq+MvAjXuDyxfexsaPxmN+ApyTYpjsZyUcueUCdPIB/BpUCBAQdBQXdh0+gKV3lr
         hLfM+bD8yi9Mp75hoWzz90WvZGPzXT2Mp7iz+PK0sUiT7pIrwFIoLdTJUbPuedsvXc
         hRB0eY/c7FR0g==
Message-ID: <4dfa4822-7e02-5ee5-f0e7-897559473f9a@kernel.org>
Date:   Tue, 15 Aug 2023 07:42:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] arm64: dts: socfpga: fix dtbs_check warnings for clocks
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org
References: <20230814103240.807616-1-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230814103240.807616-1-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/08/2023 12:32, Dinh Nguyen wrote:
> Fix dtbs_check warning: 'clock-frequency' is a required property.

Frequency of 0 is not usually correct, so this does not look like
correct fix.

> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++++
>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> index 439497ab967d..cd8123ada2bc 100644
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> @@ -101,21 +101,25 @@ clocks {
>  		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
>  			#clock-cells = <0>;
>  			compatible = "fixed-clock";
> +			clock-frequency = <0>;


Best regards,
Krzysztof

