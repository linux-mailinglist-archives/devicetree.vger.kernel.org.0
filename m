Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFE9162784F
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236693AbiKNI6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:58:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236652AbiKNI5q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:57:46 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF2F81D305
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:57:32 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4A89E60F41
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 08:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CC13C433D6;
        Mon, 14 Nov 2022 08:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668416251;
        bh=Hxz9EUvS+KJU8dxP8HHDTOBexAt8m13GGIlrcUEgtHM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YtG9+aqikYxpblL/GkVCbBDDa7S+y8c4l6gaoinoqgIQQAxJ6213EN+HVtTgnO6py
         VJTH6YnaJbUg63lUbPCSx1NDY+nUFA8MGw1DfvnZ3iMNIyc0eXSLqexeFfarMODji4
         +K4yPMj4jLIx7OJOsGEeaJRrPqA8OGERwIjuYTUnPVwNeb0/ZxTgTLojAwT85ndv2R
         gHLfKw4e4PNQZUhA2rMsZFQ6MdeLkN+F25PHGO+7yE9CKiqjzmFucFfJrGGGLgPpIP
         E1nbMAz0T13mfOfxTJos7i0o0MfAZzygeF2p8E0zrfXc7HE7WQpN21jP/J/QzTOO1h
         nubeKNCA7Y5rg==
Date:   Mon, 14 Nov 2022 16:57:25 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for Cloos
Message-ID: <20221114085725.GW2649582@dragon>
References: <20221113124459.662004-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221113124459.662004-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 13, 2022 at 09:44:57AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Carl Cloos Schweisstechnik GmbH develops, manufactures and delivers
> welding industrial solutions:
> 
> https://www.cloos.de/de-en/
> 
> Add a vendor prefix entry for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!
