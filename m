Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64B7C3E2A5F
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 14:10:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343580AbhHFMK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 08:10:27 -0400
Received: from relay5.mymailcheap.com ([159.100.248.207]:56188 "EHLO
        relay5.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231860AbhHFMK0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 08:10:26 -0400
X-Greylist: delayed 1252 seconds by postgrey-1.27 at vger.kernel.org; Fri, 06 Aug 2021 08:10:26 EDT
Received: from relay1.mymailcheap.com (relay1.mymailcheap.com [149.56.97.132])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id DB984260EB
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 12:10:09 +0000 (UTC)
Received: from filter2.mymailcheap.com (filter2.mymailcheap.com [91.134.140.82])
        by relay1.mymailcheap.com (Postfix) with ESMTPS id 399B33F1C5;
        Fri,  6 Aug 2021 12:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
        by filter2.mymailcheap.com (Postfix) with ESMTP id 79B272A8FF;
        Fri,  6 Aug 2021 14:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1628251807;
        bh=LybgmOX0TIHZ8a12XbN7YTVz1KCjOKVvvlO5i0MX8Qw=;
        h=Date:From:To:CC:Subject:In-Reply-To:References:From;
        b=jRtwSA7FdmmzCsBBGgpvtgpE876+0tm3LpeLvv0VBuCaWQlxEg96Ec3oUVSZfwGtP
         iOw1yjCeAEjNKyjP8stS2emm99Ns2/5MFnj/u7Eli62ZMwhyIh/YSkguLJptvpyq4a
         qsQkL0hqWZJ5udNU0QXRLoKvzDoC9j2/iPrDafIY=
X-Virus-Scanned: Debian amavisd-new at filter2.mymailcheap.com
Received: from filter2.mymailcheap.com ([127.0.0.1])
        by localhost (filter2.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id S_yWbF_KJqSy; Fri,  6 Aug 2021 14:10:05 +0200 (CEST)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter2.mymailcheap.com (Postfix) with ESMTPS;
        Fri,  6 Aug 2021 14:10:05 +0200 (CEST)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 3E3F240C4B;
        Fri,  6 Aug 2021 12:10:04 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="o46xSVKU";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from [127.0.0.1] (unknown [117.136.39.218])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id 2FB5140CBA;
        Fri,  6 Aug 2021 12:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1628251781; bh=LybgmOX0TIHZ8a12XbN7YTVz1KCjOKVvvlO5i0MX8Qw=;
        h=Date:From:To:CC:Subject:In-Reply-To:References:From;
        b=o46xSVKU0S/m44ERv5FlLvhlpLblIcelFHE2wceCT5XqPYsh1hdkBYzOBpQ45V0oN
         ZR2g+2snLRiGyx8j2U+N+WpZhlr4XscsFVcHB26BuWIQog+kybY11V64CP7gcQHnJ/
         lTVS1+SSFvSrYyx8ztBLw7ensYgEox9DAuK1G6Rc=
Date:   Fri, 06 Aug 2021 20:09:11 +0800
From:   Icenowy Zheng <icenowy@aosc.io>
To:     wens@kernel.org, Chen-Yu Tsai <wens@csie.org>
CC:     Maxime Ripard <maxime@cerno.tech>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Subject: =?US-ASCII?Q?Re=3A_=5Blinux-sunxi=5D_Re=3A_=5BPATCH_52/54=5D_arm64=3A_?= =?US-ASCII?Q?dts=3A_allwinner=3A_Remove_regulator-ramp-delay?=
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v65dAAc274JiZyTswuqGHn1tE9urJpTBv=is2CG1UT2CTA@mail.gmail.com>
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-53-maxime@cerno.tech> <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org> <20210722081616.arxwrn5krbaocymf@gilmour> <68e4820ead3107aa4e80dcaf9243bd11de5fce98.camel@aosc.io> <CAGb2v65dAAc274JiZyTswuqGHn1tE9urJpTBv=is2CG1UT2CTA@mail.gmail.com>
Message-ID: <0308F3FA-B5DE-4FFC-AD22-4F5E94CDF466@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [5.60 / 10.00];
         RCVD_VIA_SMTP_AUTH(0.00)[];
         TO_DN_SOME(0.00)[];
         R_SPF_SOFTFAIL(0.00)[~all];
         ML_SERVERS(-3.10)[213.133.102.83];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[10];
         SUBJ_EXCESS_QP(1.20)[];
         RCVD_NO_TLS_LAST(0.10)[];
         RECEIVED_SPAMHAUS_PBL(0.00)[117.136.39.218:received];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
         MID_RHS_MATCH_FROM(0.00)[];
         ARC_NA(0.00)[];
         RECEIVED_SPAMHAUS_XBL(3.00)[117.136.39.218:received];
         R_DKIM_ALLOW(0.00)[aosc.io:s=default];
         FROM_HAS_DN(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[dt];
         MIME_GOOD(-0.10)[text/plain];
         DMARC_NA(0.00)[aosc.io];
         HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1];
         FREEMAIL_CC(0.00)[cerno.tech,sholland.org,siol.net,vger.kernel.org,kernel.org,gmail.com,lists.infradead.org,googlegroups.com];
         RCVD_COUNT_TWO(0.00)[2];
         SUSPICIOUS_RECIPS(1.50)[]
X-Rspamd-Queue-Id: 3E3F240C4B
X-Rspamd-Server: mail20.mymailcheap.com
X-Spam: Yes
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



=E4=BA=8E 2021=E5=B9=B48=E6=9C=886=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=888:=
05:56, Chen-Yu Tsai <wens@csie=2Eorg> =E5=86=99=E5=88=B0:
>On Fri, Aug 6, 2021 at 7:49 PM Icenowy Zheng <icenowy@aosc=2Eio> wrote:
>>
>> =E5=9C=A8 2021-07-22=E6=98=9F=E6=9C=9F=E5=9B=9B=E7=9A=84 10:16 +0200=EF=
=BC=8CMaxime Ripard=E5=86=99=E9=81=93=EF=BC=9A
>> > On Thu, Jul 22, 2021 at 12:55:53AM -0500, Samuel Holland wrote:
>> > > On 7/21/21 9:04 AM, Maxime Ripard wrote:
>> > > > The regulator-ramp-delay property isn't documented in the binding
>> > > > for
>> > > > the AXP806, and it's ignored by the driver=2E Remove those
>> > > > properties=2E
>> > >
>> > > This is a generic regulator property, parsed by
>> > > of_get_regulation_constraints, which is called by
>> > > regulator_of_get_init_data in the regulator core=2E And it appears =
in
>> > > bindings/regulator/regulator=2Eyaml=2E I believe the binding needs =
to be
>> > > fixed, not the device trees=2E
>> >
>> > It's indeed parsed by the regulator framework, but then it calls into
>> > the driver if that property is set using set_ramp_delay if it's set=
=2E
>>
>> Not only is it used for set_ramp_delay, but it's also used to calculate
>> a post-change delay, see the following position (it can be overrided by
>> a custom set_voltage_time in the driver):
>>
>> https://elixir=2Ebootlin=2Ecom/linux/latest/source/drivers/regulator/co=
re=2Ec#L3339
>
>Having just dug through the regulator core code at work, I agree=2E
>
>Furthermore, the commit log for this addition specifically mentions the
>reason for adding this property is to provide a (guessed) ramp rate for
>the core to do a proper delay for the regulator to ramp up, not to set
>the actual ramp rate in hardware=2E

Well we must agree that we have some more suitable property that delays
for a constant span, see lines below in the function I mentioned=2E

>
>
>ChenYu
>
>
>[1] https://git=2Ekernel=2Eorg/torvalds/c/fe79ea577be81e1e71642826ab00e67=
6dc59c194
>
>> >
>> > https://elixir=2Ebootlin=2Ecom/linux/latest/source/drivers/regulator/=
core=2Ec#L1378
>> >
>> > We don't set that hook for the AXP806 DCDC-A and DCDC-E regulators
>> > (that
>> > use AXP_DESC_RANGES) at all:
>> >
>> > https://elixir=2Ebootlin=2Ecom/linux/latest/source/drivers/regulator/=
axp20x-regulator=2Ec#L343
>> >
>> > And the only implementation we have (set for AXP_DESC and AXP_DESC_IO=
)
>> > works only for the AXP209:
>> >
>> > https://elixir=2Ebootlin=2Ecom/linux/latest/source/drivers/regulator/=
axp20x-regulator=2Ec#L368
>> >
>> > So, it just looks like those properties have never been tested since
>> > they were just ignored=2E
>> >
>> > Maxime
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Grou=
ps "linux-sunxi" group=2E
>> To unsubscribe from this group and stop receiving emails from it, send =
an email to linux-sunxi+unsubscribe@googlegroups=2Ecom=2E
>> To view this discussion on the web, visit https://groups=2Egoogle=2Ecom=
/d/msgid/linux-sunxi/68e4820ead3107aa4e80dcaf9243bd11de5fce98=2Ecamel%40aos=
c=2Eio=2E
>
