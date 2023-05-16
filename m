Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8E6704604
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230395AbjEPHOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbjEPHOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:14:15 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D95924493
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:13:57 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 247168210E;
        Tue, 16 May 2023 09:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684221235;
        bh=WvlDO5xYNIX5tDF9h/EhjBlWVzgsta9tXwLGQoFBoHg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RJscc2DS8U1dI4NMQ1xhDEYWWOl3CyiGo27summNz8ybgxJts2Urkog5iIfCneKHQ
         2HuCFgpS/XkdzQXBdP0v7YrDjRHVCqcH6jIiiwqy3KFMgl9DszmlDAwfC21jwA+Nw4
         oYuIrcv7mZN910eX/hJrZIEfoXvo6dkAOa0N34EiGQ8Hz6VTHqLDPhdcA/Ir2q0ap/
         c+Ccmt+u82kwF5ijAZj7T4nuHravrEB0Eo6X1X+6vL1iCNIWzbU2kXfoMG6Xr8QRSD
         Ata4RAFW/h1EGWqiCFS7ab809teW5iRfIuNMG2AY24h/zNu3IgPjkhU3fn9CE7kJJx
         +bgDxX+SMPaVw==
Message-ID: <6ad832ff-9ada-ef06-7d32-50da6148b92d@denx.de>
Date:   Tue, 16 May 2023 09:13:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: move noc node to correct position
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/16/23 07:50, Alexander Stein wrote:
> The base address of NOC is bigger than aips5, but smaller than aips4.
> 
> Fixes: b86c3afabb4f ("arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX")

I don't mind this Fixes tag, since this will likely land in the same 
upcoming release anyway.

But in general, is this really Fixes: material ?
