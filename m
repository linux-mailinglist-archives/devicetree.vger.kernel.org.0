Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 285AC7134F6
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbjE0N0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjE0N0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:26:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CEDBA6
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:26:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9CE6460F99
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:26:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20CDDC433EF;
        Sat, 27 May 2023 13:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685194003;
        bh=11by+4JO3/5UX4jU+pZbNCfY4QzTEF5/ezlEY099lu4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UWQB336aLMOXOZYEpksh0zGyCOgDFW39xmhbrgDPOskqv5AUncWKZ62MDfAVGpx8u
         yBsaVBSZx+96cgF8zgbtHsiKx8ODQW0omlfxdmfjcC8ufkS8bbjl3Lcbem+aFRYu7q
         7tI64y6wKag7Blf4Br0Bdj+qGBO77qfEttct7TfGP1ezK2sr2E0NI+wGDe3KfqF6BU
         gZVFzLPoEQt2NdTEcPkOdsqxdlUYXXYum/yjzlD8PqTOB75PTZi5zro2ZIIqNyyub9
         ZzZnwe8obvckBeMdI/ugb/uEVuuu1TtXIQyfjqOOy3jkWutFu6DgLmyHxBGBCPmtS/
         +2HrUSNEEPXxQ==
Date:   Sat, 27 May 2023 21:26:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 01/15] ARM: dts: imx6qdl-gw54xx: Use the mux- prefix
Message-ID: <20230527132632.GF560301@dragon>
References: <20230526005529.150418-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526005529.150418-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 25, 2023 at 09:55:15PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
> there must be a "mux-" prefix in the audmux port nodes.
> 
> Add the "mux-" prefix to avoid devicetree schema warnings.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Can we squash them into one patch?

Shawn
