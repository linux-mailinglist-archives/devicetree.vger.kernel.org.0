Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1399B3E2A10
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 13:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245616AbhHFLth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 07:49:37 -0400
Received: from relay-us1.mymailcheap.com ([51.81.35.219]:44204 "EHLO
        relay-us1.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243556AbhHFLth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 07:49:37 -0400
Received: from relay5.mymailcheap.com (relay5.mymailcheap.com [159.100.248.207])
        by relay-us1.mymailcheap.com (Postfix) with ESMTPS id A975620E2A
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 11:49:20 +0000 (UTC)
Received: from relay1.mymailcheap.com (relay1.mymailcheap.com [144.217.248.102])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id 1B0EA260EB
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 11:49:18 +0000 (UTC)
Received: from filter1.mymailcheap.com (filter1.mymailcheap.com [149.56.130.247])
        by relay1.mymailcheap.com (Postfix) with ESMTPS id 493253F201;
        Fri,  6 Aug 2021 11:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
        by filter1.mymailcheap.com (Postfix) with ESMTP id 28E182A0D2;
        Fri,  6 Aug 2021 07:49:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1628250555;
        bh=adW/0LiINZml9ao1qI68yCu9TkEkulGGm/rPyEVSPXw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=qVExul68lm/sGO6uA4dkKkb5widHfjDSZJQFr/G4X7Ef7uoLJ9yifp7SNUptw0wB0
         pi9EK3xLO49P2kRy81CSxmZcyxEWKLqHUTnoX+RKggP5Ya72Tc3HcxKECtbvWBanAS
         478M0HuNW+kh0AnnzGiCqxu+Epg/4OOV7ClfAth0=
X-Virus-Scanned: Debian amavisd-new at filter1.mymailcheap.com
Received: from filter1.mymailcheap.com ([127.0.0.1])
        by localhost (filter1.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id evfRlrtCvNjv; Fri,  6 Aug 2021 07:49:14 -0400 (EDT)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter1.mymailcheap.com (Postfix) with ESMTPS;
        Fri,  6 Aug 2021 07:49:14 -0400 (EDT)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 1681A40495;
        Fri,  6 Aug 2021 11:49:13 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="gH/rkdl1";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from [192.168.0.46] (unknown [14.154.28.204])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id EA3A84264D;
        Fri,  6 Aug 2021 11:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1628250523; bh=adW/0LiINZml9ao1qI68yCu9TkEkulGGm/rPyEVSPXw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=gH/rkdl1533RIgmKPpaXVCv01GYL8HN9NVqQ1nQWAVpaIS6WusibrVhhcL36f9ym8
         mE4nobsrUfqoRrqxeSBKkAK2BuMDzGBlx/LAUmUjTr9hI5S9V6gQYBgRRoY7rsEfp5
         txTx9KKHOwE2iaMxc9HhOL6y7tP/1LgFX7c9shOg=
Message-ID: <68e4820ead3107aa4e80dcaf9243bd11de5fce98.camel@aosc.io>
Subject: Re: [linux-sunxi] Re: [PATCH 52/54] arm64: dts: allwinner: Remove
 regulator-ramp-delay
From:   Icenowy Zheng <icenowy@aosc.io>
To:     maxime@cerno.tech, Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Date:   Fri, 06 Aug 2021 19:48:33 +0800
In-Reply-To: <20210722081616.arxwrn5krbaocymf@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
         <20210721140424.725744-53-maxime@cerno.tech>
         <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org>
         <20210722081616.arxwrn5krbaocymf@gilmour>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.40 / 10.00];
         RCVD_VIA_SMTP_AUTH(0.00)[];
         ARC_NA(0.00)[];
         R_DKIM_ALLOW(0.00)[aosc.io:s=default];
         MID_RHS_MATCH_FROM(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[dt];
         MIME_GOOD(-0.10)[text/plain];
         DMARC_NA(0.00)[aosc.io];
         R_SPF_SOFTFAIL(0.00)[~all];
         HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1];
         ML_SERVERS(-3.10)[213.133.102.83];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[9];
         RECEIVED_SPAMHAUS_PBL(0.00)[14.154.28.204:received];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
         FREEMAIL_CC(0.00)[csie.org,siol.net,vger.kernel.org,kernel.org,gmail.com,lists.infradead.org,googlegroups.com];
         SUSPICIOUS_RECIPS(1.50)[];
         RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Queue-Id: 1681A40495
X-Rspamd-Server: mail20.mymailcheap.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

在 2021-07-22星期四的 10:16 +0200，Maxime Ripard写道：
> On Thu, Jul 22, 2021 at 12:55:53AM -0500, Samuel Holland wrote:
> > On 7/21/21 9:04 AM, Maxime Ripard wrote:
> > > The regulator-ramp-delay property isn't documented in the binding
> > > for
> > > the AXP806, and it's ignored by the driver. Remove those
> > > properties.
> > 
> > This is a generic regulator property, parsed by
> > of_get_regulation_constraints, which is called by
> > regulator_of_get_init_data in the regulator core. And it appears in
> > bindings/regulator/regulator.yaml. I believe the binding needs to be
> > fixed, not the device trees.
> 
> It's indeed parsed by the regulator framework, but then it calls into
> the driver if that property is set using set_ramp_delay if it's set.

Not only is it used for set_ramp_delay, but it's also used to calculate
a post-change delay, see the following position (it can be overrided by
a custom set_voltage_time in the driver):

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L3339

> 
> https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L1378
> 
> We don't set that hook for the AXP806 DCDC-A and DCDC-E regulators
> (that
> use AXP_DESC_RANGES) at all:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-regulator.c#L343
> 
> And the only implementation we have (set for AXP_DESC and AXP_DESC_IO)
> works only for the AXP209:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-regulator.c#L368
> 
> So, it just looks like those properties have never been tested since
> they were just ignored.
> 
> Maxime
> 

