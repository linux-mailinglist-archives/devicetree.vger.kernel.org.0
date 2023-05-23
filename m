Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8040E70E9B1
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 01:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236261AbjEWXgz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 19:36:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjEWXgz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 19:36:55 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AD00DA
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:36:53 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 28B5B8467E;
        Wed, 24 May 2023 01:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684885010;
        bh=WtzXgRfMPs63hUuZj5sbini9jdY+DLtYedtwtEd4unU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=yJ2l7XOXBR68RFVO5eyBS/lXAev1AtPqkeyplM2aS7Um6xUe8ZeuUBPI64GvcjM3s
         hmn1ryHvxoTs3zi8XjkYJK9BdGjz8YZM9C3GfLUNuLQ6OdFIsc0wP+H2pAxB3OOGlD
         TvmZVdqGua3k0QAg1YOhCtiubzyCK7rEhuPBfb1n1ys52yD1y+CstnzkVvcoFDny2X
         Sxf8nFypn9/sM8+SHKQqFQg1T5KKPRkoOU9hl8k4JKnZ2TjGlVyqfEVKB1CPDu5r/y
         mbR1fQqj1yUY4dRTqmHVwPprHDdVgnNwv4cp9i84Hu5rKZtJUjGejzTMMvNCNO1ZCt
         yLzvIhmDgboIA==
Message-ID: <b0ad67bd-c37a-67c5-f167-37b5cb8a54d1@denx.de>
Date:   Wed, 24 May 2023 01:30:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-5-festevam@gmail.com>
 <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de>
 <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
 <a9e2e19f-e9df-81e3-4608-71beed85852f@denx.de>
 <CAOMZO5Bujbynq5CSbWQu+aEsiaTP686OW44MujDFuE1k5EMeMA@mail.gmail.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAOMZO5Bujbynq5CSbWQu+aEsiaTP686OW44MujDFuE1k5EMeMA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/23/23 23:13, Fabio Estevam wrote:
> Hi Marek,

Hi,

> On Tue, May 23, 2023 at 10:32 AM Marek Vasut <marex@denx.de> wrote:
> 
>> It might be simple to add this functionality to the core, could you
>> please take a quick look ?
> 
> If I do the following change:
> 
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -842,7 +842,7 @@ iomuxc: pinctrl@20e0000 {
>                          };
> 
>                          gpr: syscon@20e4000 {
> -                               compatible = "fsl,imx6sx-iomuxc-gpr", "syscon";
> +                               compatible = "fsl,imx6sx-iomuxc-gpr",
> "syscon", "simple-mfd";
>                                  #address-cells = <1>;
>                                  #size-cells = <1>;
>                                  reg = <0x020e4000 0x4000>;
> 
> Then I can get rid of this drivers/soc/imx/imx6sx-gpr.c completely.
> 
> Would you agree with this approach?

Wasn't this already rejected by Krzysztof ?
