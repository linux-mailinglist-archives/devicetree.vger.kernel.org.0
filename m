Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C33498AABB
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 00:52:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726826AbfHLWwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 18:52:31 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:44324 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726681AbfHLWwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 18:52:31 -0400
Received: by mail-ot1-f68.google.com with SMTP id b7so115054856otl.11
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 15:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TEv42QyAB5YGoMPNI1KwTTniGX03gXrFw6k1OfPyaJY=;
        b=cZNwOIKmhdxfLYIlqHyBPkQl54NWYs1KzkXaE2pMQNRJDLa8cGtjis/CIdXt8wB8Mj
         lGj2r9cDvCw+ccD5dYNivgCuDFHFhy/oNYqp5/L7Zo58N82OX5K6qKuGIxXfPgTnSpik
         fylYhUG4z7xr8iOutejhyVSdkhX8fGx9Z2F1ZK2N5SacgdqWcB4i8vj9WsXGO86gphKD
         Z245LvSJ6pwl51aKEE3OmAGPQN9GPAdFzitbztu2SD24kP+MQKrJ+F1yDR0Nks7Wxlee
         tyuAvsLdBpZ9cD9paZIVzSUcawwYsrEy89AQgpi6JbuuABrgdCW3ITbY8Zr7JAmFjXhY
         3PJg==
X-Gm-Message-State: APjAAAUufiCbDlun7cbqx9MIyKCCRmDKxYxA2tsNWYVC+t7NPLq0B6EV
        nyGfDZwd+4QAbQ5rNVoMzg==
X-Google-Smtp-Source: APXvYqyrg0SrA4qOcqgdUxPMpwLvnL7FF+6mHkABaZPsf2auELPIbUbaRQRMoSGskA/bFVy1M3WQcA==
X-Received: by 2002:a02:6a68:: with SMTP id m40mr2222470jaf.135.1565650350040;
        Mon, 12 Aug 2019 15:52:30 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id v13sm85185658ioq.13.2019.08.12.15.52.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 15:52:29 -0700 (PDT)
Date:   Mon, 12 Aug 2019 16:52:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Nishka Dasgupta <nishkadg.linux@gmail.com>
Cc:     pantelis.antoniou@konsulko.com, frowand.list@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] of: resolver: Add of_node_put() before return and break
Message-ID: <20190812225228.GA21794@bogus>
References: <20190716054331.2775-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190716054331.2775-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Jul 2019 11:13:30 +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return or break from the middle of the loop, there is no
> put, thus causing a memory leak. Hence add an of_node_put before the
> return or break in three places.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/of/resolver.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 

Applied, thanks.

Rob
