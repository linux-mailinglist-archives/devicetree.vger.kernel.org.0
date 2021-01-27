Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0777B306120
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 17:39:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233139AbhA0QiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 11:38:25 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:35764 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235531AbhA0QhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 11:37:00 -0500
Received: by mail-ot1-f42.google.com with SMTP id 36so2270332otp.2
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 08:36:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/xlnSphG4Jh4OtN5h5TQN/7/tZEsHHDDokc9jDi1qYM=;
        b=XZjCgVH4f6UWDmS5jGGtEuTtNfZu77stI0Uiw8oDHsNbYMTG6dFflc2RzDq+vi+kqy
         km5IlnXZ/AG202dQyx05fXwpZ4GDZt8RZhmmpd1WXSyqexg7wYLBotvGWDoE8Hp1CDpR
         xcLa/XWjF2q4p1/a+ckig9/BVxyACfJTxCPQGBsWu8N+ZvjcILMN9NvK4G+nVMs1Hx16
         d93YSqlK2EPcRtN+Cez8mQROw/T9Jk/PtiBUxPywK7kHbjdtcSrwjZ2iwJmYNKomsF4y
         GaISXChVuWsE8sKHVxTkMH9O5QhVOthE5GIiRCSHB4YmWVPfUVHsp+GJ1K3cK7u4LN3X
         vY7Q==
X-Gm-Message-State: AOAM530blUUzjc/+pmqRemu8yEqDO/bTqizajiRBRsIFXBzReTJKYpSL
        kek2SFzqA1Kr6y24oINl4A==
X-Google-Smtp-Source: ABdhPJwnNs2RIJEdxoi42Legugs/44rTxrZqkBp3lkoJdwHPm2/jA6lvH5zx5dcElLjgj1wmKZsEBQ==
X-Received: by 2002:a9d:3b8:: with SMTP id f53mr8016580otf.344.1611765379322;
        Wed, 27 Jan 2021 08:36:19 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w194sm510157oiw.39.2021.01.27.08.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 08:36:17 -0800 (PST)
Received: (nullmailer pid 1742871 invoked by uid 1000);
        Wed, 27 Jan 2021 16:36:16 -0000
Date:   Wed, 27 Jan 2021 10:36:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH dt-schema 0/2] dt-schema: Add percentage
Message-ID: <20210127163616.GA1741826@robh.at.kernel.org>
References: <20210126162756.1932692-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210126162756.1932692-1-geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 26, 2021 at 05:27:54PM +0100, Geert Uytterhoeven wrote:
> 	Hi Rob,
> 
> This patch series adds percentages to the lists of recognized
> properties, as requested in[1].
> 
> Thanks!
> 
> [1] "Re: [PATCH v2] dt-bindings: clk: versaclock5: Miscellaneous fixes
>      and improvements:"
>     https://lore.kernel.org/linux-devicetree/20210125212442.GA1019390@robh.at.kernel.org/
> 
> Geert Uytterhoeven (2):
>   schemas: property-units: Add percentage
>   meta-schemas: vendor-props: Add percentage

Applied, thanks.

Rob
