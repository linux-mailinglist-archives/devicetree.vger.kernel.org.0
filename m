Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E314E51F254
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 03:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233970AbiEIBaq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 21:30:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235919AbiEIA65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 20:58:57 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C18D4B852
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 17:55:04 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4047D83E97;
        Mon,  9 May 2022 02:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1652057703;
        bh=6VbSF+hKaVGBfe+6zzKjUIGGJbomWB66Y/CvZtJaWTM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=qC8JUB/PuORuk0E3CeclZYfPz/8SR3SskEbBBCknLD7SnxdVSfE1sBarVgWIA0GaA
         EVpNvdWHgLyk14TayIEQ3FVKYXlG7gyYMxeigYNcwGMXGZtBOd4E9WDKRmNsAmVwQU
         p1ruxlDh50YpUyGvM9MtdXilXibyqk7WM1kyCCphDZaZVnBSedgb+EwwSIDi07YpPe
         NzhbGmDS5H5Ip85ikOmzAjzi3yZxWO/Pj9HlsLZDIGDdgXIno72EBdpec45zmlDYic
         MzA4dtaExEcSyE2+8/WU6V9o14oLyAzSaNeU5cCFwf3C4dgI+j7+brwbmIsfEKUZ98
         z5CJxqe7YStsw==
Message-ID: <df6572a4-82ed-5f55-2297-2c7fe69941fd@denx.de>
Date:   Mon, 9 May 2022 02:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        patchwork-lst@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>,
        linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-2-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/6/22 20:10, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.

You can add

Tested-by: Marek Vasut <marex@denx.de>

to the entire series.
