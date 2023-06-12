Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EFA872B944
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231821AbjFLHz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235983AbjFLHyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:54:41 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA4319A5
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:53:45 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1a28817f7d8so2746815fac.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686556368; x=1689148368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VAjIEiwZu5OALOSzZ0b1pS9HZZYRHfw2JqmOl3GFk0c=;
        b=Zr0t+9MoLTM7XtvsMDHPLLlYU7tnSe4830HtrZS7DQKZ7RvBVaWb8CvaX+c+sDwnd8
         iAjmEsl7cLw3AkDzQ+Ce/LUf9A1bfu3N5GTQhq5W7/FiId5jmdfiu7caQfE6t+8Mxwm7
         sETkwoOIfE0d/p8hwoHpmQB8hXna99qtCAkwaTVXCKYvi4lXdZhChAskMXHlpsAftfsJ
         lRkCuXjDvoLkjoyQYvtNasf28LL28YBCLAsMDwSi78jG809/d7ECNDLDHgXte48yQZfJ
         h7mKtbBYIAMoKtfj4lzKf4KDJgnF4uzb/mCdVZr2Nrfh1EvHGabZwa+MUhEB/o2ZNOEy
         vn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686556368; x=1689148368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAjIEiwZu5OALOSzZ0b1pS9HZZYRHfw2JqmOl3GFk0c=;
        b=bDwH0BAkvR5UOoejfrzB/O2WsiL8tj17WPvAYSHFRTaLcST/Xrx+wUMJtWoEOiXvg4
         8WMba6GQr1Qtv4ZJuGN9byl6txm+TmLsvQo7RZqhW6FVGAmkWntXiqOGWqy/IXQxoRXj
         fRkAf++L645PBrR1Yhl7P/UPKVw5QzLp93TxfI8HgAx0rEO/SyZc2NZJtNYn0ai3pJP7
         lKj5d4bG8Vkmg5PoMSKgNt8MYZnwA4HRbfD4tgRsSRMvJ+evI24ZROwc7J34d5JEz9tP
         4Trn3P3hmq5kI069qjD2BBeheHS5Jzz+dWpP8tceQF43jwsZl1H8jN6anllJ3ATpuZQa
         NABQ==
X-Gm-Message-State: AC+VfDx6vkam8uf3HFmB/jrjKH6nhPZQfDJGuxPEXoLM0tGcQMQP/6JN
        ahYFuL5OLckCsLYVdoaRC+ffaXuSoSA+o03vr4E=
X-Google-Smtp-Source: ACHHUZ41/WLgMKQP5VCoZao+RL+8BsTaz6T5lruPMf9QxvU4QhrngI8kFmo8uHK0j4sPArdooUSQDA==
X-Received: by 2002:a05:6870:5ab0:b0:1a6:98ca:4343 with SMTP id dt48-20020a0568705ab000b001a698ca4343mr614417oab.1.1686556368248;
        Mon, 12 Jun 2023 00:52:48 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id z41-20020a056870c22900b00172428894e0sm1779118oae.28.2023.06.12.00.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:52:47 -0700 (PDT)
Date:   Mon, 12 Jun 2023 13:22:39 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 5/7] RISC-V: remove decrement/increment dance in ISA
 string parser
Message-ID: <ZIbOx5nIq2OGObBO@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-estate-left-f20faabefb89@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-estate-left-f20faabefb89@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:29PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> While expanding on the comments in the ISA string parsing code, I
> noticed that the conditional decrement of `isa` at the end of the loop
> was a bit odd.
> The parsing code expects that at the start of the for loop, `isa` will
> point to the first character of the next unparsed extension.
> However, depending on what the next extension is, this may not be true.
> Unless the next extension is a multi-letter extension preceded by an
> underscore, `isa` will either point to the string's null-terminator or
> to the first character of the next extension, once the switch statement
> has been evaluated.
> Obviously incrementing `isa` at the end of the loop could cause it to
> increment past the null terminator or miss a single letter extension, so
> `isa` is conditionally decremented, just so that the loop can increment
> it again.
> 
> It's easier to understand the code if, instead of this decrement +
> increment dance, we instead use a while loop & rely on the handling of
> individual extension types to leave `isa` pointing to the first
> character of the next extension.
> As already mentioned, this won't be the case where the following
> extension is multi-letter & preceded by an underscore. To handle that,
> invert the check and increment rather than decrement.
> Hopefully this eliminates a "huh?!?" moment the next time somebody tries
> to understand this code.
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
