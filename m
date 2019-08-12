Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8815489BB8
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 12:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727795AbfHLKjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 06:39:40 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39209 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727678AbfHLKjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 06:39:36 -0400
Received: by mail-wm1-f65.google.com with SMTP id u25so11295841wmc.4
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=MoT41+8OBiG5AIS32B1GbYNGjZ0zGQf3yjOjNkvAl3w=;
        b=zJ2S5Kf3w1FcFPelYkhvCORLN+zhfHCjFVxYX/pJUoUgBttJ+Ltp91Qo/Myb29W7+0
         BT4dNqpfBa2GMtxrqp6X1KpgMqr0z/r1W68XlRpxtCHEZA6Vw6XKhMfThLc88OeiuwQC
         O+DNfN0f23PvnZdBns2cquJa2LKegJgvigS7YJJf8at/Okwj9TG+GYImG3fzUD54wHB4
         jcPDCJXkzU/ZPxeNT8x+xON67m+c9gr6X5TEplMaJjvWoEBVTNR16ZDhRGMudmjTGXqf
         pDSOEJi7CDwPCj4m3093m/3u3iXqBjUZ0Z65QR5LM4PJrVSKv19mLu1AzUCRXbDsJ2A/
         PTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=MoT41+8OBiG5AIS32B1GbYNGjZ0zGQf3yjOjNkvAl3w=;
        b=IX3gCF9GlhPVM/d8L3GPEldFJeX2VyIc2Jc9mzlN7h8oFE6BS8u0teTg4cIHq+h4Ds
         hUqMLK3ut8d48zCK8zX7LdMbwCSXSO/nNZ6H3JkPR1PlJdAztJm2I6JaDp9lr814hc8w
         UNhsHgjxFUzmgLkK6isBL1GqqnvrymeH6nonbqXjHOPgeIg/cjY4cmBKNNux2+EcqMuG
         +tc5Wh4R5zvkwLF30bIVQNJ0yBpdDfpNbWZMmXfAgga+YqSTL62sAX4C2fh6BNgaOY0j
         w7s3tpBoz9KKGpV6Tu2b2GbiiOdZgUZJjuOGkHJLR+WTVibAur00pfEYaa9VuHDHVRBb
         cr5w==
X-Gm-Message-State: APjAAAWZ/U6OE79pEED5ECYDMws0TEOlPUG12zxKDHAqoUzQokxrlxIO
        xhUTbf+2iGUXjfORxmKauG3SCw==
X-Google-Smtp-Source: APXvYqx6gLOcb8+8c8NPQ25MpEKF5l7SJvWJ0ZAVhYpzW0O0BzOf3cmdjAVNPOp+sxVnpmCkiRPArw==
X-Received: by 2002:a05:600c:145:: with SMTP id w5mr2485651wmm.75.1565606374600;
        Mon, 12 Aug 2019 03:39:34 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id z8sm6099540wmi.7.2019.08.12.03.39.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 03:39:34 -0700 (PDT)
Date:   Mon, 12 Aug 2019 11:39:32 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH 1/2] mfd: madera: Update DT binding document to support
 clock supplies
Message-ID: <20190812103932.GN26727@dell>
References: <20190806151321.31137-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190806151321.31137-1-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Aug 2019, Charles Keepax wrote:

> Add the 3 input clock sources for the chip into the device tree binding
> document.
> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  Documentation/devicetree/bindings/mfd/madera.txt | 8 ++++++++
>  1 file changed, 8 insertions(+)

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
