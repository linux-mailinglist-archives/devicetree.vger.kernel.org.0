Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 592C367C7C2
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 10:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236649AbjAZJuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 04:50:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjAZJuG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 04:50:06 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F165D90B
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 01:50:05 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4049661766
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 09:50:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AB08C433EF;
        Thu, 26 Jan 2023 09:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674726604;
        bh=zXNDCWjBDOOJ2jNtoJnjzICaQynb3qHuACtwowQ0mb8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kLT/CfUFLDg/zbKqDC2ao1/v+8Mdz7lSSCd3ZfxUMIZTx/oBLavI2XUTOEOeUIFsU
         QJBVCN3pOn758GXrUHoG8ddmDAL4mdcNS3FnxzSWxVcZDI1HdnjYiQoApR3wTZ6Puq
         jsdlbJWCFFbp7WsPU29gyKchu75uKMEK5z0howE1jx5vHN5kfjWn8j0IlEccwrmVuv
         0b1OsO9ABCNvKmVXVpGTzW30/zabOEcS2nkfPOYcGmGkKxYu73NguKsPsNYQPsHFGN
         bwYgkJSQn1M7HdKHYKs6RdNf/W8wXLQ6MBkbjM0FWfrl3VyJYweIpgGlMhiQa/Ipmu
         mA7kNviZCYxMQ==
Date:   Thu, 26 Jan 2023 17:49:58 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Fix bindings for APF28Dev
 board
Message-ID: <20230126094957.GF20713@T480>
References: <20230121140053.10242-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230121140053.10242-1-stefan.wahren@i2se.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 21, 2023 at 03:00:52PM +0100, Stefan Wahren wrote:
> Adjust the compatibles for the APF28Dev board in order to fix the
> dtbs_check warning:
> 
>   DTC_CHK arch/arm/boot/dts/imx28-apf28dev.dtb
> /home/stefanw/torvalds/arch/arm/boot/dts/imx28-apf28dev.dtb: /: compatible:
>   oneOf' conditional failed, one must be fixed:
>   ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too long
>   ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too short
>   ...
> 
> Fixes: 3d735471d066 ("dt-bindings: arm: Document Armadeus SoM and Dev boards devicetree binding")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied both, thanks!
