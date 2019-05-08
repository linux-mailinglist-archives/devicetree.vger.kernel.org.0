Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AD331789F
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 13:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728108AbfEHLpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 07:45:43 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:47089 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728043AbfEHLph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 07:45:37 -0400
Received: by mail-wr1-f65.google.com with SMTP id r7so26749923wrr.13
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 04:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=tlwX1TwlUBY6Z37kB2EJ5w9WiIHcYvXReYxAo3ZK/QU=;
        b=aLFaoXIJBRIIYYQi6a34dUkmQ3Qxn+QdslldTwFr/3TeRmdWtnkEXUKnt5cwI64iyS
         E3Z/VyxNSChE4jryrWHmG9WxOPHJyFgX8PCVGm9FkCw0FK/48uk+vFoodfeyXH6xh3dC
         ECnGN20wkM9Aw+TLnn07DGMMyPxOQ07qHmHHS741REuApklwsX5NSnVskZXnzaDWBajC
         yA2DQxXY3Fcn7VQXf3vYtY7BQDtZ+oH3JuF0tz9n3GThksESTNyRgsnqyWVcHm8/VeAf
         H4mEWWWZKDUkGf+FVTX5HnAI2ggA2oYgwa3+zT+xydKTnsftnA6Sc7gQDrtTuhxV/L+C
         YeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=tlwX1TwlUBY6Z37kB2EJ5w9WiIHcYvXReYxAo3ZK/QU=;
        b=Qy5UqGasMXGBeQoVrqLsl5b3AGDAvlH+cALJ+IKMQukY+F0ZRt1AhhVzzffdWD4tea
         s9lzZmObnsumwMx8q2cGo5H20SPf5ZhjgMlMjNOg6bc49nz32eS4HF5eV3bxo9bu3ZM7
         crdkvAkjZ/ru3+6Epk32FmZEdkmdGtVcOntClCmwOpHimZkef7b+C5ZMxD7tusECKmAM
         Ko58ady80/goJn0uy/lo891h0KOo/uv2Dqq4jFyGfGbRZa//fXEeoC25Y2qT1Y8g8NWJ
         VrYqXQvgXNWhrjpCQFeU5IYrN6xPqDYBosR0BzGZpsKFNmQHSaq8NVpIRDAuki2xoxF5
         Gzlw==
X-Gm-Message-State: APjAAAVN7W58M/sBwHP5jo3uGWBZSElavSRYOeHGAzQf/Adff8GVid6b
        ZL36C1OlVV9zBZVHLa8dVkZazdU1LTg=
X-Google-Smtp-Source: APXvYqykdlP88xzgMGKDUs4qkEmodZQT12LFcXefUZay/XBaDwzQZGh3E3/CFHN5zN+W7WJ3Pyni6A==
X-Received: by 2002:a5d:6249:: with SMTP id m9mr9799370wrv.255.1557315935670;
        Wed, 08 May 2019 04:45:35 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id k67sm2055362wmb.34.2019.05.08.04.45.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 04:45:35 -0700 (PDT)
Date:   Wed, 8 May 2019 12:45:33 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Yangtao Li <tiny.windzz@gmail.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
        knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH 6/7] iio: adc: sun4i-gpadc-iio: add support for H6
 thermal sensor
Message-ID: <20190508114533.GG31645@dell>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-7-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190503072813.2719-7-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 May 2019, Yangtao Li wrote:

> This patch adds support for the H6 ths sensor.
> 
> TODO: calibrate thermal sensor by using information from sid.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 65 +++++++++++++++++++++++++++++++
>  include/linux/mfd/sun4i-gpadc.h   |  9 +++++

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
