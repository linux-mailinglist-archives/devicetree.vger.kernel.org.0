Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A3875291A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 18:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjGMQvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 12:51:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjGMQvU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 12:51:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63DA81BF9
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 09:51:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EABD461AEA
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 16:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC8F7C433C8;
        Thu, 13 Jul 2023 16:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689267078;
        bh=W/DBBtggNPxcx48u53LFNXfUII6LqEjS3gR/CAjXJoM=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=EGb2yZNBaWH+ToInoE+zVz4NcSNnvQ2sehjIbmSHQAZUY3d9Sc0DT5eWml7jxFe2r
         /fFVd5O1P/0LSHFMAiOqlNFvgnLhjrRfCzVvs9kwIZQu7y0WG67m0aVQVYbZhSmHk5
         91K/zFbHLPshK9KvgGVvRHuX6k817Qj0G+iF6K4yRkYgyd3qFYYFc0iBXiCqzvcDbD
         gazRIW3SWfP54kzPnnW4Le2RAKt8kgcc3rFG5NJQUvUh3oRrl+lHAcVGeAYnd9TUgX
         4Qr/Q5hOpCAYqrh5JlSA9iHJyAjbDmeMUAK5RIm7CvYlMH2kl+SCgYYDtD6cQfyNoz
         jR9ec/aQYg7ew==
Date:   Thu, 13 Jul 2023 09:51:16 -0700
From:   Jakub Kicinski <kuba@kernel.org>
To:     Paolo Abeni <pabeni@redhat.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, netdev@vger.kernel.org,
        davem@davemloft.net, edumazet@google.com, joabreu@synopsys.com,
        robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] net: dwmac_socfpga: use the standard "ahb" reset
Message-ID: <20230713095116.15760660@kernel.org>
In-Reply-To: <1061620f76bfe8158e7b8159672e7bb0c8dc75f2.camel@redhat.com>
References: <20230710211313.567761-1-dinguyen@kernel.org>
        <20230710211313.567761-2-dinguyen@kernel.org>
        <20230712170840.3d66da6a@kernel.org>
        <c8ffee03-8a6b-1612-37ee-e5ec69853ab7@kernel.org>
        <1061620f76bfe8158e7b8159672e7bb0c8dc75f2.camel@redhat.com>
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

On Thu, 13 Jul 2023 14:39:57 +0200 Paolo Abeni wrote:
> > However for ABI breaks with scope limited to only one given platform, it
> > is the platform's maintainer choice to allow or not allow ABI breaks.
> > What we, Devicetree maintainers expect, is to mention and provide
> > rationale for the ABI break in the commit msg.  
> 
> @Dinh: you should at least update the commit message to provide such
> rationale, or possibly even better, drop this 2nd patch on next
> submission.

Or support both bindings, because the reset looks optional. So maybe 
instead of deleting the use of "stmmaceth-ocp", only go down that path
if stpriv->plat->stmmac_ahb_rst is NULL?
