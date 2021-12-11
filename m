Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F71B4713C1
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 13:25:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbhLKMZr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Dec 2021 07:25:47 -0500
Received: from wout4-smtp.messagingengine.com ([64.147.123.20]:37279 "EHLO
        wout4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229668AbhLKMZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 11 Dec 2021 07:25:46 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id A0FED3202113;
        Sat, 11 Dec 2021 07:25:45 -0500 (EST)
Received: from imap47 ([10.202.2.97])
  by compute3.internal (MEProxy); Sat, 11 Dec 2021 07:25:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svenpeter.dev;
         h=mime-version:message-id:in-reply-to:references:date:from:to
        :cc:subject:content-type; s=fm3; bh=OzRlwblfRtifXV8144XMgBQKpWaQ
        Rjph72PC94YxvGk=; b=WGg59/Kv9iRA7pHUuj+ok9EcUhO+gRRYXStN/ZSZtpPY
        2OxNUuTumqvu6U4LeCg4aAUZgSBpSkd5jWFfzkkNd5ueZ/0dcP8ajKJOItJ2/sR/
        kb61dzU+xVDlUgOAY4tPx1R54ylJ5+cG3gqx1GTt8KrVNjU934p7hVF1R8EZSP1+
        i7aES3BV5PlZmQN3VDbvbrLgnhn7HcPYIMjGpnx/ayWDApV5nACpgOnQ/QXDVYSy
        Ut1i9A9KSwpxvgbxVlVQyBtwXXeCL+cJZoRHlv6udBaflV/bGyJf1VU7sJeggb+y
        yNS0D7LzPvJ2rirw7RZMnHB3HJWkPyediIanERvLqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OzRlwb
        lfRtifXV8144XMgBQKpWaQRjph72PC94YxvGk=; b=O8fUqk4mIX1SLnZ5kQLxW4
        V/TzJWPrejHlZTld7V6LxOpD1SlSmVIOEmxVvJvTVQ6bRkEaLgIQzFU5YRQpvQHX
        gCN4+Kg+40wAvYeSKJvBGfj8C3bgAmaLJ2Cn+8PFqJlZZD4VJKcAf/JkKZLwDCke
        XmLaMfzrCF2KlenYSt3PMMmZeuPwdA9OI0yZ91AnJ03nsqWYKGztsCYxBmdP4jnI
        BlpeUuL80iQduTPOaPOl66C//VMbSTjH2BrhELRFvD4i75jAsg4fWVifgv63fjgr
        pELpkD0dxnZ0sHOuutx8C5hVfbpZAo/bEOOcGduA6LAKAfuIkKz41UYSGsMtF9sw
        ==
X-ME-Sender: <xms:yJi0YWdtseWWk3w85h-fQzyYKl0OH8Kx3EbZeAE6zrFWCxNuh_MsKA>
    <xme:yJi0YQM7wKmV86WzdtnxAlMxjDK-wSsAFjiwxQNv5aC4hZd9YkmQXLoVIWVy7eZuV
    m5AzrOj7Wnngd5e10w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeeggdefhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfufhvvghn
    ucfrvghtvghrfdcuoehsvhgvnhesshhvvghnphgvthgvrhdruggvvheqnecuggftrfgrth
    htvghrnhepgfeigeeiffeuhfettdejgfetjeetfeelfefgfefgvddvtdfghfffudehvdef
    keffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsh
    hvvghnsehsvhgvnhhpvghtvghrrdguvghv
X-ME-Proxy: <xmx:yJi0YXgqAvTLQvnUmzWI83C7Ct14kJcUKI8Hkv1memiNUhZm0G1iJw>
    <xmx:yJi0YT9Rl1JypPDiuKm7Pk6KwnkFIqDKedZ-AStE4Txxqb5sm1_WXA>
    <xmx:yJi0YSv2w-FygxCQQatVQaOK8FtWoFIe0Y1OdZvAnQuftz2bmQRZ7g>
    <xmx:yZi0YWJHyjR7eN1GmEPng7-I9aMHEKHU7CBjUcXLcGVQXXss4fAmFw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 80D8F274050D; Sat, 11 Dec 2021 07:25:44 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4514-g2bdc19e04f-fm-20211209.002-g2bdc19e0
Mime-Version: 1.0
Message-Id: <5e465c3c-a12f-4131-87dd-adb7ec8ed5b5@www.fastmail.com>
In-Reply-To: <20211209044501.67028-4-marcan@marcan.st>
References: <20211209044501.67028-1-marcan@marcan.st>
 <20211209044501.67028-4-marcan@marcan.st>
Date:   Sat, 11 Dec 2021 13:24:45 +0100
From:   "Sven Peter" <sven@svenpeter.dev>
To:     "Hector Martin" <marcan@marcan.st>,
        "Rob Herring" <robh+dt@kernel.org>
Cc:     "Mark Kettenis" <kettenis@openbsd.org>,
        "Alyssa Rosenzweig" <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: apple: t8103: Add apple,min-ps to DCP PMGR nodes
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 9, 2021, at 05:45, Hector Martin wrote:
> This is required for DCP to boot successfully; it seems if power gating
> is allowed, they do not wake up properly.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Sven Peter <sven@svenpeter.dev>

> ---
>  arch/arm64/boot/dts/apple/t8103-pmgr.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi 
> b/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
> index 1310be74df1d..fc51bc872468 100644
> --- a/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
> +++ b/arch/arm64/boot/dts/apple/t8103-pmgr.dtsi
> @@ -665,6 +665,7 @@ ps_dispext_cpu0: power-controller@378 {
>  		#reset-cells = <0>;
>  		label = "dispext_cpu0";
>  		power-domains = <&ps_dispext_fe>;
> +		apple,min-state = <4>;
>  	};
> 
>  	ps_jpg: power-controller@3c0 {
> @@ -1005,6 +1006,7 @@ ps_disp0_cpu0: power-controller@10018 {
>  		label = "disp0_cpu0";
>  		power-domains = <&ps_disp0_fe>;
>  		apple,always-on; /* TODO: figure out if we can enable PM here */
> +		apple,min-state = <4>;
>  	};
>  };
> 
> -- 
> 2.33.0
