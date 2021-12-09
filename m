Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67FBE46ED15
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 17:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235306AbhLIQe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 11:34:56 -0500
Received: from wout5-smtp.messagingengine.com ([64.147.123.21]:47151 "EHLO
        wout5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235216AbhLIQe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 11:34:56 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 03ACA3201E09;
        Thu,  9 Dec 2021 11:31:21 -0500 (EST)
Received: from imap47 ([10.202.2.97])
  by compute3.internal (MEProxy); Thu, 09 Dec 2021 11:31:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svenpeter.dev;
         h=mime-version:message-id:in-reply-to:references:date:from:to
        :cc:subject:content-type; s=fm3; bh=hMXL+VIfUi8sjn2816+Xp6umEF+n
        MYzJIuqUbhP9wgU=; b=H+djboH6fygMihgL28LxZl5yJfDT/Bs1VzxjqZScsyBK
        ou88gFmZWka3AXcI8i8vWaBim1y6Sp5hRhNYW2z0pFCBMgbHo1XI5KeqdQmVgoRD
        mMMILyj6pOy6ChHKsj4wOeGZ//AE+s5AY/DftbSc672eHYR9pS2gjEstodnx9JCP
        xERfTJDFSYRPraDz8hBgNcUUdaZwoD5EEmTosJuOlZOJk77P4JCdQdT3Sk2wq+OI
        OO5VGNaV+YuGf9kB0VeVHVGjJedTkOomVbEBiiY4T+oyNzmHWgytsgeWSDrKuTP3
        Z0SegQ/yi3lJfRZJ5OcJb3qxq5sN6nzmRGvk9/Qo9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=hMXL+V
        IfUi8sjn2816+Xp6umEF+nMYzJIuqUbhP9wgU=; b=i1NqODl+j3kqajQu6O19jP
        iBRZxIvJeDNczaDzqHJJrCwYd7l+9ff39LmP2yCmCA5PRgFCDOaFJxI3DYrXQuPH
        lPceD1xGNicyCRTC2m9twwxhBhwVht9VVfz7xWi9OD3LZW0+yp8277d133esHfMq
        QvtM3oxxHG902S7cKkMCBg2C7OESM6CX1vdCzF8iO6tNwKm2HQgtFuP7TxVGKa7p
        6jDYq9GJc3gDJ2lXAAx/K7bfyp9HqX4Jp8vNzW1ycrwv11DzhNgyHHvCMKt/c43F
        c5GBIqPhCtNWtc74ojSgSx6fDev2h6c5GLacai3h/j3xYdJCeEbSJNKnQDJCqQ0g
        ==
X-ME-Sender: <xms:WC-yYQPTQ_Lamw9Qxde4U_SVvi2-0RnPC5tknkeA48lIOBeqdZBo5A>
    <xme:WC-yYW-mL3--7J-EexEFulkPza4SCvZl_5P-UTJ02mFGhuYZHCFZqKhMCDTh94AdL
    i_73czg9RCuI-2gHI4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkedtgdeludcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfufhvvghn
    ucfrvghtvghrfdcuoehsvhgvnhesshhvvghnphgvthgvrhdruggvvheqnecuggftrfgrth
    htvghrnhepgfeigeeiffeuhfettdejgfetjeetfeelfefgfefgvddvtdfghfffudehvdef
    keffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsh
    hvvghnsehsvhgvnhhpvghtvghrrdguvghv
X-ME-Proxy: <xmx:WC-yYXTvhZ5Iql2-q-BZc_1ra3J5Lo33G-8nCyBBPus5qdbkmQNzkA>
    <xmx:WC-yYYuY_G_MABMb_vmyEJFQhynfiH_CdYLA5rEFN5eDedJOi17BFQ>
    <xmx:WC-yYYeZAQapoKt1x22EPW66S2wOY7ZYtjjb_Hd657ezoFqO7eIr8w>
    <xmx:WS-yYQ6XBbYBt3jRKRpx7mPI3bqa3369bGA7_I_y78s1CkwuZsgeKg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id D1D67274050D; Thu,  9 Dec 2021 11:31:20 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4506-g4374de3f18-fm-20211208.001-g4374de3f
Mime-Version: 1.0
Message-Id: <0d2ff965-e67d-48c7-b0a7-bcc3f276647a@www.fastmail.com>
In-Reply-To: <20211209045042.67781-1-marcan@marcan.st>
References: <20211209045042.67781-1-marcan@marcan.st>
Date:   Thu, 09 Dec 2021 17:31:00 +0100
From:   "Sven Peter" <sven@svenpeter.dev>
To:     "Hector Martin" <marcan@marcan.st>,
        "Rob Herring" <robh+dt@kernel.org>
Cc:     "Mark Kettenis" <kettenis@openbsd.org>,
        "Alyssa Rosenzweig" <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mailbox: apple,mailbox: Add power-domains property
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Thu, Dec 9, 2021, at 05:50, Hector Martin wrote:
> This will bind to the PMGR pwrstate nodes that control power/clock
> gating to SoC blocks. The mailbox driver doesn't do runtime-pm yet, so
> initially this will just keep the domain on permanently.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Sven Peter <sven@svenpeter.dev>

> ---
>  Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git 
> a/Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml 
> b/Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml
> index 2c1704b34e7a..c4255f42e801 100644
> --- a/Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml
> @@ -56,6 +56,9 @@ properties:
>    "#mbox-cells":
>      const: 0
> 
> +  power-domains:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.33.0
