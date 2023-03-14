Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F6296B8BBB
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 08:09:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjCNHJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 03:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbjCNHJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 03:09:18 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE1B83D1
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:09:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 41921B818A2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:09:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EA01C433EF;
        Tue, 14 Mar 2023 07:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678777753;
        bh=dJiDwvlKwnk919Dv4H3AXKo5uOs1Vovj49gT6cb/jxk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q6GdfbTC2MbHRDbOnIBC/47DzX2vfiiY7SZlSEZW+hiM2YhvOyhixQfDAkI2v2P97
         +99h3BL7fcoY5hbHjneA8iRmoi8pagpgl3P4f6ygcY+ewbJ9UjEcU43kJG8C1SIn1F
         7rpif6nuy+vhCSKruzIqhwstfPZV4dcZaRng2853tLxw8pE3bhbPFQ23eJGvA5jaDh
         HoKFo1WW/n3xgZ9OJPfwqQ5+TfoSiWw4dX5td7+3je0WvSAm9Iihl2hgQFwYwbk8cj
         zwddUmQ/o3m5/PLXLBcblZ8SgEXfX9w0SymDtPJVBUDAcVcMCnuaBwQi77+AwRHVFk
         o8YYiA/mM4HLw==
Date:   Tue, 14 Mar 2023 15:08:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v11 09/13] arm64: dts: ls1046a: Add serdes nodes
Message-ID: <20230314070848.GA143566@dragon>
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-10-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230313161138.3598068-10-sean.anderson@seco.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 13, 2023 at 12:11:33PM -0400, Sean Anderson wrote:
> This adds nodes for the SerDes devices. They are disabled by default
> to prevent any breakage on existing boards.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>

The DTS patches look good to me.  Let me know if they are ready to be
applied.

Shawn
