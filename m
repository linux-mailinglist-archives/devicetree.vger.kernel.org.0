Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D273C70DD82
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 15:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236863AbjEWNdB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 09:33:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236815AbjEWNdA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 09:33:00 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C07DA132
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:56 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4156085FE8;
        Tue, 23 May 2023 15:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684848772;
        bh=Q238KMbMcGKjhY9eUa561BHjB3L5hf71hFmEtxi4TJ0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NrkigyYOjHLPVZyO//v0d13G7XhVR7Qj1FIenrD9FMmclJWfbP3peUz0s92V+4n35
         kUzDd8pxWUc4nTEhUH2xGFeSvhVrxvfl/2NHHCiYNRBbOt3+Vc4c/TJJF4eXx02cw4
         GzrO5tanARYPAE/1G1+Aeo8mpJ4oLtLGso9YhEDJP2FShB8ezLgsmu9ykd1wmaUM9O
         A2dTwRpHLzjYgCEpAbJ9NkGdb1JANlkW5Szux7cu1ys8cy9usVsaaRjwfPUVGU/GI2
         Ik2Jxwl+u0MH05HbViAV+n/nonG5IIL6Pl9Q8Ztsvj6pWXMJULqP8u+ZoNe3LDorcF
         /+aeG4jM2JQJA==
Message-ID: <36d63b72-68ef-022a-99b1-375e5eba702a@denx.de>
Date:   Tue, 23 May 2023 14:56:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 4/5] ARM: dts: imx6sx: Add LDB support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-4-festevam@gmail.com>
 <d8c34831-c89a-0c09-d874-9f7778c7aa33@denx.de>
 <CAOMZO5CMox7r40cSf7mwqJp3bReN+4VBZ4CMXVpsxYH2g8XqzA@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAOMZO5CMox7r40cSf7mwqJp3bReN+4VBZ4CMXVpsxYH2g8XqzA@mail.gmail.com>
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

On 5/23/23 13:34, Fabio Estevam wrote:
> Hi Marek,
> 
> On Mon, May 22, 2023 at 11:57 PM Marek Vasut <marex@denx.de> wrote:
> 
>>> +                             lvds_bridge: bridge@18 {
>>> +                                     compatible = "fsl,imx6sx-ldb";
>>> +                                     reg = <0x18 0x4>;
>>> +                                     clocks = <&clks IMX6SX_CLK_LDB_DI0>;
>>> +                                     clock-names = "ldb";
>>
>> Since there is only once clock, is this clock-names even needed ?
> 
> As of today, clock-names is needed because
> drivers/gpu/drm/bridge/fsl-ldb.c retrieves the ldb clock like this:
> 
> fsl_ldb->clk = devm_clk_get(dev, "ldb")
> 
> If you want, I can change it to fsl_ldb->clk = devm_clk_get(dev, NULL)
> and also remove clock-names from
> fsl,ldb.yaml and from imx8mp.dtsi.
> 
> Or this cleanup can also be a follow-up patch. Just let me know what you prefer.

I think a follow up patch would be perfectly fine , let's not grow the 
series unnecessarily .
