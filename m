Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8412652265
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 15:24:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbiLTOYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 09:24:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233933AbiLTOXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 09:23:41 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73699BE0
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 06:23:08 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0DC0E61469
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34D85C433D2;
        Tue, 20 Dec 2022 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671546187;
        bh=T91uI9eRIC0qKs3M1f3tYD5QaOjTXKneX+NuNM75H9c=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=a5Yfp0I+6Yqi4ylqLqp3QeyKOYmPqELIbQIZwZkgtM9Ug6dLK+xu2MRz4Wj9c7ADu
         y8+h3LDL3Md47KkAVYnr24bx8BzDOAxIYQQwZHD/tnuKavTxlpbjjZeZYyCMYpFfMv
         mXYh0Z48ymD7DWJVcLNI9MAr6o327cfyJ8SWs3B/qUtwU6pJskv7x58ZXcReFvnoyG
         aWOACLZdlM6Pzkpd0BOd+aZ4+LLlJ/EPpjWdkAxv635dyPJlH+/nfZU2T/JNAlYR62
         CDkTZ9NxIHNFSSAtJk8k8nAr77T4bMVLup8PYhyIbgWAAbNpNQ+j1PpKMJEXWOApxE
         sYT4yhbwh6zeg==
Message-ID: <a01df5bf-0603-841e-4c93-05c89b051554@kernel.org>
Date:   Tue, 20 Dec 2022 15:23:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 1/5] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
References: <20221216200821.3230165-1-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20221216200821.3230165-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 21:08, Lucas Stach wrote:
> The HSIO blk-ctrl has a internal PLL, which can be used as a reference
> clock for the PCIe PHY. Add clock-cells to the binding to allow the
> driver to expose this PLL.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.


Best regards,
Krzysztof

