Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10BFE4E6A34
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 22:23:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240775AbiCXVZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 17:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356035AbiCXVZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 17:25:19 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF41DA1AD
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 14:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=57oByajSuOIMwmFHjq2XlraanvHC9xqQpPRdb3tGdUA=; b=Z0qBnxVbYPb58QIRMLma5kS1iF
        7no9+84l5gX3tF0vXdE0oVoPr6kpMpUP7RPkwQNix/Zq3TGHeXtEk0pBkhT6IrrorFfxc26OM888O
        foIfG1CQUQUfwHa5bOyi943+GRBgyyU3Y6J8xvHxLxLaIYz7V2+idP/EhWREi9UhmqHs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1nXUvX-00CVY0-FD; Thu, 24 Mar 2022 22:23:27 +0100
Date:   Thu, 24 Mar 2022 22:23:27 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Message-ID: <YjzhT4gOJ9SKy6q+@lunn.ch>
References: <20220324164551.359570-1-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220324164551.359570-1-quic_jaehyoo@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 24, 2022 at 09:45:51AM -0700, Jae Hyun Yoo wrote:
> From: Graeme Gregory <quic_ggregory@quicinc.com>
> 
> +&mac2 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";

Are you sure about this? That PHY are you using? It is more normal to
use rgmii-id.

    Andrew
