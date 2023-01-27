Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1EBE67DEB7
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 08:54:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232168AbjA0HyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 02:54:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231287AbjA0HyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 02:54:10 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5C86C127
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:54:10 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9D25F61A11
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 600A7C433EF;
        Fri, 27 Jan 2023 07:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674806049;
        bh=CM71a7RaPTKo5G+aWp9LGHGbcPlqyBG685bqrz/8uJY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ab38RrYubwJ/Bf8gU8e5ltFEMR680slK5s1jVaoKxRnglRIg1PFf826eC0hgtSVDV
         HLmDjzOXdvMv8md5rlx735fM5c0OlSh4K3RbSVAoT29tc0OWZrni2aeEF0CH04lwnc
         bhTYpVcLplNzIG2yaAOYCKoDQtP0dgW26+1LLOO00dRTaYay2t37bea6mYggYT+YGZ
         0GYe5ROZVOiT5IDAr+eIihMXj6GTsxMlBtyCfOUh4HmfROsX6kS5CtY48TjrRXmF59
         vpOqnDPuFz7GQuV9srMdOLa+EEniFdJ+zkZJcgc0GU05WClVGWE3AREDDr4FWAnVxC
         Q3c236md0EikA==
Date:   Fri, 27 Jan 2023 15:53:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 06/10] arm64: dts: ls1046a: Add serdes bindings
Message-ID: <20230127075356.GM20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-7-sean.anderson@seco.com>
 <20230125234638.GD20713@T480>
 <aa602661-f7f6-ca63-d8a7-d6de0e924259@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa602661-f7f6-ca63-d8a7-d6de0e924259@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 26, 2023 at 11:43:26AM -0500, Sean Anderson wrote:
> On 1/25/23 18:46, Shawn Guo wrote:
> > On Thu, Dec 29, 2022 at 07:01:35PM -0500, Sean Anderson wrote:
> >> This adds bindings for the SerDes devices. They are disabled by default
> > 
> > s/bindings/descriptions?
> > 
> > The term "bindings" generally means the schema/doc in
> > Documentation/devicetree/bindings/.
> 
> How about "nodes"?

Yeah, or device nodes.

Shawn
