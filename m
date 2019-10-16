Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 290DDD9B24
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 22:12:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388974AbfJPUL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 16:11:58 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:38808 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727018AbfJPUL6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 16:11:58 -0400
Received: by mail-wr1-f68.google.com with SMTP id y18so20041637wrn.5
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 13:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0edoD8qXLxIMb9lHusA8ctqCBdpgHnIWpnlud4IpS5A=;
        b=D0+TbLXKv4nLHH1PICBuG4OHzzfCNolpysA0NdqnggM3oNHvONZBsSdcdyYHeY9PTX
         BP6Q63iG+P0ZkFrmsMgZT2VJOejwCv/iBGW5e0FpACARXwR8xLRqsCvBYYKdlB1L+noa
         Lx/omyHvcnCfCbRtMo6vA/PY8I3hPfWaxFVsbLjbAfNU6LF/WG20V9YcGalaWYe7Hd0u
         EdO3lyIna8hymw4xsraJB5FfvRxQTbWl+aeoUziSGcsuQ2Edln+e7pMsaNFPqtxmKqEo
         p8/mYJAKLUed5W2eaIdkVXtkgFPBl/9U2+YXsjyAHA+8A0PaKzQC/8Q1eBg9jfscJ+Sz
         hVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0edoD8qXLxIMb9lHusA8ctqCBdpgHnIWpnlud4IpS5A=;
        b=Q2cAxun13t0QNzl/vkNXgRAXIcVRJMd28/fF0b54SUmsLS233ZK0yeeNXy5YJK2Giu
         NZzksWAo7R13IeM5C30tceSn8bliugH8bAnPxUyzVnZTSsjW+nQfeKHENfU1jYNV9zFy
         kVI/HoKBfMllC8vuGXMzcDz4pSVETKj7iRw29aTRi+jMrW9NkDZmnebM7gYSe9O+Tpa/
         g0kCsKgqPanlW0VG4lkE8l20ZtrY2H1vuPpZY2EWAxNywnse7fIIBUsc47OqSLR8ygzC
         XZ+S67HgleFqWM7naCbLJ/DOAHeXrPojupudgtZUcuZJ/7QROihp2vd2FTkNnO1qVJMG
         TcTw==
X-Gm-Message-State: APjAAAX+X2nrRQfVdDXvEdjMNwZ7sq3P8Y+rJn0Yl5EXhkczMR4ouOcK
        uVGODZyaCfGw7StDTJ+etHmJ+Q==
X-Google-Smtp-Source: APXvYqw8vdKpG2sCTiy78c9P1m7wEQV56IyUIiYGlFpvMM6Z1PosXut/bgrU1zDYkR1e8mM7XnTE5A==
X-Received: by 2002:adf:ed49:: with SMTP id u9mr4127114wro.229.1571256716203;
        Wed, 16 Oct 2019 13:11:56 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
        by smtp.googlemail.com with ESMTPSA id l18sm29539138wrc.18.2019.10.16.13.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 13:11:55 -0700 (PDT)
Date:   Wed, 16 Oct 2019 22:11:52 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Randy Dunlap <rdunlap@infradead.org>
Cc:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] crypto: amlogic: Add crypto accelerator for
 amlogic GXL
Message-ID: <20191016201152.GA31674@Red>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
 <1571031104-6880-4-git-send-email-clabbe@baylibre.com>
 <8f9be4a8-ed6c-a2bd-f3ba-df22752e7172@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f9be4a8-ed6c-a2bd-f3ba-df22752e7172@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 13, 2019 at 10:41:06PM -0700, Randy Dunlap wrote:
> Hi,
> 
> On 10/13/19 10:31 PM, Corentin Labbe wrote:
> > diff --git a/drivers/crypto/amlogic/Kconfig b/drivers/crypto/amlogic/Kconfig
> > new file mode 100644
> > index 000000000000..9c4bf96afeb3
> > --- /dev/null
> > +++ b/drivers/crypto/amlogic/Kconfig
> > @@ -0,0 +1,24 @@
> > +config CRYPTO_DEV_AMLOGIC_GXL
> > +	tristate "Support for amlogic cryptographic offloader"
> > +	default y if ARCH_MESON
> > +	select CRYPTO_BLKCIPHER
> > +	select CRYPTO_ENGINE
> > +	select CRYPTO_ECB
> > +	select CRYPTO_CBC
> > +	select CRYPTO_AES
> > +	help
> > +	  Select y here for having support for the cryptographic offloader
> 
> 	                to have support for
> 
> > +	  availlable on Amlogic GXL SoC.
> 
> 	  available
> 
> > +	  This hardware handle AES ciphers in ECB/CBC mode.
> 
> 	                handles
> 
> > +
> > +	  To compile this driver as a module, choose M here: the module
> > +	  will be called amlogic-crypto.
> 
> That module name does not match the Makefile's name.
> 
> > +
> > +config CRYPTO_DEV_AMLOGIC_GXL_DEBUG
> > +	bool "Enabled amlogic stats"
> 
> 	      Enable
> 
> > +	depends on CRYPTO_DEV_AMLOGIC_GXL
> > +	depends on DEBUG_FS
> > +	help
> > +	  Say y to enabled amlogic-crypto debug stats.
> 
> 	           enable
> 
> > +	  This will create /sys/kernel/debug/gxl-crypto/stats for displaying
> > +	  the number of requests per flow and per algorithm.
> > diff --git a/drivers/crypto/amlogic/Makefile b/drivers/crypto/amlogic/Makefile
> > new file mode 100644
> > index 000000000000..39057e62c13e
> > --- /dev/null
> > +++ b/drivers/crypto/amlogic/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic-gxl-crypto.o
> > +amlogic-gxl-crypto-y := amlogic-gxl-core.o amlogic-gxl-cipher.o
> 

Thanks, I fixed it

Regards
