Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51EE54A3E6C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:05:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241035AbiAaIFU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:05:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240654AbiAaIFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 03:05:19 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E658C06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:05:18 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c2so9572643wml.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=R+SBQZvuQCjJKBvLP1leTLpUhRdrBYluyYBZRqvLjBo=;
        b=11Oj5JJeMdOTuOsk96ZbCqZqlz9IyD99aOIMhG5Em+2J8gnX1fHNZiIKeHenHM+3nj
         mosWbfJy3QXVrfXiUsXYbWqipuZreEKc+G5LcoPK+J4ciscL8EJsJIJKobi78CayVAQJ
         U6l2NdQc5qIne127aOFtOFzUuR+r9V7FtB1rWfBtJbL+ciAuKuKDHMoBqlc/4X36tWXp
         tg9PWIb3NNDzv56ZoeUbX7AQoe30nvmUp3f4qaPZsoHexsYNcoVm/uzPrjxYdUHe+cqx
         99WlAdAnFp2YxbU0Cnqjz3eU6j+45HfHE5vrHbpM+tSkATPxz4yd8Qz9mKiOTKDIbi5+
         aKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=R+SBQZvuQCjJKBvLP1leTLpUhRdrBYluyYBZRqvLjBo=;
        b=GxDu/Aq4UNQwVQQW/N0esXXBXBCtVi1i0n0aHbwfTxcfvgkjwME4/tWcp40X8ln4lE
         c1U/xHr1sDrBtQY3Q7odOPP3Ky0AhndnmPKKf3MDXMMQcvUmrFzRfGOS85mviXitx+P1
         xPCktaOxKnciZ8iKIJaq3eKZGAliIY1pFtAupYCIP4VFcmvaROuMjUb1XrvxHullZ/S5
         mBbIeQFXalgX1FVpi/d8c3gak/3fhi7Ibx9H6w7qJGgnUq74U+J1xyuaVQujkDGYTCnv
         ATEy0UYIxIqpLj1vtnUy6GT7ORH5VG+g64b0Hz4fFj1hp+nI15CURCBw5f/X0zybAn5b
         TsBQ==
X-Gm-Message-State: AOAM532AFwZKrYv4D1U3RRbzK55TZTzyolSTEXhBg4sFF5MIYzjkNMyy
        lznhG0k8vTB0/USMPos3Hv5Rcg==
X-Google-Smtp-Source: ABdhPJxPlvY68Z9GPD9YGbQrcOzvI3xBdrGMW2TPOjD9Pzaj9EAABf3vJ+HFA2jD71yy6cIk3IFEhA==
X-Received: by 2002:a05:600c:a4c:: with SMTP id c12mr17174881wmq.48.1643616316946;
        Mon, 31 Jan 2022 00:05:16 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id n11sm9933485wms.3.2022.01.31.00.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 00:05:16 -0800 (PST)
Date:   Mon, 31 Jan 2022 09:05:14 +0100
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     miquel.raynal@bootlin.com, richard@nod.at, robh+dt@kernel.org,
        vigneshr@ti.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mtd: drop mtd/cortina,gemini-flash.txt
Message-ID: <YfeYOsFLBeu+tLLE@Red>
References: <20220127200310.4150981-1-clabbe@baylibre.com>
 <CACRpkdY7O=KjhbeBZiokchFhSo8dTM+JAeBOTq+qkKE7-63jPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdY7O=KjhbeBZiokchFhSo8dTM+JAeBOTq+qkKE7-63jPw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Fri, Jan 28, 2022 at 01:18:55AM +0100, Linus Walleij a écrit :
> On Thu, Jan 27, 2022 at 9:03 PM Corentin Labbe <clabbe@baylibre.com> wrote:
> 
> > Drop mtd/cortina,gemini-flash.txt since it is nearly already handled by
> > Documentation/devicetree/bindings/mtd/mtd-physmap.yaml.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> 
> Thanks for fixing this Corentin!
> 
> > +      $ref: /schemas/types.yaml#/definitions/phandle
> > +      description:
> > +        Phandle to the syscom controller
> 
> syscon?
> 

Hello

I will fix it in v2.

Thanks.
