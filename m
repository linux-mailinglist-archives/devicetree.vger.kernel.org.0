Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9949704795
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbjEPIR5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230379AbjEPIR4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:17:56 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC5B9188
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:17:55 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B820F85D4E;
        Tue, 16 May 2023 10:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684225074;
        bh=BaNHDg9Vi02ldKi3Wyouc3wuEP9BxHidW+yZb2MFRgM=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=Fpux/XAhfxScg6bWeLp6qSSj6S9wTQRrDBvZf4vNbXhRdtBaIDTa+LjXrQOwWoFqW
         4cHfBeTUonF9IhUSnLXCZBux1sDA9dkKsbQkHyZfzfdsfQW12JQHtd7shT3R3l5Gz6
         6wIfw4ZaYmrCuiskQFPiL+2feLyAUnsYFhNUacCtGbKNF3PJexdSRJ7a8AZLXY9ZlH
         EPvWoMNgBMuPA6HjdFlMSD+az4YKx8mezcDOtUAXZCvFGTTT5qpDr9Q8fJstazAskw
         QW2rpDQvHnbDtrq480/qmGwgRIdOZTgDtMBy6ZoVUfcGy3drtBHtUaxDhArLjPG3ld
         qZ2L0Zl/vQSeg==
Message-ID: <f065592c-a273-1094-1f0f-1ada61c9e98a@denx.de>
Date:   Tue, 16 May 2023 10:17:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: imx8mp: Add DeWarp Engine DT node
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230515163224.70300-1-marex@denx.de>
 <2306485.iZASKD2KPV@steina-w> <bd34dc17-8e6b-c8a2-4e9b-f043276e8682@denx.de>
In-Reply-To: <bd34dc17-8e6b-c8a2-4e9b-f043276e8682@denx.de>
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

On 5/16/23 10:06, Marek Vasut wrote:
> On 5/16/23 08:38, Alexander Stein wrote:
>> Hi Marek,
> 
> Hi,
> 
>> Am Montag, 15. Mai 2023, 18:32:24 CEST schrieb Marek Vasut:
>>> Add DT node for the DeWarp Engine of the i.MX8MP.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Fabio Estevam <festevam@gmail.com>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>>> Cc: Richard Cochran <richardcochran@gmail.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: linux-arm-kernel@lists.infradead.org
>>
>> While the node itself is okay, could you please add a patch for 
>> reordering the
>> other nodes in aips4 before adding dewarp? dwe@32e30000 should be at 
>> the top
>> after ISI (ISP not yet added).
> 
> The sorting of nodes does not conflict with this change, so I'll send a 
> separate patch for that.

Well that wasn't as easy as I thought, but oh well, V2 is out.
