Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBFA164F324
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 22:27:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbiLPV1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 16:27:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiLPV1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 16:27:19 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C4B961D68
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:27:19 -0800 (PST)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C1A8E8526E;
        Fri, 16 Dec 2022 22:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671226037;
        bh=tRsALNYdqKuMq0QVHr2pXTGv+aqq6kAJ7RWaC7AlkzE=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=e0S3UPhKmX5FWRLajwdngTuI2Deuq7UyAIOkfmeIz+BW70EUrYmozxjIUu7oQdrJU
         CQ5E5vimBKzoDLqC8nD9/von/1QyMMAljVtxWYjnfxPqBlxrOqwSgxlNCHt1TL09U/
         sqDvvqt3aIWbl1rnHO7BBsXE9Nc0E5w6cqYkI/2r82Fu/xTRvcENzgGVgLyuoKFFai
         2dXIvFdkDq8YKFdLelzJx8og1mhCyDERqcqClgPkT2+CGYRDOAXmO1Pzd+W9aP9Fav
         5v1v3YHYHKoEefjSiSh5gVQLRTwbXLGYOaW53qyt20jJhUc5wi9/b0/UJCXfxwyslm
         q8cD97nZ4OToA==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Fri, 16 Dec 2022 18:27:17 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to
 TQM entry
In-Reply-To: <20221216210244.591865-4-marex@denx.de>
References: <20221216210244.591865-1-marex@denx.de>
 <20221216210244.591865-4-marex@denx.de>
Message-ID: <41e0ab55eb39a373c001586ba2d237fe@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 18:02, Marek Vasut wrote:
> The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM 
> TQMa8MQML SOM,
> which results in compatible string in the form:
> "vendor,custom-board", "tqm,som", "fsl,soc"
> Move the binding entry so this triplet can be matched on.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@denx.de>

Thanks
