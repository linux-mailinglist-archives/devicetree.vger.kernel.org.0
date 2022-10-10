Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA70C5F9FB9
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:57:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiJJN5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:57:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbiJJN5o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:57:44 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 373B96B640
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:57:44 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8B298EE6;
        Mon, 10 Oct 2022 15:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665410262;
        bh=1bXVL/ARHdL/tIm61oBYj0yqhnrLAGRdYbIf7yBPJeQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HAt5N66Flko5oqerb97hIcgrheLgpcCMoIOSl5t8oXfUarujjY9nuSV4Y5L8CQheE
         72KIzeAEvFgBis4sHJL+Ajjw9XhGkNZVIQUPwhbxrFxuD5+3j+plPpMzKYGuTKnDHb
         yntuVZdmIVVvpzqytjlDPxZ3348JaRBfXYNyRsxE=
Date:   Mon, 10 Oct 2022 16:57:37 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marc Kleine-Budde <mkl@pengutronix.de>
Cc:     Daniel Scally <dan.scally@ideasonboard.com>,
        krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com
Subject: Re: [PATCH v2 0/3] Debix Model A board devicetree
Message-ID: <Y0Qk0fFd+zvs/qaP@pendragon.ideasonboard.com>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
 <20221010134954.la2xqekhxhkw7kvb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221010134954.la2xqekhxhkw7kvb@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 10, 2022 at 03:49:54PM +0200, Marc Kleine-Budde wrote:
> Hello Daniel,
> 
> On 10.10.2022 14:31:43, Daniel Scally wrote:
> > This series adds a .dts file for the Polyhex Debix Model A board [1]
> > A binding for the vendor is also added.
> 
> A bit off-topic, how cooperative is Polyhex when it comes to the
> datasheets of the board and the expansion boards?

There is public documentation, including reduced schematics that provide
just the pinout of the connectors. When it comes to availability of
non-public documentation to selected upstream developers, I'll let
Polyhex answer that question. More detailed schematics would certainly
be useful to develop and review the upstream device tree integration for
the board.

-- 
Regards,

Laurent Pinchart
