Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCD1B598FA6
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 23:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344296AbiHRVgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 17:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241023AbiHRVgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 17:36:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C98BBCC11
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 14:36:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DB52961645
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 21:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20E56C433C1;
        Thu, 18 Aug 2022 21:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660858577;
        bh=w0lmEjB43jiwnBEhg+1l1Hm6K67RFybVAXIxlJqUON4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IqR6Z/mEUR7UmaoCQpOnfFFIBaQpx9Cf65kmSnJFfQWmKRAY64OrrtbQINFT0xzBR
         vpGselWUGI6RMv8yCdGqgD2gjC6hTs7aOkYZsB/KrQhKrw2MUzxjo6RQwdO7qUYHpc
         mLyAFt2hkgTbiBAKMiL4sSOmnVOaQBnnG1H5hFCPkmNUHA2FtpWz4PT7o9vvm4wFnh
         PMBR2U2V4dU017MLcftVNHt9YLTgSs+xF9lOCPiCy4YKuJGJrWe+hmKQ8u0ZDokGwl
         SGQK6310RR+PGOZ2Xc+llnnFcMjDLPK+L3K3sk8ps693Z5RYZBBsclB2NsK5I1XkqE
         Dke71RIp56OAA==
Received: by pali.im (Postfix)
        id 18BB1770; Thu, 18 Aug 2022 23:36:14 +0200 (CEST)
Date:   Thu, 18 Aug 2022 23:36:13 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for
 fsl,p1021rdb-pc-cpld
Message-ID: <20220818213613.cfgjxdb5wfu6k7iw@pali>
References: <20220705175450.11886-1-kabel@kernel.org>
 <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
 <20220706185602.656f883a@thinkpad>
 <20220712170535.GF1823936-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220712170535.GF1823936-robh@kernel.org>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tuesday 12 July 2022 11:05:35 Rob Herring wrote:
> On Wed, Jul 06, 2022 at 06:56:02PM +0200, Marek Behún wrote:
> > On Tue, 5 Jul 2022 14:09:36 -0600
> > Rob Herring <robh+dt@kernel.org> wrote:
> > 
> > > Not really a simple-bus if it has registers to init/program the bus.
> > 
> > It doesn't.
> 
> Then what is in 'reg'? It looks the same range as 'ranges', so maybe you 
> don't need 'reg'.
> 
> Rob

Without 'reg' kernel cannot register devices on this bus, e.g.
register-bit-led does not work. So 'reg' is needed. Why? I do not know.
