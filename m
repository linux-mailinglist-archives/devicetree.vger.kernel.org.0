Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73F2965EE2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:03:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233921AbjAEODT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:03:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234662AbjAEOC3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:02:29 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D754F105
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:02:21 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 691EC855A5;
        Thu,  5 Jan 2023 15:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672927340;
        bh=V/IhrgaUa9uwFeYhTSoAN4pQhwIM2yux67Zq6ua6BzE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=g9RFHLApEF+bZ+jfknDpI+2xBmVyf9GjWmcwZ6QKJRtaScZbbken1seaTq1K+2/xN
         vaXAFT6x7itkzNKZ1+3BrM4sm8kPBqXrFFzpIE4qip3BeTH2YW5in9r0TlRS39FN3E
         Qr0sPIU9Nbes3HiE+gA0mcmKzIEk3qHZDhhdijw0t9HtURG8ufaxShYgklr6NSDH8f
         3WcRAWEmO5kkYD2ie64i5IKoDGjqDYWgExgeerzN1UDa014xze8ndthIeC0PnNEPmQ
         lmlGzspQ4mDdR61Pmgtji0mnLDvXGw7k19b5HPdVp08k7VknYrwaRgqYd99BfPkYi1
         kY63cjAs6E50w==
Message-ID: <ec11e3d0-2e25-c26f-f424-c9f9c2603f59@denx.de>
Date:   Thu, 5 Jan 2023 15:02:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: Split i.MX8M Plus DHCOM based
 boards
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@dh-electronics.com
References: <20221216210244.591865-1-marex@denx.de>
 <20221216210244.591865-3-marex@denx.de> <20230101032840.GR6112@T480>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230101032840.GR6112@T480>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/1/23 04:28, Shawn Guo wrote:
> On Fri, Dec 16, 2022 at 10:02:43PM +0100, Marek Vasut wrote:
>> The i.MX8M Plus DHCOM based boards have compatible string in the form:
>> "vendor,custom-board", "dh,som", "fsl,soc"
>> or
>> "dh,carrier-board", "dh,som", "fsl,soc"
>> Split the binding entry so this triplet can be matched on.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> It doesn't apply to my imx/bindings branch.  Could you rebase and resend
> the series?

Done
