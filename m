Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6C7C569021
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 18:58:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233735AbiGFQ6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 12:58:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233998AbiGFQ57 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 12:57:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8B382CE31
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 09:56:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E033561E04
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 16:56:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 493E7C3411C;
        Wed,  6 Jul 2022 16:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657126570;
        bh=GH5xXyQfOErmcZ8sHX7lQ86D8b5JQinwbjVODEOhbvE=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=d1GAG1pvJJHas18nD9gAmzmCWOeNLWAEvPvCUJF3M3GnM8Iyn/usyli1mrf8wg2O2
         vbcBAJTlxdxBs1zTGeFPjby5slo++vU/5TFcTtsIFFVXN5iQF1FUPx4zr7y7K7MxDw
         ebXvQbbr50onVcOKpsINbpYQDFdDBXzH9JFWaWzcfCDcWeWA6qpQX34uaVfe/3+h/f
         m7A09J9L3XJecczd7PA/PIRzPTbt7C5YkQHRdpajHwFzHtwWIbjZJ4s74HpNo6ByWT
         kyR0PvER9dBqcfQZVFokw1QLHLsQdodFbfGtzQ2+PuUPVrYJilJmz37VvAc0YQ3hsq
         Vaj+MgtNn/Cgg==
Date:   Wed, 6 Jul 2022 18:56:02 +0200
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for
 fsl,p1021rdb-pc-cpld
Message-ID: <20220706185602.656f883a@thinkpad>
In-Reply-To: <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
References: <20220705175450.11886-1-kabel@kernel.org>
        <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 5 Jul 2022 14:09:36 -0600
Rob Herring <robh+dt@kernel.org> wrote:

> Not really a simple-bus if it has registers to init/program the bus.

It doesn't.

Marek
