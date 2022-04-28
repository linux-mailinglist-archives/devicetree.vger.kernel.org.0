Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C6BF5127F8
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 02:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbiD1AWB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 20:22:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbiD1AWA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 20:22:00 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0127102C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 17:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=0E/cZusX8gpwqJUzB3w+9Rv4b0UfsFQ/mLYGkgPRNOs=; b=y+ijRyxoQ1DISj2pwyZhtX+dHL
        M4WdFl3JEly9NjkHVun/hJOB598V0S2NlmSQ/hmaUhZfNe1JEry1+g2CC5ZdvMiUbVXpr+WdhZpNZ
        Z6VhLCnpiXNNlNqkZfVwWLwn2+rrShqobX+ZUcWZfC86PLNJ3ujm64lhIYVPlaBe12qk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1njrrd-000Cwl-Qv; Thu, 28 Apr 2022 02:18:33 +0200
Date:   Thu, 28 Apr 2022 02:18:33 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Mauri Sandberg <maukka@ext.kapsi.fi>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
Message-ID: <YmndWe63ELJbQe20@lunn.ch>
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > - there is no concensus on how to get ascii formatted MAC address from mtd
> >   partitions so eth is not fully functional without setting the MAC from
> >   userspace
> 
> Ideally this is handled by the boot loader, but that requires being
> able to update
> it.

The mv643xx Ethernet driver is happy if it finds the MAC address
already in the hardware. The vendor uboot often does this. Does tftp
boot work in uboot? That would indicate it has access to the MAC
address.

	Andrew
