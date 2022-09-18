Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D2425BBD94
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 13:23:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiIRLXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 07:23:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiIRLXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 07:23:00 -0400
Received: from elvis.franken.de (elvis.franken.de [193.175.24.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DE6B21A815
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 04:22:58 -0700 (PDT)
Received: from uucp (helo=alpha)
        by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
        id 1oZsO1-0004Uj-00; Sun, 18 Sep 2022 13:22:57 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
        id D3C74C1291; Sun, 18 Sep 2022 13:22:45 +0200 (CEST)
Date:   Sun, 18 Sep 2022 13:22:45 +0200
From:   Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS
 architecture
Message-ID: <20220918112245.GA5555@alpha.franken.de>
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 17, 2022 at 06:11:36AM +0200, Sergio Paracuellos wrote:
> +  compatible:
> +    enum:
> +      - brcm,bmips3300
> +      - brcm,bmips4350
> +      - brcm,bmips4380
> +      - brcm,bmips5000
> +      - brcm,bmips5200
> +      - ingenic,xburst-mxu1.0
> +      - ingenic,xburst-fpu1.0-mxu1.1
> +      - ingenic,xburst-fpu2.0-mxu2.0
> +      - loongson,gs264
> +      - mips,mips1004Kc
> +      - mips,m14Kc
> +      - mips,mips24KEc
> +      - mips,mips4KEc

could you add mips,mips4Kc ? I have a board, which I'm switching to
DT, which uses that core.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]
