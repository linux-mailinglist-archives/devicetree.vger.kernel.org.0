Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1B9E7570C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 02:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbjGRAHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 20:07:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjGRAHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 20:07:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9294CEA
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 17:07:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2EF7C61169
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 00:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86223C433C7;
        Tue, 18 Jul 2023 00:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689638827;
        bh=+dwQXbxZ+3PUBs73A6aTKbYkx0vbnJZla56iHoZpHKE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=to7cY4h/e9SmSQYt/Egko3TTUaRgccMYxo9VHdPjhAatsj3szD7Rn/171BfRTp0q5
         rKEd6pSpn35bVXqYPlugXlCEQTMbsQYqIQvwcbMMHTjL8tp21P5Q1vH7IC2hSJgAML
         mO9lGWlDr5zu0VfIZIV4aq6HUe7JylLk9ECX2DVE8VPRRXMTdILuLtn8DydbqEvbIM
         eP6CjnOlopynoq5dU8VuDWO1y0n43MVLODmCHVce80GHKyV8q1FGaKTYk67BS3d7pN
         u0DLWEsM7AyMwToqlZ7PzJwtQeZ3TxwMrXvD4RyHmFdw5iWY0d1rtZE3pXPz9tK10a
         jKyKSfWC0Da/A==
Date:   Tue, 18 Jul 2023 08:06:58 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Xu Yang <xu.yang_2@nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [RESEND] ARM: dts: nxp/imx6sll: fix wrong property name in
 usbphy node
Message-ID: <20230718000658.GO9559@dragon>
References: <20230717022833.3065617-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230717022833.3065617-1-xu.yang_2@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 17, 2023 at 10:28:33AM +0800, Xu Yang wrote:
> Property name "phy-3p0-supply" is used instead of "phy-reg_3p0-supply".
> 
> Fixes: 9f30b6b1a957 ("ARM: dts: imx: Add basic dtsi file for imx6sll")
> cc: <stable@vger.kernel.org>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!
