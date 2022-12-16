Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17B1664F341
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 22:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbiLPVf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 16:35:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLPVfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 16:35:54 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DAA164DE
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:35:52 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2DC798526E;
        Fri, 16 Dec 2022 22:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671226550;
        bh=7Np8zGQuA//mI7Xq8RxCXzjkXaUCaODZw1Qa+FFN6M4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UPd4sAMqPXR8DQu99nYI5WP9uxsUyAA4TtB6flJPXke+0qorX3QGyDdl/6V2vhnIS
         rHMqSi7TY/Dnlp04sUw9TZx9L7PuySrkV4SwUeYogOFJqm38IQll5Hu14hab8qz63X
         Ox7YO4nZtNs0u9wzysi9/N8FFSRWrmG0NffICi1yZUxLtNhedm2HINfF0ipdU6I/3x
         K6y5kWeeu7vb7PbkRxYGXGLUVPoxonuvhtzPbFBy1Mvs3dCwV4owhik6X4qbE+7PIV
         jsMvsbuB+CzXyupsTCO3mluvlglqNDm190OQisadGKke8cKdHwv6hNXGDJIxLspkh9
         F1RFHJ4pRzB/g==
Message-ID: <528186bf-581e-e1fd-1cc4-9ec3a1b9dc8f@denx.de>
Date:   Fri, 16 Dec 2022 22:35:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M
 Mini Toradex Verdin SoM entry
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221216210244.591865-1-marex@denx.de>
 <Y5ziPRGF6y5k1IvS@francesco-nb.int.toradex.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <Y5ziPRGF6y5k1IvS@francesco-nb.int.toradex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/16/22 22:25, Francesco Dolcini wrote:
> On Fri, Dec 16, 2022 at 10:02:41PM +0100, Marek Vasut wrote:
>> The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
>> which results in compatible string in the form:
>> "vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
>> Move the binding entry so this quadruplet can be matched on.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Thank you

Rob/Krzysztof, this one patch will generate new validation warning. A 
counterpart patch to properly fix it is posted:

https://patchwork.kernel.org/project/linux-arm-kernel/patch/20221216210150.591838-1-marex@denx.de/
