Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 413552C6EA8
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 04:39:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730944AbgK1DiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 22:38:12 -0500
Received: from relay5.mymailcheap.com ([159.100.248.207]:51299 "EHLO
        relay5.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730942AbgK1DhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 22:37:03 -0500
Received: from relay4.mymailcheap.com (relay4.mymailcheap.com [137.74.80.154])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id 51F6D260EB;
        Sat, 28 Nov 2020 03:36:26 +0000 (UTC)
Received: from filter2.mymailcheap.com (filter2.mymailcheap.com [91.134.140.82])
        by relay4.mymailcheap.com (Postfix) with ESMTPS id CF4443F1CF;
        Sat, 28 Nov 2020 04:35:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by filter2.mymailcheap.com (Postfix) with ESMTP id A08492A522;
        Sat, 28 Nov 2020 04:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1606534539;
        bh=VWUGsVOu/1kHINTSS31teUrClAuVCj7NaI/SoDRTI5Q=;
        h=Date:In-Reply-To:References:Subject:To:CC:From:From;
        b=JqCS79xD0HHqM5OANerAIGhPliWqUEpEc0Giz5dieUQjXUljMJR9A6nek6duzqzhP
         e1JTDmBCVo7yWM7vUlU7wUT0SmvUyJQNoZ5McqQChXywHq6jwM2H+lT8sMO8OxaGpi
         VGRlq/KCq49uCr1cZxdXFj099KiCnx8JwGpND9t8=
X-Virus-Scanned: Debian amavisd-new at filter2.mymailcheap.com
Received: from filter2.mymailcheap.com ([127.0.0.1])
        by localhost (filter2.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id Y138GCx0CsDt; Sat, 28 Nov 2020 04:35:38 +0100 (CET)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter2.mymailcheap.com (Postfix) with ESMTPS;
        Sat, 28 Nov 2020 04:35:38 +0100 (CET)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 23E98400BE;
        Sat, 28 Nov 2020 03:35:37 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="ZUo5kHCG";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from [172.19.0.1] (unknown [64.225.114.122])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id 887F1400BE;
        Sat, 28 Nov 2020 03:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1606534531; bh=VWUGsVOu/1kHINTSS31teUrClAuVCj7NaI/SoDRTI5Q=;
        h=Date:In-Reply-To:References:Subject:To:CC:From:From;
        b=ZUo5kHCG/rSc7wjn+Hl8CSKUFJgkd4Dck1eTKvLGosyFFHqVcvNM//XuHp+FI/C2B
         JvFLV+9aZtAOrwBXDUsE+j1hIn0+f9jCaZBEvT7Kgm/MUDiHQ7cCx5v12IDkOea+w6
         rMcFKIn0S9xcP2/do0jsrpukcfAKMz/BwEDy1rBo=
Date:   Sat, 28 Nov 2020 11:35:25 +0800
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v65JA803yHVNS5=6-EAUFSN-cqoCetkJJ3kCDE7e89Tijw@mail.gmail.com>
References: <20201122003841.1957034-1-icenowy@aosc.io> <20201122004011.1957325-1-icenowy@aosc.io> <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com> <4FF2364F-76AE-4181-88BB-02AB95424DD4@aosc.io> <CAGb2v65JA803yHVNS5=6-EAUFSN-cqoCetkJJ3kCDE7e89Tijw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [linux-sunxi] [PATCH 2/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI for Lichee Pi Zero
To:     wens@kernel.org, Chen-Yu Tsai <wens@kernel.org>
CC:     Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        inux-kernel@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>
From:   Icenowy Zheng <icenowy@aosc.io>
Message-ID: <4515AB80-D54A-41CF-A677-2109289E6138@aosc.io>
X-Rspamd-Queue-Id: 23E98400BE
X-Spamd-Result: default: False [-0.10 / 10.00];
         RCVD_VIA_SMTP_AUTH(0.00)[];
         ARC_NA(0.00)[];
         R_DKIM_ALLOW(0.00)[aosc.io:s=default];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DMARC_NA(0.00)[aosc.io];
         R_SPF_SOFTFAIL(0.00)[~all];
         ML_SERVERS(-3.10)[213.133.102.83];
         DKIM_TRACE(0.00)[aosc.io:+];
         RCPT_COUNT_SEVEN(0.00)[8];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         ASN(0.00)[asn:24940, ipnet:213.133.96.0/19, country:DE];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         HFILTER_HELO_BAREIP(3.00)[213.133.102.83,1]
X-Rspamd-Server: mail20.mymailcheap.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



=E4=BA=8E 2020=E5=B9=B411=E6=9C=8828=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=88=
11:09:17, Chen-Yu Tsai <wens@kernel=2Eorg> =E5=86=99=E5=88=B0:
>On Mon, Nov 23, 2020 at 6:22 PM Icenowy Zheng <icenowy@aosc=2Eio> wrote:
>>
>>
>>
>> =E4=BA=8E 2020=E5=B9=B411=E6=9C=8823=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=
=8811:37:43, Chen-Yu Tsai <wens@csie=2Eorg> =E5=86=99=E5=88=B0:
>> >On Sun, Nov 22, 2020 at 8:40 AM Icenowy Zheng <icenowy@aosc=2Eio>
>wrote:
>> >>
>> >> As the USB port on Lichee Pi Zero works in the OTG mode, enable
>the
>> >> EHCI/OHCI controllers for it=2E
>> >
>> >You should probably mention that the host controllers work better
>> >than the OTG controller in host mode=2E Otherwise this change lacks
>> >justification for enabling two extra hardware blocks=2E
>>
>> Our PHY driver do not sense whether ?HCI is enabled or not, so
>> for host to work it's necessary to be enabled, otherwise the phy
>> driver will just route USB to unenabled ?HCI and fail=2E
>
>So, this was never working in Linux to begin with? You should mention
>that=2E

Okay=2E

>
>Maybe a fixes tag is in order then=2E

Well I can't judge whether this is necessary=2E
