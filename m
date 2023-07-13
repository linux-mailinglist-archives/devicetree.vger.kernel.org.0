Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2EA751BA2
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 10:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234456AbjGMIeT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 04:34:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234464AbjGMId4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 04:33:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF97D9030
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 01:25:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 704A561AA9
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:25:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DDD6C433BC;
        Thu, 13 Jul 2023 08:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689236704;
        bh=8p5xcaf3HE4Ic/cijtEkzbVhG0wqo8rKSFTK7zHVrMA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ZjsyftYoNuNsqKIj484NfJYi5IsnrY6qIF+TXNF15X+cj0hQstyIZmorNYjudJeYd
         TwCp+vciJGMDlxJNN37xUieR3YB3E2rv5k2VC/DiBD+luVT2GMtm8YV86d/zU188SX
         LFXerXS8lGV6scqSXTpLsWoW+RwRY0IJD+gXWH2IFddV30EH32yUACyrV48TD/CcWk
         hOQMdLjfF0kc78iya1Tj0FY2DtSVQ6HIia/e4rVwE8E6mt4x1LFSnLyiY6K5FSOA3r
         mz3iZy1gar147qsetUMHPRfel12HFO6ErP1w8qQQREPDJvsdVkcr0XmqFivfYoL/CZ
         KfXNTVyJtCcug==
Message-ID: <c8ffee03-8a6b-1612-37ee-e5ec69853ab7@kernel.org>
Date:   Thu, 13 Jul 2023 10:24:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/2] net: dwmac_socfpga: use the standard "ahb" reset
Content-Language: en-US
To:     Jakub Kicinski <kuba@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>
Cc:     netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
        joabreu@synopsys.com, pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
References: <20230710211313.567761-1-dinguyen@kernel.org>
 <20230710211313.567761-2-dinguyen@kernel.org>
 <20230712170840.3d66da6a@kernel.org>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230712170840.3d66da6a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 02:08, Jakub Kicinski wrote:
> On Mon, 10 Jul 2023 16:13:13 -0500 Dinh Nguyen wrote:
>> -	dwmac->stmmac_ocp_rst = devm_reset_control_get_optional(dev, "stmmaceth-ocp");
>> -	if (IS_ERR(dwmac->stmmac_ocp_rst)) {
>> -		ret = PTR_ERR(dwmac->stmmac_ocp_rst);
>> -		dev_err(dev, "error getting reset control of ocp %d\n", ret);
>> -		goto err_remove_config_dt;
>> -	}
>> -
>> -	reset_control_deassert(dwmac->stmmac_ocp_rst);
> 
> Noob question, perhaps - what's the best practice for incompatible
> device tree changes?

They are an ABI break.

> Updating the in-tree definitions is good enough?

No, because this is an ABI so we expect:
1. old DTS
2. out-of-tree DTS
to work properly with new kernel (not broken by a change).

However for ABI breaks with scope limited to only one given platform, it
is the platform's maintainer choice to allow or not allow ABI breaks.
What we, Devicetree maintainers expect, is to mention and provide
rationale for the ABI break in the commit msg.

> Seems like we could quite easily continue to support "stmmaceth-ocp"
> but no point complicating the code if not required.

Best regards,
Krzysztof

