Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0E4748C0C2
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 10:09:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238119AbiALJJk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 04:09:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351954AbiALJJk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 04:09:40 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C631C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 01:09:39 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t28so2946732wrb.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 01:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=uFI93CtNgpLSVgsGqkYUt0u6KZ3ujOeANIDoe0U4El0=;
        b=RHe+7ArESJJteE852aYXPpssf9GAAGdgeCYED9RfNMwpOZLZI46zKd7w9vkePr7y2b
         kRgukMz7dRyxH09vAGR4baW0T6ulLgZeRG3pjLMCzPisrCO6A1ueBkjVi2Xjl7iKoX6A
         18WyDzqFxwwn6fSaU8m9NORqzovZ8Gb74Lv6v8Rr/8sySE7zeokuMZYrtDpcpblFMjEW
         uIYQ3uZw/FuHS51oGiNCGxh+M0oI2gtF5phdNxYkjHaoH/exwGHwnnMxQD+SGDW4sTmM
         Hg69B1IKp/dKLIJZKvFf9QrYRWNCrTM8/pJewYrQ02B8q/NocGXANqc+rVXzx0WKZ4Lf
         tbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uFI93CtNgpLSVgsGqkYUt0u6KZ3ujOeANIDoe0U4El0=;
        b=j2mI7oMx0g6aU6duqLXMji929WAzFUrfIkujJT+2OUefR9v4gYmE9Pbvw010PGejOd
         ymSyS+0JyWlPJolXUS8f+bw9Ivdl0ZwcbkJ6cdyL9K7xwTLzrJMojq3LQqYve18oecdb
         bc0JH8qbWiDHFrEHtdF25CvSJqQPQnZ10PUik0EosoNhNpmE4ZgpCmtyU/AEm+S37WTQ
         bd6/PZ+24p3uA4XTtt6kJ2YciOWQ3N6406f8kvmM0rZ/pAltybLhaXQhNcQZRHqQQYSG
         zlzDY1bjYF6EUq2bfoM2aySQY2jKhE4NTQmK4HOHskhMB8uJdfiMhsHjdt3ewn40CKAu
         xZ3g==
X-Gm-Message-State: AOAM530BSpwcrw9BjDt1HV7AJsAG2LBhb2/9ywOzoFhLWWEUu3Xjkpsm
        z8Bc7IZWkWuRhUtcEXIGGQbevatZYxs=
X-Google-Smtp-Source: ABdhPJywKaiNXLjM/wWWkgUyAfOy8wmye+J/lUwdTcdaGgUYZpmS8XJverywA140xrcXDhwAfiC8qg==
X-Received: by 2002:adf:e291:: with SMTP id v17mr7069653wri.479.1641978578101;
        Wed, 12 Jan 2022 01:09:38 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id b13sm4212525wrm.72.2022.01.12.01.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 01:09:37 -0800 (PST)
Date:   Wed, 12 Jan 2022 10:09:35 +0100
From:   Corentin Labbe <clabbe.montjoie@gmail.com>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v4 1/3] net: allwinner: reset control support
Message-ID: <Yd6az3ZlQ4UsSpSM@Red>
References: <20220111160600.58384-1-boger@wirenboard.com>
 <20220111160600.58384-2-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111160600.58384-2-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Tue, Jan 11, 2022 at 07:05:58PM +0300, Evgeny Boger a écrit :
> R40 (aka V40/A40i/T3) and A10/A20 share the same EMAC IP.
> However, on R40 the EMAC reset needs to be deasserted.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  drivers/net/ethernet/allwinner/sun4i-emac.c | 64 +++++++++++++++++++--
>  1 file changed, 59 insertions(+), 5 deletions(-)
> 

Hello

You need to rebase your patch, it does not apply cleanly anymore due to the dmaengine addition to sun4i-emac.

Regards
