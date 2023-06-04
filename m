Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6DBD721711
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjFDMyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:54:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjFDMyE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:54:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0DD91
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:54:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D497D612D5
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:54:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0C46C433EF;
        Sun,  4 Jun 2023 12:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685883243;
        bh=0Kc4oz+xt7HQaKdA8Luq0nnszu05lwAGznlgJvndzmw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Vv5JnZUlkUXZDcGfsoEt3sNQ+C/rLUvMaISKJVanb8NZJxFf4kqNaYsomHK4kZhBQ
         6rGXzd7JmcdcPIxNM6oqBXl3JL+2MEuD5HWfeN95tueSFqhncW5aSZ9C1fX5lP7pig
         jZebD2rvfdrwLwQx8qQixwsOxO+N54ucP/lb4Tips6jN2PKoAgCYwbJg2HibWH84ks
         FhIHLcO9Vlp5Jp104IwFdZbbv60WHsDDU2jIDrd7mnESP940HyhfkeE3lhQZMvsKd5
         eOSudTIXO2vv8MXVXsmH5MBobACdFYa0kIbnz++zXoPduQdG8GKG7usg56Vx3pB7t+
         w4xgdrw7FmNjQ==
Date:   Sun, 4 Jun 2023 20:53:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx: Use 'eeprom' as node name
Message-ID: <20230604125350.GN4199@dragon>
References: <20230529200645.801626-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230529200645.801626-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 29, 2023 at 05:06:45PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Devicetree node names should be generic. Use 'eeprom' as node name
> to avoid devicetree check warning from at24.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
