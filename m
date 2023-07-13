Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5251D7514FC
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 02:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjGMAIp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 20:08:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230134AbjGMAIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 20:08:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D0941FCC
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 17:08:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F33F0619BD
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 00:08:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA0A4C433C7;
        Thu, 13 Jul 2023 00:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689206921;
        bh=nysdcT2cBEpDaFUZWVjOSDnDzGwTJjiXyeiRueCcw/w=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=bWAJ2I3kbhM1bv9xahRC2XsdjBoi/vP/cwKTwGSnGeUdki5eLDrpGBroYR5ojZ0Fm
         YrtZKQn1W5d7zN01Gg/erIUIHpBb9SqY4Ox04dFDE9R40TXDon9nUEsjdhrkCwsk19
         RAqA1MGd2OL46aCkU+j+WIe5XcEhOZWH9RlVtcetMNNv+d6ta8Z2mEK1syauTF1KAD
         cdwFw96lSlVDOqexmNdzDOcXey3jpQ28zlSwDtE5pMqV13pgh5HU2LryJK+oucfQx9
         BKx/5dr53i/cdI/fWdfp565ePj2a36miyEMdMgQ6h/SEqlpPBLBozDo4N6cdzc0DNz
         EM9T69GBkBQ3A==
Date:   Wed, 12 Jul 2023 17:08:40 -0700
From:   Jakub Kicinski <kuba@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
        joabreu@synopsys.com, pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] net: dwmac_socfpga: use the standard "ahb" reset
Message-ID: <20230712170840.3d66da6a@kernel.org>
In-Reply-To: <20230710211313.567761-2-dinguyen@kernel.org>
References: <20230710211313.567761-1-dinguyen@kernel.org>
        <20230710211313.567761-2-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 Jul 2023 16:13:13 -0500 Dinh Nguyen wrote:
> -	dwmac->stmmac_ocp_rst = devm_reset_control_get_optional(dev, "stmmaceth-ocp");
> -	if (IS_ERR(dwmac->stmmac_ocp_rst)) {
> -		ret = PTR_ERR(dwmac->stmmac_ocp_rst);
> -		dev_err(dev, "error getting reset control of ocp %d\n", ret);
> -		goto err_remove_config_dt;
> -	}
> -
> -	reset_control_deassert(dwmac->stmmac_ocp_rst);

Noob question, perhaps - what's the best practice for incompatible
device tree changes? Updating the in-tree definitions is good enough?
Seems like we could quite easily continue to support "stmmaceth-ocp"
but no point complicating the code if not required.
