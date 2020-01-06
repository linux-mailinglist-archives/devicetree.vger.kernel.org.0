Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8D8131B33
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 23:18:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727134AbgAFWSH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 17:18:07 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:46808 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726721AbgAFWSH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 17:18:07 -0500
Received: by mail-ot1-f68.google.com with SMTP id r9so252817otp.13
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 14:18:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qa6q9QR2d6sy+ufZnpcE6vi8U62kVIxetSaKdt5u+KI=;
        b=OfqFyPa7WRxKVmiPRt8bvC7mUHkbnYvSXUSe/1mur09ZMEfrHZqEGYZ3xJULKJSUlJ
         MYKBqxZy+hL9xf3eNysyU0gCkGSlvhNgwIbuwOr40o+WKdZ8VU8LKdw2Kge2OEbj9U5b
         0dD5yg3isZS5jHSIB+BykMKbY3HNWF6uXwspiw2AuCHJ1Nfr4QDxhDdXYOa7/tZHmjTA
         YX0NJeqyj4cvQWdTIRTS9AcLINdThUGay8TVf4QfhkZoRwoFhyF7FGToklhhjgzsDqe/
         kLZV0cDfrW+6jdgg9FzCqaeCIQ+sfVt8zBj7ZMK1QO7VFvmwxDT9A1wOpAjL4TCnZtwg
         OHSQ==
X-Gm-Message-State: APjAAAVlD+jZVFMbeqdDe0VqWpp18EZ1mAYsV/K2xENcKMah38s2Janp
        jVvU1lmmPcJ3XNwzhoUU/tMcJhM=
X-Google-Smtp-Source: APXvYqxXV9IzEt7TGCor6gS1hbm4h8PGprr81hrWTxvgBLkTJYr698PEHo1SEex5GLSbMqw8WOgoYw==
X-Received: by 2002:a05:6830:1482:: with SMTP id s2mr12508669otq.285.1578349086275;
        Mon, 06 Jan 2020 14:18:06 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net. [70.5.121.225])
        by smtp.gmail.com with ESMTPSA id 67sm15853500oid.30.2020.01.06.14.18.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:18:05 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22043f
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 06 Jan 2020 16:18:03 -0600
Date:   Mon, 6 Jan 2020 16:18:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     jassisinghbrar@gmail.com
Cc:     balbi@kernel.org, gregkh@linuxfoundation.org, robh+dt@kernel.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jassi Brar <jaswinder.singh@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: max3421-udc: add dt bindings for
 MAX3420 UDC
Message-ID: <20200106221803.GA1555@bogus>
References: <20200105225509.21590-1-jassisinghbrar@gmail.com>
 <20200105225547.21672-1-jassisinghbrar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200105225547.21672-1-jassisinghbrar@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun,  5 Jan 2020 16:55:47 -0600, jassisinghbrar@gmail.com wrote:
> From: Jassi Brar <jaswinder.singh@linaro.org>
> 
> Add YAML dt bindings for Maxim MAX3420 UDC controller.
> 
> Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
> ---
>  .../bindings/usb/maxim,max3420-udc.yaml       | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/maxim,max3420-udc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
