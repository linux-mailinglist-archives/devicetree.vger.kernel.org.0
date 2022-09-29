Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70CE95EF5A5
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 14:43:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232180AbiI2Mn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 08:43:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234421AbiI2Mn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 08:43:27 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3491B15E4E0
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 05:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=fPs/yXXusB1u5Ej0kRVy4I169qITrXKLEZheTJO4bKE=; b=x4+/nUrVXJI3FUW/jl3IZGJOVS
        NW/5Y0q9/96f9qb6OvEapGQbmuWjpqRoLgqpmRpsQD+wHzoDVGoosa/+6H4hdK7GKzaQ4CYGDI9zD
        iU6llGWD5f65pIgA0j/H6dUdnq73Ugus6T+H3FtvF/6kcQGqSE1YluMEaRPm7Skdgo5E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1odsst-000cDB-L1; Thu, 29 Sep 2022 14:43:23 +0200
Date:   Thu, 29 Sep 2022 14:43:23 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
Message-ID: <YzWS6+3KXwVRS2Df@lunn.ch>
References: <20220929080036.3179552-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220929080036.3179552-1-paweldembicki@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +// SPDX-License-Identifier: GPL-2.0-or-later

I think the preference is that DT is dual licence GPL or MIT.

> +	switch0: switch@11 {
> +		compatible = "marvell,mv88e6085";
> +		reg = <0x11>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "port1";
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				label = "port2";
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				label = "port3";
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				label = "port4";
> +			};
> +
> +			port@5 {
> +				reg = <5>;
> +				label = "cpu";

This label is never used by DSA, and Vladimir has been removing them
in general. Please delete it.

   Andrew
