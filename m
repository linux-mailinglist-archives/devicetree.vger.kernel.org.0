Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 775042C032C
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 11:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728315AbgKWKWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 05:22:20 -0500
Received: from relay5.mymailcheap.com ([159.100.241.64]:55913 "EHLO
        relay5.mymailcheap.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727984AbgKWKWU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 05:22:20 -0500
X-Greylist: delayed 121392 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Nov 2020 05:22:18 EST
Received: from relay2.mymailcheap.com (relay2.mymailcheap.com [151.80.165.199])
        by relay5.mymailcheap.com (Postfix) with ESMTPS id 40B47200FE;
        Mon, 23 Nov 2020 10:22:17 +0000 (UTC)
Received: from filter1.mymailcheap.com (filter1.mymailcheap.com [149.56.130.247])
        by relay2.mymailcheap.com (Postfix) with ESMTPS id 4F7AD3ECD9;
        Mon, 23 Nov 2020 11:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by filter1.mymailcheap.com (Postfix) with ESMTP id 96CB62A365;
        Mon, 23 Nov 2020 05:22:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mymailcheap.com;
        s=default; t=1606126933;
        bh=4HiddP2v45F6EE2zLSegzPe3axTfrwpTP126Q20Jego=;
        h=Date:In-Reply-To:References:Subject:To:CC:From:From;
        b=t5mknppto859nxH9J/lB6/vlUjt2rF7KWMbyU5k/dw/M8rlQ78yv2w+qTUmfFyjmU
         t4U3UHdaVzLBefm/s5uHmGfOEj+xiqHmbFPq+ZWhiTWxqaCiCliVk4XwcVRLp2efnZ
         l8fJKMMA5bEjsYXCwGkA4VVbIjgkLifjtFzyFZtM=
X-Virus-Scanned: Debian amavisd-new at filter1.mymailcheap.com
Received: from filter1.mymailcheap.com ([127.0.0.1])
        by localhost (filter1.mymailcheap.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id YpX-aOscrRrW; Mon, 23 Nov 2020 05:22:12 -0500 (EST)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by filter1.mymailcheap.com (Postfix) with ESMTPS;
        Mon, 23 Nov 2020 05:22:12 -0500 (EST)
Received: from [213.133.102.83] (ml.mymailcheap.com [213.133.102.83])
        by mail20.mymailcheap.com (Postfix) with ESMTP id 5CF1D41F34;
        Mon, 23 Nov 2020 10:22:10 +0000 (UTC)
Authentication-Results: mail20.mymailcheap.com;
        dkim=pass (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="nAbmMwxs";
        dkim-atps=neutral
AI-Spam-Status: Not processed
Received: from [172.19.0.1] (unknown [64.225.114.122])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail20.mymailcheap.com (Postfix) with ESMTPSA id 5FFD741AB7;
        Mon, 23 Nov 2020 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
        t=1606126917; bh=4HiddP2v45F6EE2zLSegzPe3axTfrwpTP126Q20Jego=;
        h=Date:In-Reply-To:References:Subject:To:CC:From:From;
        b=nAbmMwxsctsjUfT6Rm2KTOyfNnDV9Nyx068cFth9pbbsMnzamE0NT7k/xiKvcsxDI
         MAwknaQM3xVkAFJL36QkyBYHv5hfzZxH9JiR+lurbv1f58MCBA2aTSiu3Hio/PyNU1
         ugOtrqlL2/pkxeJzXLPxxBGVhmy8KPkWt54yst6E=
Date:   Mon, 23 Nov 2020 18:21:51 +0800
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com>
References: <20201122003841.1957034-1-icenowy@aosc.io> <20201122004011.1957325-1-icenowy@aosc.io> <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [linux-sunxi] [PATCH 2/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI for Lichee Pi Zero
To:     wens@kernel.org, Chen-Yu Tsai <wens@csie.org>
CC:     Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        inux-kernel@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>
From:   Icenowy Zheng <icenowy@aosc.io>
Message-ID: <4FF2364F-76AE-4181-88BB-02AB95424DD4@aosc.io>
X-Rspamd-Queue-Id: 5CF1D41F34
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



=E4=BA=8E 2020=E5=B9=B411=E6=9C=8823=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=88=
11:37:43, Chen-Yu Tsai <wens@csie=2Eorg> =E5=86=99=E5=88=B0:
>On Sun, Nov 22, 2020 at 8:40 AM Icenowy Zheng <icenowy@aosc=2Eio> wrote:
>>
>> As the USB port on Lichee Pi Zero works in the OTG mode, enable the
>> EHCI/OHCI controllers for it=2E
>
>You should probably mention that the host controllers work better
>than the OTG controller in host mode=2E Otherwise this change lacks
>justification for enabling two extra hardware blocks=2E

Our PHY driver do not sense whether ?HCI is enabled or not, so
for host to work it's necessary to be enabled, otherwise the phy
driver will just route USB to unenabled ?HCI and fail=2E

>
>ChenYu
>
>> Signed-off-by: Icenowy Zheng <icenowy@aosc=2Eio>
>> ---
>>  arch/arm/boot/dts/sun8i-v3s-licheepi-zero=2Edts | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero=2Edts
>b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero=2Edts
>> index 2e4587d26ce5=2E=2E0cd969194acb 100644
>> --- a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero=2Edts
>> +++ b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero=2Edts
>> @@ -77,6 +77,10 @@ red_led {
>>         };
>>  };
>>
>> +&ehci0 {
>> +       status =3D "okay";
>> +};
>> +
>>  &mmc0 {
>>         broken-cd;
>>         bus-width =3D <4>;
>> @@ -84,6 +88,10 @@ &mmc0 {
>>         status =3D "okay";
>>  };
>>
>> +&ohci0 {
>> +       status =3D "okay";
>> +};
>> +
>>  &uart0 {
>>         pinctrl-0 =3D <&uart0_pb_pins>;
>>         pinctrl-names =3D "default";
>> --
>> 2=2E28=2E0
>>
>> --
>> You received this message because you are subscribed to the Google
>Groups "linux-sunxi" group=2E
>> To unsubscribe from this group and stop receiving emails from it,
>send an email to linux-sunxi+unsubscribe@googlegroups=2Ecom=2E
>> To view this discussion on the web, visit
>https://groups=2Egoogle=2Ecom/d/msgid/linux-sunxi/20201122004011=2E195732=
5-1-icenowy%40aosc=2Eio=2E
